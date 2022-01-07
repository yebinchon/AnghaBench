; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_close_func_ramrod_data = type { i64, i32 }
%struct.qed_sp_init_data = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rdma_close_func_ramrod_data }
%struct.qed_ptt = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"RDMA stop\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to acquire PTT\0A\00", align 1
@PRS_REG_ROCE_DEST_QP_MAX_PF = common dso_local global i32 0, align 4
@PRS_REG_LIGHT_L2_ETHERTYPE_EN = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_FUNC_CLOSE = common dso_local global i32 0, align 4
@QED_RDMA_CNQ_RAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"RDMA stop done, rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @qed_rdma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_stop(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.rdma_close_func_ramrod_data*, align 8
  %6 = alloca %struct.qed_sp_init_data, align 4
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %12, %struct.qed_hwfn** %4, align 8
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = load i32, i32* @QED_MSG_RDMA, align 4
  %17 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %18)
  store %struct.qed_ptt* %19, %struct.qed_ptt** %8, align 8
  %20 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %21 = icmp ne %struct.qed_ptt* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load i32, i32* @QED_MSG_RDMA, align 4
  %25 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %23, i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %2, align 4
  br label %121

27:                                               ; preds = %1
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qed_wr(%struct.qed_hwfn* %28, %struct.qed_ptt* %29, i32 %32, i32 0)
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %37 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %41 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %42 = load i32, i32* @PRS_REG_ROCE_DEST_QP_MAX_PF, align 4
  %43 = call i32 @qed_wr(%struct.qed_hwfn* %40, %struct.qed_ptt* %41, i32 %42, i32 0)
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %45 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %46 = load i32, i32* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 4
  %47 = call i32 @qed_rd(%struct.qed_hwfn* %44, %struct.qed_ptt* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %49 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %50 = load i32, i32* @PRS_REG_LIGHT_L2_ETHERTYPE_EN, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 65534
  %53 = call i32 @qed_wr(%struct.qed_hwfn* %48, %struct.qed_ptt* %49, i32 %50, i32 %52)
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %55 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %27
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %59 = call i32 @qed_iwarp_stop(%struct.qed_hwfn* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %64 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %65 = call i32 @qed_ptt_release(%struct.qed_hwfn* %63, %struct.qed_ptt* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %2, align 4
  br label %121

67:                                               ; preds = %57
  br label %71

68:                                               ; preds = %27
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %70 = call i32 @qed_roce_stop(%struct.qed_hwfn* %69)
  br label %71

71:                                               ; preds = %68, %67
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %73 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %74 = call i32 @qed_ptt_release(%struct.qed_hwfn* %72, %struct.qed_ptt* %73)
  %75 = call i32 @memset(%struct.qed_sp_init_data* %6, i32 0, i32 8)
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %77 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %6, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %82 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %84 = load i32, i32* @RDMA_RAMROD_FUNC_CLOSE, align 4
  %85 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %86 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %83, %struct.qed_spq_entry** %7, i32 %84, i32 %89, %struct.qed_sp_init_data* %6)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %71
  br label %113

94:                                               ; preds = %71
  %95 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %96 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store %struct.rdma_close_func_ramrod_data* %97, %struct.rdma_close_func_ramrod_data** %5, align 8
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %99 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.rdma_close_func_ramrod_data*, %struct.rdma_close_func_ramrod_data** %5, align 8
  %104 = getelementptr inbounds %struct.rdma_close_func_ramrod_data, %struct.rdma_close_func_ramrod_data* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %106 = load i32, i32* @QED_RDMA_CNQ_RAM, align 4
  %107 = call i64 @RESC_START(%struct.qed_hwfn* %105, i32 %106)
  %108 = load %struct.rdma_close_func_ramrod_data*, %struct.rdma_close_func_ramrod_data** %5, align 8
  %109 = getelementptr inbounds %struct.rdma_close_func_ramrod_data, %struct.rdma_close_func_ramrod_data* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %111 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %112 = call i32 @qed_spq_post(%struct.qed_hwfn* %110, %struct.qed_spq_entry* %111, i32* null)
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %94, %93
  %114 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %115 = call i32 @qed_rdma_free(%struct.qed_hwfn* %114)
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %117 = load i32, i32* @QED_MSG_RDMA, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %116, i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %113, %62, %22
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_stop(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_roce_stop(%struct.qed_hwfn*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i64 @RESC_START(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_rdma_free(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
