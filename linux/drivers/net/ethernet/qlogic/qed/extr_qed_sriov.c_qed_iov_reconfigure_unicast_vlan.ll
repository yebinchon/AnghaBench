; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_reconfigure_unicast_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_reconfigure_unicast_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qed_filter_ucast = type { i32, i32, i32, i32, i32, i32 }

@QED_FILTER_ADD = common dso_local global i32 0, align 4
@QED_ETH_VF_NUM_VLAN_FILTERS = common dso_local global i32 0, align 4
@QED_FILTER_VLAN = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Reconfiguring VLAN [0x%04x] for VF [%04x]\0A\00", align 1
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to configure VLAN [%04x] to VF [%04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*)* @qed_iov_reconfigure_unicast_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iov_reconfigure_unicast_vlan(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_vf_info*, align 8
  %5 = alloca %struct.qed_filter_ucast, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 @memset(%struct.qed_filter_ucast* %5, i32 0, i32 24)
  %9 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %12 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 5
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @QED_FILTER_ADD, align 4
  %16 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %72, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @QED_ETH_VF_NUM_VLAN_FILTERS, align 4
  %20 = add nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %17
  %23 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %24 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %72

34:                                               ; preds = %22
  %35 = load i32, i32* @QED_FILTER_VLAN, align 4
  %36 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %38 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %48 = load i32, i32* @QED_MSG_IOV, align 4
  %49 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %52 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %47, i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %56 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %57 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %60 = call i32 @qed_sp_eth_filter_ucast(%struct.qed_hwfn* %55, i32 %58, %struct.qed_filter_ucast* %5, i32 %59, i32* null)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %34
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %65 = getelementptr inbounds %struct.qed_filter_ucast, %struct.qed_filter_ucast* %5, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qed_vf_info*, %struct.qed_vf_info** %4, align 8
  %68 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DP_NOTICE(%struct.qed_hwfn* %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69)
  br label %75

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %17

75:                                               ; preds = %63, %17
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.qed_filter_ucast*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_sp_eth_filter_ucast(%struct.qed_hwfn*, i32, %struct.qed_filter_ucast*, i32, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
