; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_pre_update_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_pre_update_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_sp_vport_update_params = type { %struct.qed_filter_accept_flags }
%struct.qed_filter_accept_flags = type { i32, i32, i64, i64 }
%struct.qed_public_vf_info = type { i32, i32, i32 }

@QED_ACCEPT_UCAST_UNMATCHED = common dso_local global i32 0, align 4
@QED_ACCEPT_MCAST_UNMATCHED = common dso_local global i32 0, align 4
@QED_IOV_VP_UPDATE_ACCEPT_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32, %struct.qed_sp_vport_update_params*, i32*)* @qed_iov_pre_update_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_pre_update_vport(%struct.qed_hwfn* %0, i32 %1, %struct.qed_sp_vport_update_params* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_sp_vport_update_params*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_filter_accept_flags*, align 8
  %12 = alloca %struct.qed_public_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.qed_sp_vport_update_params* %2, %struct.qed_sp_vport_update_params** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @QED_ACCEPT_UCAST_UNMATCHED, align 4
  %14 = load i32, i32* @QED_ACCEPT_MCAST_UNMATCHED, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %8, align 8
  %17 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %16, i32 0, i32 0
  store %struct.qed_filter_accept_flags* %17, %struct.qed_filter_accept_flags** %11, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QED_IOV_VP_UPDATE_ACCEPT_PARAM, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

25:                                               ; preds = %4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn* %26, i32 %27, i32 1)
  store %struct.qed_public_vf_info* %28, %struct.qed_public_vf_info** %12, align 8
  %29 = load %struct.qed_filter_accept_flags*, %struct.qed_filter_accept_flags** %11, align 8
  %30 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.qed_filter_accept_flags*, %struct.qed_filter_accept_flags** %11, align 8
  %35 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %12, align 8
  %38 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %12, align 8
  %40 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.qed_filter_accept_flags*, %struct.qed_filter_accept_flags** %11, align 8
  %47 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %33
  br label %51

51:                                               ; preds = %50, %25
  %52 = load %struct.qed_filter_accept_flags*, %struct.qed_filter_accept_flags** %11, align 8
  %53 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.qed_filter_accept_flags*, %struct.qed_filter_accept_flags** %11, align 8
  %58 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %12, align 8
  %61 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %12, align 8
  %63 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.qed_filter_accept_flags*, %struct.qed_filter_accept_flags** %11, align 8
  %70 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %66, %56
  br label %74

74:                                               ; preds = %73, %51
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %24
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.qed_public_vf_info* @qed_iov_get_public_vf_info(%struct.qed_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
