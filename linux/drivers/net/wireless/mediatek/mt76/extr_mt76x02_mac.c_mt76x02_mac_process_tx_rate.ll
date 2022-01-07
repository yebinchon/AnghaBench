; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_process_tx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_process_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_rate = type { i32, i32, i32 }

@MT_RXWI_RATE_INDEX = common dso_local global i32 0, align 4
@MT_RXWI_RATE_PHY = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MT_RXWI_RATE_BW = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@MT_RXWI_RATE_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_rate*, i32, i32)* @mt76x02_mac_process_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_mac_process_tx_rate(%struct.ieee80211_tx_rate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_tx_rate* %0, %struct.ieee80211_tx_rate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MT_RXWI_RATE_INDEX, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @FIELD_GET(i32 %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %14, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @MT_RXWI_RATE_PHY, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @FIELD_GET(i32 %18, i32 %19)
  switch i32 %20, label %66 [
    i32 129, label %21
    i32 132, label %32
    i32 130, label %42
    i32 131, label %48
    i32 128, label %57
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %101

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 8
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 8
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %101

42:                                               ; preds = %3
  %43 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %44 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %3, %42
  %49 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %50 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %69

57:                                               ; preds = %3
  %58 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %59 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %101

69:                                               ; preds = %57, %48
  %70 = load i32, i32* @MT_RXWI_RATE_BW, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @FIELD_GET(i32 %70, i32 %71)
  switch i32 %72, label %86 [
    i32 135, label %73
    i32 134, label %74
    i32 133, label %80
  ]

73:                                               ; preds = %69
  br label %89

74:                                               ; preds = %69
  %75 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %76 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %89

80:                                               ; preds = %69
  %81 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %82 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %89

86:                                               ; preds = %69
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %101

89:                                               ; preds = %80, %74, %73
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @MT_RXWI_RATE_SGI, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %96 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %86, %66, %38, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
