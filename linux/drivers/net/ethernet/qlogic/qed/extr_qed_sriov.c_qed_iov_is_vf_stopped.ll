; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_is_vf_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_is_vf_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i64 }

@VF_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32)* @qed_iov_is_vf_stopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_is_vf_stopped(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn* %7, i32 %8, i32 1)
  store %struct.qed_vf_info* %9, %struct.qed_vf_info** %6, align 8
  %10 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %11 = icmp ne %struct.qed_vf_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %15 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VF_STOPPED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.qed_vf_info* @qed_iov_get_vf_info(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
