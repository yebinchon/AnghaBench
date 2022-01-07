; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgb_adapter = type { i32, i32 }

@VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ixgb_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgb_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgb_adapter* %11, %struct.ixgb_adapter** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 5
  %14 = and i32 %13, 127
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* @VFTA, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @IXGB_READ_REG_ARRAY(i32* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 31
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ixgb_write_vfta(i32* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clear_bit(i32 %31, i32 %34)
  ret i32 0
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IXGB_READ_REG_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @ixgb_write_vfta(i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
