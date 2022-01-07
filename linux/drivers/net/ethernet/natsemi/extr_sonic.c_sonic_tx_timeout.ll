; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_sonic.c_sonic_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_sonic.c_sonic_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sonic_local = type { %struct.TYPE_2__, i32**, i64*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@SONIC_IMR = common dso_local global i32 0, align 4
@SONIC_ISR = common dso_local global i32 0, align 4
@SONIC_CMD = common dso_local global i32 0, align 4
@SONIC_CR_RST = common dso_local global i32 0, align 4
@SONIC_NUM_TDS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sonic_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sonic_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sonic_local*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %5)
  store %struct.sonic_local* %6, %struct.sonic_local** %3, align 8
  %7 = load i32, i32* @SONIC_IMR, align 4
  %8 = call i32 @SONIC_WRITE(i32 %7, i32 0)
  %9 = load i32, i32* @SONIC_ISR, align 4
  %10 = call i32 @SONIC_WRITE(i32 %9, i32 32767)
  %11 = load i32, i32* @SONIC_CMD, align 4
  %12 = load i32, i32* @SONIC_CR_RST, align 4
  %13 = call i32 @SONIC_WRITE(i32 %11, i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %78, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SONIC_NUM_TDS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %81

18:                                               ; preds = %14
  %19 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %20 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %18
  %28 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %29 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %32 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %39 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_unmap_single(i32 %30, i64 %37, i32 %44, i32 %45)
  %47 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %48 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %27, %18
  %54 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %55 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %64 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @dev_kfree_skb(i32* %69)
  %71 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %72 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %62, %53
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %14

81:                                               ; preds = %14
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 @sonic_init(%struct.net_device* %82)
  %84 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %85 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = call i32 @netif_trans_update(%struct.net_device* %89)
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = call i32 @netif_wake_queue(%struct.net_device* %91)
  ret void
}

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SONIC_WRITE(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @sonic_init(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
