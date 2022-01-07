; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_copy_vf_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_copy_vf_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_dmae_params = type { i32, i32 }
%struct.qed_vf_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_DMAE_FLAG_VF_SRC = common dso_local global i32 0, align 4
@QED_DMAE_FLAG_COMPLETION_DST = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to copy message from VF 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_iov_copy_vf_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_copy_vf_msg(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_dmae_params, align 4
  %9 = alloca %struct.qed_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %10, i32 %11, i32 1)
  store %struct.qed_vf_info* %12, %struct.qed_vf_info** %9, align 8
  %13 = load %struct.qed_vf_info*, %struct.qed_vf_info** %9, align 8
  %14 = icmp ne %struct.qed_vf_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = call i32 @memset(%struct.qed_dmae_params* %8, i32 0, i32 8)
  %20 = load i32, i32* @QED_DMAE_FLAG_VF_SRC, align 4
  %21 = load i32, i32* @QED_DMAE_FLAG_COMPLETION_DST, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %8, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.qed_vf_info*, %struct.qed_vf_info** %9, align 8
  %25 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.qed_dmae_params, %struct.qed_dmae_params* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %29 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %30 = load %struct.qed_vf_info*, %struct.qed_vf_info** %9, align 8
  %31 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qed_vf_info*, %struct.qed_vf_info** %9, align 8
  %35 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @qed_dmae_host2host(%struct.qed_hwfn* %28, %struct.qed_ptt* %29, i32 %33, i32 %37, i32 1, %struct.qed_dmae_params* %8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %18
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %42 = load i32, i32* @QED_MSG_IOV, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %41, i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %40, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @memset(%struct.qed_dmae_params*, i32, i32) #1

declare dso_local i64 @qed_dmae_host2host(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, %struct.qed_dmae_params*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
