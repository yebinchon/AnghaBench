; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_eth = type { i32, i32, i32* }
%struct.mtk_mac = type { i32 }

@MTK_MAC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca %struct.mtk_mac*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.mtk_eth* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.mtk_eth* %7, %struct.mtk_eth** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MTK_MAC_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %43

22:                                               ; preds = %12
  %23 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mtk_stop(i32 %29)
  %31 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.mtk_mac* @netdev_priv(i32 %37)
  store %struct.mtk_mac* %38, %struct.mtk_mac** %4, align 8
  %39 = load %struct.mtk_mac*, %struct.mtk_mac** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @phylink_disconnect_phy(i32 %41)
  br label %43

43:                                               ; preds = %22, %21
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %48 = call i32 @mtk_hw_deinit(%struct.mtk_eth* %47)
  %49 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %50 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %49, i32 0, i32 1
  %51 = call i32 @netif_napi_del(i32* %50)
  %52 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %53 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %52, i32 0, i32 0
  %54 = call i32 @netif_napi_del(i32* %53)
  %55 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %56 = call i32 @mtk_cleanup(%struct.mtk_eth* %55)
  %57 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %58 = call i32 @mtk_mdio_cleanup(%struct.mtk_eth* %57)
  ret i32 0
}

declare dso_local %struct.mtk_eth* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mtk_stop(i32) #1

declare dso_local %struct.mtk_mac* @netdev_priv(i32) #1

declare dso_local i32 @phylink_disconnect_phy(i32) #1

declare dso_local i32 @mtk_hw_deinit(%struct.mtk_eth*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @mtk_cleanup(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_mdio_cleanup(%struct.mtk_eth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
