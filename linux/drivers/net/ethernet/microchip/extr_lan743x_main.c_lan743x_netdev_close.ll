; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lan743x_adapter = type { i32*, i32* }

@LAN743X_USED_RX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lan743x_netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.lan743x_adapter* %6, %struct.lan743x_adapter** %3, align 8
  %7 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = call i32 @lan743x_tx_close(i32* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @lan743x_rx_close(i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %29 = call i32 @lan743x_ptp_close(%struct.lan743x_adapter* %28)
  %30 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %31 = call i32 @lan743x_phy_close(%struct.lan743x_adapter* %30)
  %32 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %33 = call i32 @lan743x_mac_close(%struct.lan743x_adapter* %32)
  %34 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %35 = call i32 @lan743x_intr_close(%struct.lan743x_adapter* %34)
  ret i32 0
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan743x_tx_close(i32*) #1

declare dso_local i32 @lan743x_rx_close(i32*) #1

declare dso_local i32 @lan743x_ptp_close(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_phy_close(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_mac_close(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_intr_close(%struct.lan743x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
