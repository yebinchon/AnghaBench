; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ltq_etop_priv = type { %struct.ltq_etop_chan* }
%struct.ltq_etop_chan = type { i32, i32 }

@MAX_DMA_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ltq_etop_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_etop_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ltq_etop_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltq_etop_chan*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ltq_etop_priv* %7, %struct.ltq_etop_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @phy_stop(i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %40, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAX_DMA_CHAN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %19, i32 0, i32 0
  %21 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %21, i64 %23
  store %struct.ltq_etop_chan* %24, %struct.ltq_etop_chan** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @IS_RX(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @IS_TX(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %40

33:                                               ; preds = %28, %18
  %34 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %5, align 8
  %35 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %34, i32 0, i32 1
  %36 = call i32 @napi_disable(i32* %35)
  %37 = load %struct.ltq_etop_chan*, %struct.ltq_etop_chan** %5, align 8
  %38 = getelementptr inbounds %struct.ltq_etop_chan, %struct.ltq_etop_chan* %37, i32 0, i32 0
  %39 = call i32 @ltq_dma_close(i32* %38)
  br label %40

40:                                               ; preds = %33, %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %14

43:                                               ; preds = %14
  ret i32 0
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @IS_RX(i32) #1

declare dso_local i32 @IS_TX(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ltq_dma_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
