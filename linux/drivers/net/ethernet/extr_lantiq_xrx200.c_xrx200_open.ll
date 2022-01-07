; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_xrx200.c_xrx200_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xrx200_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xrx200_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xrx200_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xrx200_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.xrx200_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.xrx200_priv* %5, %struct.xrx200_priv** %3, align 8
  %6 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %7 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = call i32 @napi_enable(i32* %8)
  %10 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %11 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @ltq_dma_open(i32* %12)
  %14 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %15 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @ltq_dma_enable_irq(i32* %16)
  %18 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %19 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @napi_enable(i32* %20)
  %22 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %23 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @ltq_dma_open(i32* %24)
  %26 = call i32 @usleep_range(i32 20, i32 40)
  %27 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %28 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %27, i32 0, i32 0
  %29 = call i32 @xrx200_flush_dma(%struct.TYPE_4__* %28)
  %30 = load %struct.xrx200_priv*, %struct.xrx200_priv** %3, align 8
  %31 = getelementptr inbounds %struct.xrx200_priv, %struct.xrx200_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @ltq_dma_enable_irq(i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @netif_wake_queue(%struct.net_device* %34)
  ret i32 0
}

declare dso_local %struct.xrx200_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ltq_dma_open(i32*) #1

declare dso_local i32 @ltq_dma_enable_irq(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @xrx200_flush_dma(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
