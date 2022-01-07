; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c___qed_iov_spoofchk_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c___qed_iov_spoofchk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32, i32, i32 }
%struct.qed_sp_vport_update_params = type { i32, i32, i32, i32 }

@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Spoofchk value[%d] is already configured\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Spoofchk val[%d] configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Spoofchk configuration[val:%d] failed for VF[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, i32)* @__qed_iov_spoofchk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_iov_spoofchk_set(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_sp_vport_update_params, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %12 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %17 = load i32, i32* @QED_MSG_IOV, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %16, i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = call i32 @memset(%struct.qed_sp_vport_update_params* %8, i32 0, i32 16)
  %22 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %23 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %8, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %27 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %8, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %35 = call i32 @qed_sp_vport_update(%struct.qed_hwfn* %33, %struct.qed_sp_vport_update_params* %8, i32 %34, i32* null)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %41 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %43 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %46 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %48 = load i32, i32* @QED_MSG_IOV, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %47, i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %59

51:                                               ; preds = %20
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %53 = load i32, i32* @QED_MSG_IOV, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %56 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %52, i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %51, %38
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.qed_sp_vport_update_params*, i32, i32) #1

declare dso_local i32 @qed_sp_vport_update(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
