; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_UPE = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @e1000e_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 0
  store %struct.e1000_hw* %10, %struct.e1000_hw** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @pm_runtime_suspended(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %90

18:                                               ; preds = %1
  %19 = load i32, i32* @RCTL, align 4
  %20 = call i32 @er32(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @E1000_RCTL_UPE, align 4
  %22 = load i32, i32* @E1000_RCTL_MPE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load i32, i32* @E1000_RCTL_UPE, align 4
  %35 = load i32, i32* @E1000_RCTL_MPE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %40 = call i32 @e1000e_vlan_filter_disable(%struct.e1000_adapter* %39)
  br label %74

41:                                               ; preds = %18
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_ALLMULTI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @E1000_RCTL_MPE, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %62

52:                                               ; preds = %41
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @e1000e_write_mc_addr_list(%struct.net_device* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @E1000_RCTL_MPE, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %64 = call i32 @e1000e_vlan_filter_enable(%struct.e1000_adapter* %63)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 @e1000e_write_uc_addr_list(%struct.net_device* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @E1000_RCTL_UPE, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %62
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* @RCTL, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ew32(i32 %75, i32 %76)
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %86 = call i32 @e1000e_vlan_strip_enable(%struct.e1000_adapter* %85)
  br label %90

87:                                               ; preds = %74
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %89 = call i32 @e1000e_vlan_strip_disable(%struct.e1000_adapter* %88)
  br label %90

90:                                               ; preds = %17, %87, %84
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pm_runtime_suspended(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000e_vlan_filter_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_write_mc_addr_list(%struct.net_device*) #1

declare dso_local i32 @e1000e_vlan_filter_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_write_uc_addr_list(%struct.net_device*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_vlan_strip_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_vlan_strip_disable(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
