; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c___ath10k_htt_tx_txq_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c___ath10k_htt_tx_txq_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64**, i32** }
%struct.ieee80211_txq = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.ath10k_sta = type { i32 }
%struct.ath10k_vif = type { i32 }

@HTT_TX_MODE_SWITCH_PUSH_PULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"refusing to update txq for peer_id %hu tid %hhu due to out of bounds\0A\00", align 1
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"htt tx txq state update peer_id %hu tid %hhu count %hhu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_txq*)* @__ath10k_htt_tx_txq_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ath10k_htt_tx_txq_recalc(%struct.ieee80211_hw* %0, %struct.ieee80211_txq* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_txq*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_sta*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_txq* %1, %struct.ieee80211_txq** %4, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %5, align 8
  %18 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %24, %struct.ath10k_vif** %7, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = call i32 @lockdep_assert_held(i32* %27)
  %29 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %164

36:                                               ; preds = %2
  %37 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HTT_TX_MODE_SWITCH_PUSH_PULL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %164

45:                                               ; preds = %36
  %46 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = bitcast i8* %56 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %57, %struct.ath10k_sta** %6, align 8
  %58 = load %struct.ath10k_sta*, %struct.ath10k_sta** %6, align 8
  %59 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  br label %65

61:                                               ; preds = %45
  %62 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %63 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %61, %50
  %66 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  %69 = load i32, i32* %12, align 4
  %70 = srem i32 %69, 32
  %71 = call i32 @BIT(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sdiv i32 %72, 32
  store i32 %73, i32* %10, align 4
  %74 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %4, align 8
  %75 = call i32 @ieee80211_txq_get_depth(%struct.ieee80211_txq* %74, i64* %8, i64* %9)
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @ath10k_htt_tx_txq_calc_size(i64 %76)
  store i64 %77, i64* %14, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %80 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %78, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %65
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %91 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp uge i64 %89, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88, %65
  %100 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i64, i64* %13, align 8
  %103 = call i32 @ath10k_warn(%struct.ath10k* %100, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %101, i64 %102)
  br label %164

104:                                              ; preds = %88
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %107 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64**, i64*** %111, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds i64*, i64** %112, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %105, i64* %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %122 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32**, i32*** %126, align 8
  %128 = load i64, i64* %13, align 8
  %129 = getelementptr inbounds i32*, i32** %127, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, %120
  store i32 %135, i32* %133, align 4
  %136 = load i64, i64* %14, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %104
  %139 = load i32, i32* %11, align 4
  br label %141

140:                                              ; preds = %104
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  %143 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %144 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32**, i32*** %148, align 8
  %150 = load i64, i64* %13, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %142
  store i32 %157, i32* %155, align 4
  %158 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %159 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %14, align 8
  %163 = call i32 @ath10k_dbg(%struct.ath10k* %158, i32 %159, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %160, i64 %161, i64 %162)
  br label %164

164:                                              ; preds = %141, %99, %44, %35
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_txq_get_depth(%struct.ieee80211_txq*, i64*, i64*) #1

declare dso_local i64 @ath10k_htt_tx_txq_calc_size(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
