; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgb_adapter = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgb_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgb_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgb_adapter* %9, %struct.ixgb_adapter** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %17 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i64 @netif_running(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %37 = call i32 @ixgb_down(%struct.ixgb_adapter* %36, i32 1)
  %38 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %39 = call i32 @ixgb_up(%struct.ixgb_adapter* %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @ixgb_set_speed_duplex(%struct.net_device* %40)
  br label %45

42:                                               ; preds = %22
  %43 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %44 = call i32 @ixgb_reset(%struct.ixgb_adapter* %43)
  br label %45

45:                                               ; preds = %42, %35
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgb_down(%struct.ixgb_adapter*, i32) #1

declare dso_local i32 @ixgb_up(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_set_speed_duplex(%struct.net_device*) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
