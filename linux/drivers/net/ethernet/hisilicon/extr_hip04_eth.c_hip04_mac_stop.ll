; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hip04_priv = type { i64*, i32, i64, i32 }

@RX_DESC_NUM = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hip04_mac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_mac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hip04_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hip04_priv* %6, %struct.hip04_priv** %3, align 8
  %7 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %7, i32 0, i32 3
  %9 = call i32 @napi_disable(i32* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @hip04_mac_disable(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @hip04_tx_reclaim(%struct.net_device* %14, i32 1)
  %16 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %17 = call i32 @hip04_reset_ppe(%struct.hip04_priv* %16)
  %18 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %19 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @phy_stop(i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @RX_DESC_NUM, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %34 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %32
  %42 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %43 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %46 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @RX_BUF_SIZE, align 4
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = call i32 @dma_unmap_single(i32 %44, i64 %51, i32 %52, i32 %53)
  %55 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %56 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %41, %32
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %28

65:                                               ; preds = %28
  ret i32 0
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @hip04_mac_disable(%struct.net_device*) #1

declare dso_local i32 @hip04_tx_reclaim(%struct.net_device*, i32) #1

declare dso_local i32 @hip04_reset_ppe(%struct.hip04_priv*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
