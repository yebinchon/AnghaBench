; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_beacon_physet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_beacon_physet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_TX_ANT0 = common dso_local global i32 0, align 4
@AR9170_TX_PHY_TXCHAIN_2 = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_TX_ANT1 = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_PWR_CTRL = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_TPC = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_CHAIN_MASK = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_HT_EN = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT2_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_BWC_40M_SHARED = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT2_BW40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT1_BWC_40M_DUP = common dso_local global i32 0, align 4
@AR9170_MAC_BCN_HT2_LEN = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i32 0, align 4
@AR9170_TX_PHY_RATE_CCK_11M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.sk_buff*, i32*, i32*)* @carl9170_tx_beacon_physet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_tx_beacon_physet(%struct.ar9170* %0, %struct.sk_buff* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_tx_rate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %9, align 8
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %18, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %19, i64 0
  store %struct.ieee80211_tx_rate* %20, %struct.ieee80211_tx_rate** %10, align 8
  %21 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %24, i64 0
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %36 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @carl9170_tx_rate_tpc_chains(%struct.ar9170* %34, %struct.ieee80211_tx_info* %35, %struct.ieee80211_tx_rate* %36, i32* %37, i32* %11, i32* %12)
  %39 = load i32, i32* @AR9170_MAC_BCN_HT1_TX_ANT0, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @AR9170_TX_PHY_TXCHAIN_2, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load i32, i32* @AR9170_MAC_BCN_HT1_TX_ANT1, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %4
  %50 = load i32, i32* @AR9170_MAC_BCN_HT1_PWR_CTRL, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SET_VAL(i32 %50, i32 %52, i32 7)
  %54 = load i32, i32* @AR9170_MAC_BCN_HT1_TPC, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @SET_VAL(i32 %54, i32 %56, i32 %57)
  %59 = load i32, i32* @AR9170_MAC_BCN_HT1_CHAIN_MASK, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @SET_VAL(i32 %59, i32 %61, i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %125

66:                                               ; preds = %49
  %67 = load i32, i32* @AR9170_MAC_BCN_HT1_HT_EN, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load i32, i32* @AR9170_MAC_BCN_HT2_SGI, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %66
  %83 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %84 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load i32, i32* @AR9170_MAC_BCN_HT1_BWC_40M_SHARED, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @AR9170_MAC_BCN_HT2_BW40, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  br label %115

98:                                               ; preds = %82
  %99 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %100 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IEEE80211_TX_RC_DUP_DATA, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load i32, i32* @AR9170_MAC_BCN_HT1_BWC_40M_DUP, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @AR9170_MAC_BCN_HT2_BW40, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %105, %98
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* @AR9170_MAC_BCN_HT2_LEN, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FCS_LEN, align 4
  %123 = add nsw i32 %121, %122
  %124 = call i32 @SET_VAL(i32 %116, i32 %118, i32 %123)
  br label %153

125:                                              ; preds = %49
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AR9170_TX_PHY_RATE_CCK_11M, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @FCS_LEN, align 4
  %135 = add nsw i32 %133, %134
  %136 = shl i32 %135, 19
  %137 = add nsw i32 %136, 1024
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  br label %152

141:                                              ; preds = %125
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @FCS_LEN, align 4
  %146 = add nsw i32 %144, %145
  %147 = shl i32 %146, 16
  %148 = add nsw i32 %147, 16
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %141, %130
  br label %153

153:                                              ; preds = %152, %115
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @carl9170_tx_rate_tpc_chains(%struct.ar9170*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32*, i32*, i32*) #1

declare dso_local i32 @SET_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
