; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_fetch_10_2_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_fetch_10_2_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.ath10k_per_peer_tx_stats }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.ath10k_pktlog_hdr = type { i64, i32 }
%struct.ath10k_10_2_peer_tx_stats = type { i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.ieee80211_sta = type { i32 }
%struct.ath10k_peer = type { %struct.ieee80211_sta* }

@ATH_PKTLOG_TYPE_TX_STAT = common dso_local global i64 0, align 8
@ATH10K_10_2_TX_STATS_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Invalid peer id %d in peer stats buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i32*)* @ath10k_fetch_10_2_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_fetch_10_2_tx_stats(%struct.ath10k* %0, i32* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath10k_pktlog_hdr*, align 8
  %6 = alloca %struct.ath10k_per_peer_tx_stats*, align 8
  %7 = alloca %struct.ath10k_10_2_peer_tx_stats*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ath10k_peer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.ath10k_pktlog_hdr*
  store %struct.ath10k_pktlog_hdr* %14, %struct.ath10k_pktlog_hdr** %5, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 1
  store %struct.ath10k_per_peer_tx_stats* %16, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %17 = load %struct.ath10k_pktlog_hdr*, %struct.ath10k_pktlog_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k_pktlog_hdr, %struct.ath10k_pktlog_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @__le16_to_cpu(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @ATH_PKTLOG_TYPE_TX_STAT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %155

26:                                               ; preds = %2
  %27 = load %struct.ath10k_pktlog_hdr*, %struct.ath10k_pktlog_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.ath10k_pktlog_hdr, %struct.ath10k_pktlog_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATH10K_10_2_TX_STATS_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = inttoptr i64 %31 to %struct.ath10k_10_2_peer_tx_stats*
  store %struct.ath10k_10_2_peer_tx_stats* %32, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %33 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %34 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %155

38:                                               ; preds = %26
  %39 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %40 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = call i32 (...) @rcu_read_lock()
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %46, i64 %47)
  store %struct.ath10k_peer* %48, %struct.ath10k_peer** %9, align 8
  %49 = load %struct.ath10k_peer*, %struct.ath10k_peer** %9, align 8
  %50 = icmp ne %struct.ath10k_peer* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.ath10k_peer*, %struct.ath10k_peer** %9, align 8
  %53 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %52, i32 0, i32 0
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %53, align 8
  %55 = icmp ne %struct.ieee80211_sta* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51, %38
  %57 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @ath10k_warn(%struct.ath10k* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %150

60:                                               ; preds = %51
  %61 = load %struct.ath10k_peer*, %struct.ath10k_peer** %9, align 8
  %62 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %62, align 8
  store %struct.ieee80211_sta* %63, %struct.ieee80211_sta** %8, align 8
  store i64 0, i64* %12, align 8
  br label %64

64:                                               ; preds = %142, %60
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %67 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %145

70:                                               ; preds = %64
  %71 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %72 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %71, i32 0, i32 9
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @__le16_to_cpu(i32 %76)
  %78 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %79 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %81 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %80, i32 0, i32 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @__le16_to_cpu(i32 %85)
  %87 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %88 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %90 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @__le16_to_cpu(i32 %94)
  %96 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %97 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %99 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %105 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %107 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %113 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %115 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %121 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %123 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %129 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ath10k_10_2_peer_tx_stats*, %struct.ath10k_10_2_peer_tx_stats** %7, align 8
  %131 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, %struct.ath10k_10_2_peer_tx_stats* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %137 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %139 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %140 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %141 = call i32 @ath10k_update_per_peer_tx_stats(%struct.ath10k* %138, %struct.ieee80211_sta* %139, %struct.ath10k_per_peer_tx_stats* %140)
  br label %142

142:                                              ; preds = %70
  %143 = load i64, i64* %12, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %12, align 8
  br label %64

145:                                              ; preds = %64
  %146 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %147 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_bh(i32* %147)
  %149 = call i32 (...) @rcu_read_unlock()
  br label %155

150:                                              ; preds = %56
  %151 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %152 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %151, i32 0, i32 0
  %153 = call i32 @spin_unlock_bh(i32* %152)
  %154 = call i32 (...) @rcu_read_unlock()
  br label %155

155:                                              ; preds = %150, %145, %37, %25
  ret void
}

declare dso_local i8* @__le16_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @ath10k_update_per_peer_tx_stats(%struct.ath10k*, %struct.ieee80211_sta*, %struct.ath10k_per_peer_tx_stats*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
