; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_process_intrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_process_intrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge, i32 }
%struct.sge = type { i32, %struct.sge_rspq**, %struct.sge_rspq }
%struct.sge_rspq = type { i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.rsp_ctrl = type { i32, i32 }

@RSPD_TYPE_INTR_X = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unexpected INTRQ response type %d\0A\00", align 1
@MAX_INGQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Ingress QID %d out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Ingress QID %d RSPQ=NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Ingress QID %d refers to RSPQ %d\0A\00", align 1
@T4VF_SGE_BASE_ADDR = common dso_local global i64 0, align 8
@SGE_VF_GTS = common dso_local global i64 0, align 8
@SGE_UDB_GTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @process_intrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_intrq(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.sge_rspq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsp_ctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sge_rspq*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.sge* %12, %struct.sge** %3, align 8
  %13 = load %struct.sge*, %struct.sge** %3, align 8
  %14 = getelementptr inbounds %struct.sge, %struct.sge* %13, i32 0, i32 2
  store %struct.sge_rspq* %14, %struct.sge_rspq** %4, align 8
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.sge, %struct.sge* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %121, %1
  %20 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %21 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %25 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 8
  %29 = getelementptr i8, i8* %23, i64 %28
  %30 = bitcast i8* %29 to %struct.rsp_ctrl*
  store %struct.rsp_ctrl* %30, %struct.rsp_ctrl** %7, align 8
  %31 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %7, align 8
  %32 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %33 = call i32 @is_new_response(%struct.rsp_ctrl* %31, %struct.sge_rspq* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  br label %124

36:                                               ; preds = %19
  %37 = call i32 (...) @dma_rmb()
  %38 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %7, align 8
  %39 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @RSPD_TYPE_G(i32 %40)
  %42 = load i64, i64* @RSPD_TYPE_INTR_X, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %7, align 8
  %52 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @RSPD_TYPE_G(i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %121

57:                                               ; preds = %36
  %58 = load %struct.rsp_ctrl*, %struct.rsp_ctrl** %7, align 8
  %59 = getelementptr inbounds %struct.rsp_ctrl, %struct.rsp_ctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = call i32 @RSPD_QID_G(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.sge*, %struct.sge** %3, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @IQ_IDX(%struct.sge* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MAX_INGQ, align 4
  %68 = icmp uge i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %57
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %121

78:                                               ; preds = %57
  %79 = load %struct.sge*, %struct.sge** %3, align 8
  %80 = getelementptr inbounds %struct.sge, %struct.sge* %79, i32 0, i32 1
  %81 = load %struct.sge_rspq**, %struct.sge_rspq*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.sge_rspq*, %struct.sge_rspq** %81, i64 %83
  %85 = load %struct.sge_rspq*, %struct.sge_rspq** %84, align 8
  store %struct.sge_rspq* %85, %struct.sge_rspq** %10, align 8
  %86 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %87 = icmp eq %struct.sge_rspq* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.adapter*, %struct.adapter** %2, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %121

97:                                               ; preds = %78
  %98 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %99 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load %struct.adapter*, %struct.adapter** %2, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %112 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %113)
  br label %121

115:                                              ; preds = %97
  %116 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %117 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %116, i32 0, i32 6
  %118 = call i32 @napi_schedule(i32* %117)
  %119 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %120 = call i32 @rspq_next(%struct.sge_rspq* %119)
  br label %121

121:                                              ; preds = %115, %106, %91, %72, %47
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %19

124:                                              ; preds = %35
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @CIDXINC_V(i32 %125)
  %127 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %128 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @SEINTARM_V(i32 %129)
  %131 = or i32 %126, %130
  store i32 %131, i32* %6, align 4
  %132 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %133 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %124
  %141 = load %struct.adapter*, %struct.adapter** %2, align 8
  %142 = load i64, i64* @T4VF_SGE_BASE_ADDR, align 8
  %143 = load i64, i64* @SGE_VF_GTS, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %147 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @INGRESSQID_V(i32 %148)
  %150 = or i32 %145, %149
  %151 = call i32 @t4_write_reg(%struct.adapter* %141, i64 %144, i32 %150)
  br label %166

152:                                              ; preds = %124
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %155 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @INGRESSQID_V(i32 %156)
  %158 = or i32 %153, %157
  %159 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %160 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SGE_UDB_GTS, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %158, i64 %163)
  %165 = call i32 (...) @wmb()
  br label %166

166:                                              ; preds = %152, %140
  %167 = load %struct.adapter*, %struct.adapter** %2, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.sge, %struct.sge* %168, i32 0, i32 0
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @is_new_response(%struct.rsp_ctrl*, %struct.sge_rspq*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @RSPD_TYPE_G(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @RSPD_QID_G(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @IQ_IDX(%struct.sge*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @rspq_next(%struct.sge_rspq*) #1

declare dso_local i32 @CIDXINC_V(i32) #1

declare dso_local i32 @SEINTARM_V(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @INGRESSQID_V(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
