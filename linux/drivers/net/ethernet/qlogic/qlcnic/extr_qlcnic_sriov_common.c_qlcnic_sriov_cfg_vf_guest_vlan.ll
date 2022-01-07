; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_cfg_vf_guest_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_cfg_vf_guest_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32 }
%struct.net_device = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@QLCNIC_BC_CMD_CFG_GUEST_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to configure guest VLAN, err=%d\0A\00", align 1
@QLC_VLAN_ADD = common dso_local global i32 0, align 4
@QLC_VLAN_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_cfg_vf_guest_vlan(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_sriov*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.qlcnic_vf_info*, align 8
  %11 = alloca %struct.qlcnic_cmd_args, align 8
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %16, align 8
  store %struct.qlcnic_sriov* %17, %struct.qlcnic_sriov** %8, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 2
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = call i32 @memset(%struct.qlcnic_cmd_args* %11, i32 0, i32 8)
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

25:                                               ; preds = %3
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %29, align 8
  %31 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %30, i32 0, i32 1
  %32 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %31, align 8
  %33 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %32, i64 0
  store %struct.qlcnic_vf_info* %33, %struct.qlcnic_vf_info** %10, align 8
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @qlcnic_sriov_validate_vlan_cfg(%struct.qlcnic_adapter* %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %102

42:                                               ; preds = %25
  %43 = load i32, i32* @QLCNIC_BC_CMD_CFG_GUEST_VLAN, align 4
  %44 = call i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %11, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %102

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 1
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %51, %53
  %55 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %60 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %59, i32 0, i32 0
  %61 = call i32 @qlcnic_sriov_cleanup_async_list(i32* %60)
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %63 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %62, %struct.qlcnic_cmd_args* %11)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %49
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %99

73:                                               ; preds = %49
  %74 = load %struct.net_device*, %struct.net_device** %9, align 8
  %75 = call i32 @netif_addr_lock_bh(%struct.net_device* %74)
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %77 = call i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter* %76)
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = call i32 @netif_addr_unlock_bh(%struct.net_device* %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @QLC_VLAN_ADD, align 4
  %86 = call i32 @qlcnic_sriov_vlan_operation(%struct.qlcnic_vf_info* %83, i32 %84, i32 %85)
  br label %92

87:                                               ; preds = %73
  %88 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @QLC_VLAN_DELETE, align 4
  %91 = call i32 @qlcnic_sriov_vlan_operation(%struct.qlcnic_vf_info* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.net_device*, %struct.net_device** %9, align 8
  %94 = call i32 @netif_addr_lock_bh(%struct.net_device* %93)
  %95 = load %struct.net_device*, %struct.net_device** %9, align 8
  %96 = call i32 @qlcnic_set_multi(%struct.net_device* %95)
  %97 = load %struct.net_device*, %struct.net_device** %9, align 8
  %98 = call i32 @netif_addr_unlock_bh(%struct.net_device* %97)
  br label %99

99:                                               ; preds = %92, %66
  %100 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %11)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %47, %40, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @memset(%struct.qlcnic_cmd_args*, i32, i32) #1

declare dso_local i32 @qlcnic_sriov_validate_vlan_cfg(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args*, i32) #1

declare dso_local i32 @qlcnic_sriov_cleanup_async_list(i32*) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @qlcnic_sriov_vlan_operation(%struct.qlcnic_vf_info*, i32, i32) #1

declare dso_local i32 @qlcnic_set_multi(%struct.net_device*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
