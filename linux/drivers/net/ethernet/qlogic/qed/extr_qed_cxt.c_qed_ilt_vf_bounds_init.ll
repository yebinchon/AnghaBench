; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_ilt_vf_bounds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_ilt_vf_bounds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.qed_ilt_client_cfg* }
%struct.qed_ilt_client_cfg = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.qed_hw_sriov_info* }
%struct.qed_hw_sriov_info = type { i64, i64 }

@PSWRQ2_REG_VF_BASE_RT_OFFSET = common dso_local global i32 0, align 4
@PSWRQ2_REG_VF_LAST_ILT_RT_OFFSET = common dso_local global i32 0, align 4
@ILT_CLI_CDUC = common dso_local global i64 0, align 8
@PSWRQ2_REG_CDUC_BLOCKS_FACTOR_RT_OFFSET = common dso_local global i32 0, align 4
@PSWRQ2_REG_CDUC_NUMBER_OF_PF_BLOCKS_RT_OFFSET = common dso_local global i32 0, align 4
@PSWRQ2_REG_CDUC_VF_BLOCKS_RT_OFFSET = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@PSWRQ2_REG_CDUT_BLOCKS_FACTOR_RT_OFFSET = common dso_local global i32 0, align 4
@PSWRQ2_REG_CDUT_NUMBER_OF_PF_BLOCKS_RT_OFFSET = common dso_local global i32 0, align 4
@PSWRQ2_REG_CDUT_VF_BLOCKS_RT_OFFSET = common dso_local global i32 0, align 4
@ILT_CLI_TM = common dso_local global i64 0, align 8
@PSWRQ2_REG_TM_BLOCKS_FACTOR_RT_OFFSET = common dso_local global i32 0, align 4
@PSWRQ2_REG_TM_NUMBER_OF_PF_BLOCKS_RT_OFFSET = common dso_local global i32 0, align 4
@PSWRQ2_REG_TM_VF_BLOCKS_RT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_ilt_vf_bounds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ilt_vf_bounds_init(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_ilt_client_cfg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qed_hw_sriov_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %9, align 8
  %11 = icmp ne %struct.qed_hw_sriov_info* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %16, align 8
  store %struct.qed_hw_sriov_info* %17, %struct.qed_hw_sriov_info** %5, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %19 = load i32, i32* @PSWRQ2_REG_VF_BASE_RT_OFFSET, align 4
  %20 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %5, align 8
  %21 = getelementptr inbounds %struct.qed_hw_sriov_info, %struct.qed_hw_sriov_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %18, i32 %19, i64 %22)
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %25 = load i32, i32* @PSWRQ2_REG_VF_LAST_ILT_RT_OFFSET, align 4
  %26 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %5, align 8
  %27 = getelementptr inbounds %struct.qed_hw_sriov_info, %struct.qed_hw_sriov_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.qed_hw_sriov_info*, %struct.qed_hw_sriov_info** %5, align 8
  %30 = getelementptr inbounds %struct.qed_hw_sriov_info, %struct.qed_hw_sriov_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %24, i32 %25, i64 %32)
  br label %34

34:                                               ; preds = %12, %1
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %36 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %38, align 8
  %40 = load i64, i64* @ILT_CLI_CDUC, align 8
  %41 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %39, i64 %40
  store %struct.qed_ilt_client_cfg* %41, %struct.qed_ilt_client_cfg** %3, align 8
  %42 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %43 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ILT_PAGE_IN_BYTES(i32 %45)
  %47 = ashr i32 %46, 10
  %48 = call i64 @ilog2(i32 %47)
  store i64 %48, i64* %4, align 8
  %49 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %50 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %34
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %55 = load i32, i32* @PSWRQ2_REG_CDUC_BLOCKS_FACTOR_RT_OFFSET, align 4
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %54, i32 %55, i64 %56)
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %59 = load i32, i32* @PSWRQ2_REG_CDUC_NUMBER_OF_PF_BLOCKS_RT_OFFSET, align 4
  %60 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %61 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %58, i32 %59, i64 %62)
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %65 = load i32, i32* @PSWRQ2_REG_CDUC_VF_BLOCKS_RT_OFFSET, align 4
  %66 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %67 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %64, i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %53, %34
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %72 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %74, align 8
  %76 = load i64, i64* @ILT_CLI_CDUT, align 8
  %77 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %75, i64 %76
  store %struct.qed_ilt_client_cfg* %77, %struct.qed_ilt_client_cfg** %3, align 8
  %78 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %79 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ILT_PAGE_IN_BYTES(i32 %81)
  %83 = ashr i32 %82, 10
  %84 = call i64 @ilog2(i32 %83)
  store i64 %84, i64* %4, align 8
  %85 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %86 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %70
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %91 = load i32, i32* @PSWRQ2_REG_CDUT_BLOCKS_FACTOR_RT_OFFSET, align 4
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %90, i32 %91, i64 %92)
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %95 = load i32, i32* @PSWRQ2_REG_CDUT_NUMBER_OF_PF_BLOCKS_RT_OFFSET, align 4
  %96 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %97 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %94, i32 %95, i64 %98)
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %101 = load i32, i32* @PSWRQ2_REG_CDUT_VF_BLOCKS_RT_OFFSET, align 4
  %102 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %103 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %100, i32 %101, i64 %104)
  br label %106

106:                                              ; preds = %89, %70
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %108 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %110, align 8
  %112 = load i64, i64* @ILT_CLI_TM, align 8
  %113 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %111, i64 %112
  store %struct.qed_ilt_client_cfg* %113, %struct.qed_ilt_client_cfg** %3, align 8
  %114 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %115 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ILT_PAGE_IN_BYTES(i32 %117)
  %119 = ashr i32 %118, 10
  %120 = call i64 @ilog2(i32 %119)
  store i64 %120, i64* %4, align 8
  %121 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %122 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %106
  %126 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %127 = load i32, i32* @PSWRQ2_REG_TM_BLOCKS_FACTOR_RT_OFFSET, align 4
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %126, i32 %127, i64 %128)
  %130 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %131 = load i32, i32* @PSWRQ2_REG_TM_NUMBER_OF_PF_BLOCKS_RT_OFFSET, align 4
  %132 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %133 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %130, i32 %131, i64 %134)
  %136 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %137 = load i32, i32* @PSWRQ2_REG_TM_VF_BLOCKS_RT_OFFSET, align 4
  %138 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %139 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %136, i32 %137, i64 %140)
  br label %142

142:                                              ; preds = %125, %106
  ret void
}

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @ILT_PAGE_IN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
