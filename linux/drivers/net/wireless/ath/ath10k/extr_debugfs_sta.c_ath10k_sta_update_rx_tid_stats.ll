; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_sta_update_rx_tid_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_sta_update_rx_tid_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ath10k_sta = type { %struct.ath10k_sta_tid_stats* }
%struct.ath10k_sta_tid_stats = type { i64, i64, i64, i64, i64*, i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@IEEE80211_NUM_TIDS = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8
@ATH10K_PKT_RX_ERR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_sta_update_rx_tid_stats(%struct.ath10k* %0, i64* %1, i64 %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ieee80211_sta*, align 8
  %18 = alloca %struct.ath10k_sta*, align 8
  %19 = alloca %struct.ieee80211_hdr*, align 8
  %20 = alloca %struct.ath10k_sta_tid_stats*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %23 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  store i64 %23, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %24 = load i64*, i64** %10, align 8
  %25 = bitcast i64* %24 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %25, %struct.ieee80211_hdr** %19, align 8
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ieee80211_is_data(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %8
  store i32 1, i32* %22, align 4
  br label %32

32:                                               ; preds = %31, %8
  %33 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ieee80211_is_data_qos(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %40 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %39)
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %21, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %46 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %21, align 8
  %49 = call i32 @BIT(i64 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %22, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %44
  br label %133

56:                                               ; preds = %52
  %57 = call i32 (...) @rcu_read_lock()
  %58 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %59 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %60, i32 %63, i32* null)
  store %struct.ieee80211_sta* %64, %struct.ieee80211_sta** %17, align 8
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %66 = icmp ne %struct.ieee80211_sta* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  br label %131

68:                                               ; preds = %56
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %17, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %72, %struct.ath10k_sta** %18, align 8
  %73 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 1
  %75 = call i32 @spin_lock_bh(i32* %74)
  %76 = load %struct.ath10k_sta*, %struct.ath10k_sta** %18, align 8
  %77 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %76, i32 0, i32 0
  %78 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %77, align 8
  %79 = load i64, i64* %21, align 8
  %80 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %78, i64 %79
  store %struct.ath10k_sta_tid_stats* %80, %struct.ath10k_sta_tid_stats** %20, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %20, align 8
  %83 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %20, align 8
  %88 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %20, align 8
  %93 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %20, align 8
  %98 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @ATH10K_PKT_RX_ERR_MAX, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %68
  %105 = load i64, i64* %16, align 8
  %106 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %20, align 8
  %107 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %106, i32 0, i32 4
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %105
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %104, %68
  %115 = load i64, i64* %16, align 8
  %116 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %20, align 8
  %117 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %121 = load %struct.ath10k_sta*, %struct.ath10k_sta** %18, align 8
  %122 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %121, i32 0, i32 0
  %123 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %122, align 8
  %124 = load i64, i64* %21, align 8
  %125 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %123, i64 %124
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @ath10k_rx_stats_update_amsdu_subfrm(%struct.ath10k* %120, %struct.ath10k_sta_tid_stats* %125, i64 %126)
  %128 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %129 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock_bh(i32* %129)
  br label %131

131:                                              ; preds = %114, %67
  %132 = call i32 (...) @rcu_read_unlock()
  br label %133

133:                                              ; preds = %131, %55
  ret void
}

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_rx_stats_update_amsdu_subfrm(%struct.ath10k*, %struct.ath10k_sta_tid_stats*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
