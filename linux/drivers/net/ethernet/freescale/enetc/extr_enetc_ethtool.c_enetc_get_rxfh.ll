; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.enetc_hw }
%struct.enetc_hw = type { i64 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@ENETC_RSSHASH_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @enetc_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.enetc_ndev_priv*, align 8
  %10 = alloca %struct.enetc_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.enetc_ndev_priv* %14, %struct.enetc_ndev_priv** %9, align 8
  %15 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %9, align 8
  %16 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.enetc_hw* %18, %struct.enetc_hw** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %29 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @ENETC_RSSHASH_KEY_SIZE, align 4
  %36 = sdiv i32 %35, 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.enetc_hw*, %struct.enetc_hw** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ENETC_PRSSK(i32 %40)
  %42 = call i32 @enetc_port_rd(%struct.enetc_hw* %39, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %33

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %27, %24
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %9, align 8
  %56 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %9, align 8
  %60 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @enetc_get_rss_table(%struct.TYPE_2__* %57, i32* %58, i32 %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %54, %51
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_port_rd(%struct.enetc_hw*, i32) #1

declare dso_local i32 @ENETC_PRSSK(i32) #1

declare dso_local i32 @enetc_get_rss_table(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
