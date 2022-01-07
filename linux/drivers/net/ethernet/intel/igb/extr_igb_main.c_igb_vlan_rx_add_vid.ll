; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igb_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@IGB_FLAG_VLAN_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @igb_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.igb_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igb_adapter* %11, %struct.igb_adapter** %7, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 3
  store %struct.e1000_hw* %13, %struct.e1000_hw** %8, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IGB_FLAG_VLAN_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %19, %3
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @igb_vfta_set(%struct.e1000_hw* %27, i32 %28, i32 %29, i32 1, i32 %34)
  br label %36

36:                                               ; preds = %26, %19
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_bit(i32 %37, i32 %40)
  ret i32 0
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @igb_vfta_set(%struct.e1000_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
