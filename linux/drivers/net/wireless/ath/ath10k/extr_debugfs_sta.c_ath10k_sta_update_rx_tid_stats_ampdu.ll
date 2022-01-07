; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_sta_update_rx_tid_stats_ampdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_sta_update_rx_tid_stats_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }
%struct.htt_rx_indication_mpdu_range = type { i32 }
%struct.ath10k_sta = type { i32* }
%struct.ath10k_peer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_NUM_TIDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_sta_update_rx_tid_stats_ampdu(%struct.ath10k* %0, i32 %1, i64 %2, %struct.htt_rx_indication_mpdu_range* %3, i32 %4) #0 {
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.htt_rx_indication_mpdu_range*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath10k_sta*, align 8
  %12 = alloca %struct.ath10k_peer*, align 8
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.htt_rx_indication_mpdu_range* %3, %struct.htt_rx_indication_mpdu_range** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %5
  %18 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @BIT(i64 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17, %5
  br label %76

26:                                               ; preds = %17
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %31, i32 %32)
  store %struct.ath10k_peer* %33, %struct.ath10k_peer** %12, align 8
  %34 = load %struct.ath10k_peer*, %struct.ath10k_peer** %12, align 8
  %35 = icmp ne %struct.ath10k_peer* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.ath10k_peer*, %struct.ath10k_peer** %12, align 8
  %38 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %26
  br label %71

42:                                               ; preds = %36
  %43 = load %struct.ath10k_peer*, %struct.ath10k_peer** %12, align 8
  %44 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %48, %struct.ath10k_sta** %11, align 8
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %67, %42
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %55 = load %struct.ath10k_sta*, %struct.ath10k_sta** %11, align 8
  %56 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load %struct.htt_rx_indication_mpdu_range*, %struct.htt_rx_indication_mpdu_range** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.htt_rx_indication_mpdu_range, %struct.htt_rx_indication_mpdu_range* %60, i64 %62
  %64 = getelementptr inbounds %struct.htt_rx_indication_mpdu_range, %struct.htt_rx_indication_mpdu_range* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ath10k_rx_stats_update_ampdu_subfrm(%struct.ath10k* %54, i32* %59, i32 %65)
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %49

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %41
  %72 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %73 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = call i32 (...) @rcu_read_unlock()
  br label %76

76:                                               ; preds = %71, %25
  ret void
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_rx_stats_update_ampdu_subfrm(%struct.ath10k*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
