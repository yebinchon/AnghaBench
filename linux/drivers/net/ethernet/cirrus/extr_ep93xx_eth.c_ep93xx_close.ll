; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ep93xx_priv = type { i32, i32 }

@REG_GIINTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ep93xx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ep93xx_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.ep93xx_priv* %5, %struct.ep93xx_priv** %3, align 8
  %6 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %6, i32 0, i32 1
  %8 = call i32 @napi_disable(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_stop_queue(%struct.net_device* %9)
  %11 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %12 = load i32, i32* @REG_GIINTMSK, align 4
  %13 = call i32 @wrl(%struct.ep93xx_priv* %11, i32 %12, i32 0)
  %14 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @ep93xx_stop_hw(%struct.net_device* %19)
  %21 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %22 = call i32 @ep93xx_free_buffers(%struct.ep93xx_priv* %21)
  ret i32 0
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @wrl(%struct.ep93xx_priv*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ep93xx_stop_hw(%struct.net_device*) #1

declare dso_local i32 @ep93xx_free_buffers(%struct.ep93xx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
