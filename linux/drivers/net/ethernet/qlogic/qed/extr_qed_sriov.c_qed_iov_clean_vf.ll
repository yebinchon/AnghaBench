; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_clean_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_clean_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_public_vf_info = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32)* @qed_iov_clean_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_clean_vf(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_public_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn* %6, i32 %7, i32 0)
  store %struct.qed_public_vf_info* %8, %struct.qed_public_vf_info** %5, align 8
  %9 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %5, align 8
  %10 = icmp ne %struct.qed_public_vf_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %5, align 8
  %14 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @eth_zero_addr(i32 %15)
  %17 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %5, align 8
  %18 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %5, align 8
  %20 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
