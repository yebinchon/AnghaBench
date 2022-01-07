; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_update_unicast_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_update_unicast_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32 }
%struct.qed_filter_ucast = type { i64 }

@QED_FILTER_MAC = common dso_local global i64 0, align 8
@QED_FILTER_VLAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_filter_ucast*)* @qed_iov_vf_update_unicast_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_vf_update_unicast_shadow(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, %struct.qed_filter_ucast* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_filter_ucast*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %6, align 8
  store %struct.qed_filter_ucast* %2, %struct.qed_filter_ucast** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %10 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QED_FILTER_MAC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %17 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %18 = call i32 @qed_iov_vf_update_mac_shadow(%struct.qed_hwfn* %15, %struct.qed_vf_info* %16, %struct.qed_filter_ucast* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %26 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QED_FILTER_VLAN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %32 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %33 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %34 = call i32 @qed_iov_vf_update_vlan_shadow(%struct.qed_hwfn* %31, %struct.qed_vf_info* %32, %struct.qed_filter_ucast* %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @qed_iov_vf_update_mac_shadow(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_filter_ucast*) #1

declare dso_local i32 @qed_iov_vf_update_vlan_shadow(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_filter_ucast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
