; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nps_enet_priv = type { i32* }

@NPS_ENET_REG_TX_CTL = common dso_local global i32 0, align 4
@TX_CTL_ET_MASK = common dso_local global i32 0, align 4
@TX_CTL_ET_SHIFT = common dso_local global i32 0, align 4
@TX_CTL_NT_MASK = common dso_local global i32 0, align 4
@TX_CTL_NT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nps_enet_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nps_enet_tx_handler(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nps_enet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nps_enet_priv* %8, %struct.nps_enet_priv** %3, align 8
  %9 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %10 = load i32, i32* @NPS_ENET_REG_TX_CTL, align 4
  %11 = call i32 @nps_enet_reg_get(%struct.nps_enet_priv* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TX_CTL_ET_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @TX_CTL_ET_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TX_CTL_NT_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @TX_CTL_NT_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %23 = call i32 @nps_enet_is_tx_pending(%struct.nps_enet_priv* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %64

26:                                               ; preds = %1
  %27 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %28 = load i32, i32* @NPS_ENET_REG_TX_CTL, align 4
  %29 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %27, i32 %28, i32 0)
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %51

39:                                               ; preds = %26
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %39, %33
  %52 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %53 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @dev_kfree_skb(i32* %54)
  %56 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %57 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i64 @netif_queue_stopped(%struct.net_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @netif_wake_queue(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %25, %61, %51
  ret void
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_reg_get(%struct.nps_enet_priv*, i32) #1

declare dso_local i32 @nps_enet_is_tx_pending(%struct.nps_enet_priv*) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
