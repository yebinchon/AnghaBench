; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i64, i32, i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@VF_STOPPED = common dso_local global i64 0, align 8
@VF_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"qed_sp_vf_stop returned error %d\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@CHANNEL_TLV_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_mbx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_mbx_release(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  store i32 4, i32* %7, align 4
  %10 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %13 = call i32 @qed_iov_vf_cleanup(%struct.qed_hwfn* %11, %struct.qed_vf_info* %12)
  %14 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %15 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VF_STOPPED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %21 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VF_FREE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %28 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %31 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @qed_sp_vf_stop(%struct.qed_hwfn* %26, i32 %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @DP_ERR(%struct.qed_hwfn* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %25
  %42 = load i64, i64* @VF_STOPPED, align 8
  %43 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %44 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %19, %3
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %48 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %49 = load i32, i32* @CHANNEL_TLV_RELEASE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %46, %struct.qed_ptt* %47, %struct.qed_vf_info* %48, i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @qed_iov_vf_cleanup(%struct.qed_hwfn*, %struct.qed_vf_info*) #1

declare dso_local i32 @qed_sp_vf_stop(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
