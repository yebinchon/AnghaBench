; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.mpc52xx_fec_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mpc52xx_fec_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mpc52xx_fec_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.mpc52xx_fec_priv* %6, %struct.mpc52xx_fec_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @mpc52xx_fec_stop(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mpc52xx_fec_free_rx_buffers(%struct.net_device* %14, i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  %24 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.net_device* %27)
  %29 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @free_irq(i32 %31, %struct.net_device* %32)
  %34 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %35 = icmp ne %struct.phy_device* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = call i32 @phy_stop(%struct.phy_device* %37)
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = call i32 @phy_disconnect(%struct.phy_device* %39)
  br label %41

41:                                               ; preds = %36, %1
  ret i32 0
}

declare dso_local %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @mpc52xx_fec_stop(%struct.net_device*) #1

declare dso_local i32 @mpc52xx_fec_free_rx_buffers(%struct.net_device*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_stop(%struct.phy_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
