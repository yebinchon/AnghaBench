; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_chk_ucast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_chk_ucast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_filter_ucast = type { i64, i32 }
%struct.qed_public_vf_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@QED_FILTER_MAC = common dso_local global i64 0, align 8
@QED_FILTER_MAC_VLAN = common dso_local global i64 0, align 8
@QED_IOV_WQ_BULLETIN_UPDATE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_filter_ucast*)* @qed_iov_chk_ucast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_chk_ucast(%struct.qed_hwfn* %0, i32 %1, %struct.qed_filter_ucast* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_filter_ucast*, align 8
  %8 = alloca %struct.qed_public_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_filter_ucast* %2, %struct.qed_filter_ucast** %7, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn* %9, i32 %10, i32 1)
  store %struct.qed_public_vf_info* %11, %struct.qed_public_vf_info** %8, align 8
  %12 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %8, align 8
  %13 = icmp ne %struct.qed_public_vf_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %19 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QED_FILTER_MAC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %25 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QED_FILTER_MAC_VLAN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23, %17
  %30 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %8, align 8
  %31 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qed_filter_ucast*, %struct.qed_filter_ucast** %7, align 8
  %34 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ether_addr_copy(i32 %32, i32 %35)
  %37 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %8, align 8
  %38 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %43 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %8, align 8
  %44 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @qed_iov_bulletin_set_mac(%struct.qed_hwfn* %42, i32 %45, i32 %46)
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = load i32, i32* @QED_IOV_WQ_BULLETIN_UPDATE_FLAG, align 4
  %50 = call i32 @qed_schedule_iov(%struct.qed_hwfn* %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %29
  br label %52

52:                                               ; preds = %51, %23
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qed_iov_bulletin_set_mac(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_schedule_iov(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
