; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug_sta.c_ath_debug_rate_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug_sta.c_ath_debug_rate_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ath_rx_status = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_rx_status = type { i64, i64, i32 }
%struct.ath_rx_rate_stats = type { %struct.TYPE_9__*, %struct.TYPE_6__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ath_node = type { %struct.ath_rx_rate_stats }

@RATE_INFO_BW_40 = common dso_local global i64 0, align 8
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_debug_rate_stats(%struct.ath_softc* %0, %struct.ath_rx_status* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_rx_status*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca %struct.ath_rx_rate_stats*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.ath_node*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %7, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  %19 = load %struct.ath_hw*, %struct.ath_hw** %18, align 8
  store %struct.ath_hw* %19, %struct.ath_hw** %8, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ieee80211_is_data(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %199

26:                                               ; preds = %3
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %30, i32 %33, i32* null)
  store %struct.ieee80211_sta* %34, %struct.ieee80211_sta** %11, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %36 = icmp ne %struct.ieee80211_sta* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %197

38:                                               ; preds = %26
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.ath_node*
  store %struct.ath_node* %42, %struct.ath_node** %12, align 8
  %43 = load %struct.ath_node*, %struct.ath_node** %12, align 8
  %44 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %43, i32 0, i32 0
  store %struct.ath_rx_rate_stats* %44, %struct.ath_rx_rate_stats** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %45)
  store %struct.ieee80211_rx_status* %46, %struct.ieee80211_rx_status** %9, align 8
  %47 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %48 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_HT_RATE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %120

52:                                               ; preds = %38
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %57 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = call i64 @ARRAY_SIZE(%struct.TYPE_10__* %58)
  %60 = icmp uge i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %197

62:                                               ; preds = %52
  %63 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RATE_INFO_BW_40, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %70 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %90

79:                                               ; preds = %62
  %80 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %81 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %80, i32 0, i32 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %79, %68
  %91 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %99 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %98, i32 0, i32 2
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %102 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %119

108:                                              ; preds = %90
  %109 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %110 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %108, %97
  br label %197

120:                                              ; preds = %38
  %121 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %122 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @IS_CCK_RATE(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %120
  %127 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %128 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %135 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %155

144:                                              ; preds = %126
  %145 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %146 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %149 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %144, %133
  br label %197

156:                                              ; preds = %120
  %157 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %158 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @IS_OFDM_RATE(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %196

162:                                              ; preds = %156
  %163 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %164 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %162
  %173 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %174 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %177 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %178, 4
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %195

184:                                              ; preds = %162
  %185 = load %struct.ath_rx_rate_stats*, %struct.ath_rx_rate_stats** %10, align 8
  %186 = getelementptr inbounds %struct.ath_rx_rate_stats, %struct.ath_rx_rate_stats* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %189 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %184, %172
  br label %196

196:                                              ; preds = %195, %156
  br label %197

197:                                              ; preds = %196, %155, %119, %61, %37
  %198 = call i32 (...) @rcu_read_unlock()
  br label %199

199:                                              ; preds = %197, %25
  ret void
}

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @IS_HT_RATE(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_CCK_RATE(i32) #1

declare dso_local i64 @IS_OFDM_RATE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
