; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_get_cid_by_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_get_cid_by_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, %struct.TYPE_3__*, %struct.wil6210_vif** }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wil6210_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.vring_rx_desc = type { i32 }
%struct.ieee80211_hdr_3addr = type { i8* }

@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Short data frame, len = %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Short frame, len = %d\0A\00", align 1
@WIL6210_RX_DESC_MAX_CID = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@wil_sta_unused = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [94 x i8] c"Could not find cid for frame with transmit addr = %pM, iftype = %d, frametype = %d, len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.sk_buff*)* @wil_rx_get_cid_by_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rx_get_cid_by_skb(%struct.wil6210_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vring_rx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil6210_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.vring_rx_desc* @wil_skb_rxdesc(%struct.sk_buff* %15)
  store %struct.vring_rx_desc* %16, %struct.vring_rx_desc** %6, align 8
  %17 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %6, align 8
  %18 = call i32 @wil_rxdesc_mid(%struct.vring_rx_desc* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 2
  %21 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %21, i64 %23
  %25 = load %struct.wil6210_vif*, %struct.wil6210_vif** %24, align 8
  store %struct.wil6210_vif* %25, %struct.wil6210_vif** %8, align 8
  %26 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %6, align 8
  %27 = call i32 @wil_rxdesc_cid(%struct.vring_rx_desc* %26)
  store i32 %27, i32* %9, align 4
  %28 = call i32 (...) @wil_rx_snaplen()
  store i32 %28, i32* %10, align 4
  %29 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %30 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %179

37:                                               ; preds = %2
  %38 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %6, align 8
  %39 = call i32 @wil_rxdesc_ftype(%struct.vring_rx_desc* %38)
  %40 = shl i32 %39, 2
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %37
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ETH_HLEN, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = icmp slt i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err_ratelimited(%struct.wil6210_priv* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %179

67:                                               ; preds = %47
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i8* @wil_skb_get_sa(%struct.sk_buff* %68)
  store i8* %69, i8** %13, align 8
  br label %95

70:                                               ; preds = %37
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %73, 8
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err_ratelimited(%struct.wil6210_priv* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %179

86:                                               ; preds = %70
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = bitcast i8* %90 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %91, %struct.ieee80211_hdr_3addr** %11, align 8
  %92 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %11, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %13, align 8
  br label %95

95:                                               ; preds = %86, %67
  %96 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %97 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @WIL6210_RX_DESC_MAX_CID, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %179

103:                                              ; preds = %95
  %104 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %105 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %112 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %179

119:                                              ; preds = %110, %103
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %153, %119
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %124 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %121
  %128 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %129 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @wil_sta_unused, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %127
  %139 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %140 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = call i64 @ether_addr_equal(i32 %146, i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %9, align 4
  br label %157

152:                                              ; preds = %138, %127
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* @WIL6210_RX_DESC_MAX_CID, align 4
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %12, align 4
  br label %121

157:                                              ; preds = %150, %121
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %160 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sge i32 %158, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %167 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err_ratelimited(%struct.wil6210_priv* %164, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i8* %165, i64 %169, i32 %170, i64 %173)
  %175 = load i32, i32* @ENOENT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %163, %157
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %117, %101, %78, %59, %35
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.vring_rx_desc* @wil_skb_rxdesc(%struct.sk_buff*) #1

declare dso_local i32 @wil_rxdesc_mid(%struct.vring_rx_desc*) #1

declare dso_local i32 @wil_rxdesc_cid(%struct.vring_rx_desc*) #1

declare dso_local i32 @wil_rx_snaplen(...) #1

declare dso_local i32 @wil_rxdesc_ftype(%struct.vring_rx_desc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_err_ratelimited(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i8* @wil_skb_get_sa(%struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
