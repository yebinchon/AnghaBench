; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_enable_vf_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_enable_vf_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32, i64, i32, i64 }

@IGU_VF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Enable internal access for vf %x [abs %x]\0A\00", align 1
@IGU_VF_CONF_PARENT = common dso_local global i32 0, align 4
@IGU_REG_VF_CONFIGURATION_RT_OFFSET = common dso_local global i32 0, align 4
@PHASE_VF = common dso_local global i32 0, align 4
@VF_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_enable_vf_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_enable_vf_access(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_vf_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %7, align 8
  %10 = load i32, i32* @IGU_VF_CONF_FUNC_EN, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %12 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %14 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

18:                                               ; preds = %3
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = load i32, i32* @QED_MSG_IOV, align 4
  %21 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %22 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %25 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %26 = call i32 @QED_VF_ABS_ID(%struct.qed_hwfn* %24, %struct.qed_vf_info* %25)
  %27 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %19, i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %29 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %31 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %32 = call i32 @QED_VF_ABS_ID(%struct.qed_hwfn* %30, %struct.qed_vf_info* %31)
  %33 = call i32 @qed_iov_vf_pglue_clear_err(%struct.qed_hwfn* %28, %struct.qed_ptt* %29, i32 %32)
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %35 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %36 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %37 = call i32 @qed_iov_vf_igu_reset(%struct.qed_hwfn* %34, %struct.qed_ptt* %35, %struct.qed_vf_info* %36)
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %40 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %41 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %44 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @qed_iov_enable_vf_access_msix(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32 %42, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %18
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %92

51:                                               ; preds = %18
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %53 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %54 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %55 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %52, %struct.qed_ptt* %53, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IGU_VF_CONF_PARENT, align 4
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %62 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @SET_FIELD(i32 %59, i32 %60, i32 %63)
  %65 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %66 = load i32, i32* @IGU_REG_VF_CONFIGURATION_RT_OFFSET, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %65, i32 %66, i32 %67)
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %70 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %71 = load i32, i32* @PHASE_VF, align 4
  %72 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %73 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %76 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @qed_init_run(%struct.qed_hwfn* %69, %struct.qed_ptt* %70, i32 %71, i32 %74, i32 %78)
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %81 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %83 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @qed_fid_pretend(%struct.qed_hwfn* %80, %struct.qed_ptt* %81, i32 %86)
  %88 = load i32, i32* @VF_FREE, align 4
  %89 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %90 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %51, %49, %17
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @QED_VF_ABS_ID(%struct.qed_hwfn*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_vf_pglue_clear_err(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_iov_vf_igu_reset(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_iov_enable_vf_access_msix(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_fid_pretend(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_init_run(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
