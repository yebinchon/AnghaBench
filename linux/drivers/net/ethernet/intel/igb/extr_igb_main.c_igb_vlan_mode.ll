; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vlan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_VME = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_CFIEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @igb_vlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_vlan_mode(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igb_adapter* %11, %struct.igb_adapter** %5, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 1
  store %struct.e1000_hw* %13, %struct.e1000_hw** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load i32, i32* @E1000_CTRL, align 4
  %25 = call i32 @rd32(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @E1000_CTRL_VME, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @E1000_CTRL, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @wr32(i32 %29, i32 %30)
  %32 = load i32, i32* @E1000_RCTL, align 4
  %33 = call i32 @rd32(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @E1000_RCTL_CFIEN, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @E1000_RCTL, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @wr32(i32 %38, i32 %39)
  br label %51

41:                                               ; preds = %2
  %42 = load i32, i32* @E1000_CTRL, align 4
  %43 = call i32 @rd32(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @E1000_CTRL_VME, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @E1000_CTRL, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @wr32(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %23
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @igb_set_vf_vlan_strip(%struct.igb_adapter* %52, i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_set_vf_vlan_strip(%struct.igb_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
