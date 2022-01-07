; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hip04_priv = type { i32, i64, i32*, i32, i32*, i64, i64, i64, i64 }

@RX_DESC_NUM = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hip04_mac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_mac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hip04_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hip04_priv* %8, %struct.hip04_priv** %4, align 8
  %9 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %10 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %14 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %16 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %18 = call i32 @hip04_reset_ppe(%struct.hip04_priv* %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %57, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RX_DESC_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %25 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %28 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RX_BUF_SIZE, align 4
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_map_single(i32 %26, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %38 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @dma_mapping_error(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %80

46:                                               ; preds = %23
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %49 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @hip04_set_recv_desc(%struct.hip04_priv* %54, i32 %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %62 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %67 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @phy_start(i64 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @netdev_reset_queue(%struct.net_device* %71)
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = call i32 @netif_start_queue(%struct.net_device* %73)
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @hip04_mac_enable(%struct.net_device* %75)
  %77 = load %struct.hip04_priv*, %struct.hip04_priv** %4, align 8
  %78 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %77, i32 0, i32 0
  %79 = call i32 @napi_enable(i32* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %70, %43
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hip04_reset_ppe(%struct.hip04_priv*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @hip04_set_recv_desc(%struct.hip04_priv*, i32) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @hip04_mac_enable(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
