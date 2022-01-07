; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_deregister_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_deregister_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_deregister_tid_ramrod_data = type { i32 }
%struct.qed_sp_init_data = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_deregister_tid_ramrod_data }
%struct.qed_ptt = type { i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"itid = %08x\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_DEREGISTER_MR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"fw_return_code = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RDMA_RETURN_NIG_DRAIN_REQ = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to acquire PTT\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Drain failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to init sp-element\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Ramrod failed\0A\00", align 1
@RDMA_RETURN_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"De-registered TID, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @qed_rdma_deregister_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_deregister_tid(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.rdma_deregister_tid_ramrod_data*, align 8
  %8 = alloca %struct.qed_sp_init_data, align 4
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %14, %struct.qed_hwfn** %6, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %16 = load i32, i32* @QED_MSG_RDMA, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %15, i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @memset(%struct.qed_sp_init_data* %8, i32 0, i32 8)
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %26 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %28 = load i32, i32* @RDMA_RAMROD_DEREGISTER_MR, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %27, %struct.qed_spq_entry** %9, i32 %28, i32 %33, %struct.qed_sp_init_data* %8)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %39 = load i32, i32* @QED_MSG_RDMA, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %3, align 4
  br label %149

43:                                               ; preds = %2
  %44 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %45 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store %struct.rdma_deregister_tid_ramrod_data* %46, %struct.rdma_deregister_tid_ramrod_data** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load %struct.rdma_deregister_tid_ramrod_data*, %struct.rdma_deregister_tid_ramrod_data** %7, align 8
  %50 = getelementptr inbounds %struct.rdma_deregister_tid_ramrod_data, %struct.rdma_deregister_tid_ramrod_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %52 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %53 = call i32 @qed_spq_post(%struct.qed_hwfn* %51, %struct.qed_spq_entry* %52, i64* %11)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %58 = load i32, i32* @QED_MSG_RDMA, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %57, i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %3, align 4
  br label %149

62:                                               ; preds = %43
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @DP_NOTICE(%struct.qed_hwfn* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %149

72:                                               ; preds = %62
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* @RDMA_RETURN_NIG_DRAIN_REQ, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %142

76:                                               ; preds = %72
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %78 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %77)
  store %struct.qed_ptt* %78, %struct.qed_ptt** %10, align 8
  %79 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %80 = icmp ne %struct.qed_ptt* %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %85 = load i32, i32* @QED_MSG_RDMA, align 4
  %86 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %84, i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %149

88:                                               ; preds = %76
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %90 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %91 = call i32 @qed_mcp_drain(%struct.qed_hwfn* %89, %struct.qed_ptt* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %96 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %97 = call i32 @qed_ptt_release(%struct.qed_hwfn* %95, %struct.qed_ptt* %96)
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %99 = load i32, i32* @QED_MSG_RDMA, align 4
  %100 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %98, i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %3, align 4
  br label %149

102:                                              ; preds = %88
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %104 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %105 = call i32 @qed_ptt_release(%struct.qed_hwfn* %103, %struct.qed_ptt* %104)
  %106 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %107 = load i32, i32* @RDMA_RAMROD_DEREGISTER_MR, align 4
  %108 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %109 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %106, %struct.qed_spq_entry** %9, i32 %107, i32 %112, %struct.qed_sp_init_data* %8)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %118 = load i32, i32* @QED_MSG_RDMA, align 4
  %119 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %117, i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %3, align 4
  br label %149

121:                                              ; preds = %102
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %123 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %124 = call i32 @qed_spq_post(%struct.qed_hwfn* %122, %struct.qed_spq_entry* %123, i64* %11)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %129 = load i32, i32* @QED_MSG_RDMA, align 4
  %130 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %128, i32 %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %3, align 4
  br label %149

132:                                              ; preds = %121
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* @RDMA_RETURN_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @DP_NOTICE(%struct.qed_hwfn* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %138)
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %3, align 4
  br label %149

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %72
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %145 = load i32, i32* @QED_MSG_RDMA, align 4
  %146 = load i32, i32* %12, align 4
  %147 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %144, i32 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %143, %136, %127, %116, %94, %81, %66, %56, %37
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_drain(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
