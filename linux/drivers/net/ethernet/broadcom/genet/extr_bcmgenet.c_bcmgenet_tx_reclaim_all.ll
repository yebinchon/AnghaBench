; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_tx_reclaim_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_tx_reclaim_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DESC_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcmgenet_tx_reclaim_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_tx_reclaim_all(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.bcmgenet_priv* %6, %struct.bcmgenet_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i64 @netif_is_multiqueue(%struct.net_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %11
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %22 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @bcmgenet_tx_reclaim(%struct.net_device* %20, i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %35 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @DESC_INDEX, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @bcmgenet_tx_reclaim(%struct.net_device* %33, i32* %38)
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_is_multiqueue(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_tx_reclaim(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
