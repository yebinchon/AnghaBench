; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_edcca_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_edcca_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, i32, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MT_TX_LINK_CFG = common dso_local global i32 0, align 4
@MT_TX_CFACK_EN = common dso_local global i32 0, align 4
@MT_TXOP_CTRL_CFG = common dso_local global i32 0, align 4
@MT_TXOP_ED_CCA_EN = common dso_local global i32 0, align 4
@AGC = common dso_local global i32 0, align 4
@MT_TXOP_HLDR_ET = common dso_local global i32 0, align 4
@MT_TXOP_HLDR_TX40M_BLK_EN = common dso_local global i32 0, align 4
@MT_ED_CCA_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_edcca_init(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %1
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  store %struct.ieee80211_channel* %18, %struct.ieee80211_channel** %3, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 14, i32 32
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = load i32, i32* @MT_TX_LINK_CFG, align 4
  %28 = load i32, i32* @MT_TX_CFACK_EN, align 4
  %29 = call i32 @mt76_clear(%struct.mt76x02_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %31 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %32 = load i32, i32* @MT_TXOP_ED_CCA_EN, align 4
  %33 = call i32 @mt76_set(%struct.mt76x02_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %35 = load i32, i32* @AGC, align 4
  %36 = call i32 @MT_BBP(i32 %35, i32 2)
  %37 = call i32 @GENMASK(i32 15, i32 0)
  %38 = load i32, i32* %4, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @mt76_rmw(%struct.mt76x02_dev* %34, i32 %36, i32 %37, i32 %41)
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %44 = load i32, i32* @MT_TXOP_HLDR_ET, align 4
  %45 = load i32, i32* @MT_TXOP_HLDR_TX40M_BLK_EN, align 4
  %46 = call i32 @mt76_set(%struct.mt76x02_dev* %43, i32 %44, i32 %45)
  br label %78

47:                                               ; preds = %1
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %49 = load i32, i32* @MT_TX_LINK_CFG, align 4
  %50 = load i32, i32* @MT_TX_CFACK_EN, align 4
  %51 = call i32 @mt76_set(%struct.mt76x02_dev* %48, i32 %49, i32 %50)
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %53 = load i32, i32* @MT_TXOP_CTRL_CFG, align 4
  %54 = load i32, i32* @MT_TXOP_ED_CCA_EN, align 4
  %55 = call i32 @mt76_clear(%struct.mt76x02_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %57 = call i64 @is_mt76x2(%struct.mt76x02_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %61 = load i32, i32* @AGC, align 4
  %62 = call i32 @MT_BBP(i32 %61, i32 2)
  %63 = call i32 @mt76_wr(%struct.mt76x02_dev* %60, i32 %62, i32 28784)
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %65 = load i32, i32* @MT_TXOP_HLDR_ET, align 4
  %66 = load i32, i32* @MT_TXOP_HLDR_TX40M_BLK_EN, align 4
  %67 = call i32 @mt76_set(%struct.mt76x02_dev* %64, i32 %65, i32 %66)
  br label %77

68:                                               ; preds = %47
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %70 = load i32, i32* @AGC, align 4
  %71 = call i32 @MT_BBP(i32 %70, i32 2)
  %72 = call i32 @mt76_wr(%struct.mt76x02_dev* %69, i32 %71, i32 3826788)
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %74 = load i32, i32* @MT_TXOP_HLDR_ET, align 4
  %75 = load i32, i32* @MT_TXOP_HLDR_TX40M_BLK_EN, align 4
  %76 = call i32 @mt76_clear(%struct.mt76x02_dev* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %59
  br label %78

78:                                               ; preds = %77, %13
  %79 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %80 = call i32 @mt76x02_edcca_tx_enable(%struct.mt76x02_dev* %79, i32 1)
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %82 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %84 = load i32, i32* @MT_ED_CCA_TIMER, align 4
  %85 = call i32 @mt76_rr(%struct.mt76x02_dev* %83, i32 %84)
  %86 = call i32 (...) @ktime_get_boottime()
  %87 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  ret void
}

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @is_mt76x2(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_edcca_tx_enable(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @ktime_get_boottime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
