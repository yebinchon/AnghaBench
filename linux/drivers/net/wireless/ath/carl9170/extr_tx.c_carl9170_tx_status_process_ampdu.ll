; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_status_process_ampdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_status_process_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.carl9170_sta_info = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.carl9170_sta_tid = type { i64, i32 }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_INJECTED = common dso_local global i32 0, align 4
@CARL9170_TID_STATE_IDLE = common dso_local global i64 0, align 8
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@AR9170_TX_MAC_IMM_BA = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU_NO_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.sk_buff*, %struct.ieee80211_tx_info*)* @carl9170_tx_status_process_ampdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_tx_status_process_ampdu(%struct.ar9170* %0, %struct.sk_buff* %1, %struct.ieee80211_tx_info* %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct._carl9170_tx_superframe*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.carl9170_sta_info*, align 8
  %11 = alloca %struct.carl9170_sta_tid*, align 8
  %12 = alloca i64, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %17, %struct._carl9170_tx_superframe** %7, align 8
  %18 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %7, align 8
  %19 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %8, align 8
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IEEE80211_TX_CTL_INJECTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %3
  br label %221

37:                                               ; preds = %29
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call %struct.ieee80211_sta* @__carl9170_get_tx_sta(%struct.ar9170* %39, %struct.sk_buff* %40)
  store %struct.ieee80211_sta* %41, %struct.ieee80211_sta** %9, align 8
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %43 = icmp ne %struct.ieee80211_sta* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %219

49:                                               ; preds = %37
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %51 = call i64 @get_tid_h(%struct.ieee80211_hdr* %50)
  store i64 %51, i64* %12, align 8
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = bitcast i8* %55 to %struct.carl9170_sta_info*
  store %struct.carl9170_sta_info* %56, %struct.carl9170_sta_info** %10, align 8
  %57 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %58 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.carl9170_sta_tid* @rcu_dereference(i32 %62)
  store %struct.carl9170_sta_tid* %63, %struct.carl9170_sta_tid** %11, align 8
  %64 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %65 = icmp ne %struct.carl9170_sta_tid* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %49
  br label %219

67:                                               ; preds = %49
  %68 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %69 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %68, i32 0, i32 1
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %72 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CARL9170_TID_STATE_IDLE, align 8
  %75 = icmp sge i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %81 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %83 = call i32 @get_seq_h(%struct.ieee80211_hdr* %82)
  %84 = call i32 @carl9170_tx_shift_bm(%struct.ar9170* %80, %struct.carl9170_sta_tid* %81, i32 %83)
  br label %85

85:                                               ; preds = %79, %67
  %86 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %87 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %85
  %95 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %96 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %102 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %108 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %114 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %94, %85
  %120 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %121 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %129 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %145

136:                                              ; preds = %119
  %137 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %138 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %136, %119
  %146 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %147 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %154 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %152, %145
  %160 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %7, align 8
  %161 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @AR9170_TX_MAC_IMM_BA, align 4
  %165 = call i32 @cpu_to_le16(i32 %164)
  %166 = and i32 %163, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %215

168:                                              ; preds = %159
  %169 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %170 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load i64, i64* %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %7, align 8
  %177 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  store i64 %175, i64* %178, align 8
  %179 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %180 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load i64, i64* %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %7, align 8
  %187 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  %189 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %190 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %191 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %195 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %194, i32 0, i32 0
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %168
  %203 = load i32, i32* @IEEE80211_TX_STAT_AMPDU_NO_BACK, align 4
  %204 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %205 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %168
  %209 = load %struct.carl9170_sta_info*, %struct.carl9170_sta_info** %10, align 8
  %210 = getelementptr inbounds %struct.carl9170_sta_info, %struct.carl9170_sta_info* %209, i32 0, i32 0
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = load i64, i64* %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %208, %159
  %216 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %11, align 8
  %217 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %216, i32 0, i32 1
  %218 = call i32 @spin_unlock_bh(i32* %217)
  br label %219

219:                                              ; preds = %215, %66, %48
  %220 = call i32 (...) @rcu_read_unlock()
  br label %221

221:                                              ; preds = %219, %36
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @__carl9170_get_tx_sta(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_tid_h(%struct.ieee80211_hdr*) #1

declare dso_local %struct.carl9170_sta_tid* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @carl9170_tx_shift_bm(%struct.ar9170*, %struct.carl9170_sta_tid*, i32) #1

declare dso_local i32 @get_seq_h(%struct.ieee80211_hdr*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
