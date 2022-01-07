; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_pdata*)* }
%struct.netdev_queue = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xgene_enet_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.xgene_enet_pdata* %7, %struct.xgene_enet_pdata** %3, align 8
  %8 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.xgene_enet_pdata*)*, i32 (%struct.xgene_enet_pdata*)** %11, align 8
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %14 = call i32 %12(%struct.xgene_enet_pdata* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %22, i32 %23)
  store %struct.netdev_queue* %24, %struct.netdev_queue** %4, align 8
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %27 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %29 = call i32 @netif_tx_start_queue(%struct.netdev_queue* %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %15

33:                                               ; preds = %15
  ret void
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netif_tx_start_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
