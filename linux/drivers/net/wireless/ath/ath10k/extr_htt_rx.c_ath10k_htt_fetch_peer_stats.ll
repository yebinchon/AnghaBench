; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_fetch_peer_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_fetch_peer_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.ath10k_per_peer_tx_stats }
%struct.ath10k_per_peer_tx_stats = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.sk_buff = type { i32, i64 }
%struct.htt_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.htt_per_peer_tx_stats_ind = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ath10k_peer = type { %struct.ieee80211_sta* }

@.str = private unnamed_addr constant [34 x i8] c"Invalid peer stats buf length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid peer id %d peer stats buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_htt_fetch_peer_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_fetch_peer_stats(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htt_resp*, align 8
  %6 = alloca %struct.ath10k_per_peer_tx_stats*, align 8
  %7 = alloca %struct.htt_per_peer_tx_stats_ind*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ath10k_peer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.htt_resp*
  store %struct.htt_resp* %17, %struct.htt_resp** %5, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  store %struct.ath10k_per_peer_tx_stats* %19, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %20 = load %struct.htt_resp*, %struct.htt_resp** %5, align 8
  %21 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %13, align 4
  %24 = load %struct.htt_resp*, %struct.htt_resp** %5, align 8
  %25 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add i64 4, %38
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ath10k_warn(%struct.ath10k* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %160

47:                                               ; preds = %2
  %48 = load %struct.htt_resp*, %struct.htt_resp** %5, align 8
  %49 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.htt_per_peer_tx_stats_ind*
  store %struct.htt_per_peer_tx_stats_ind* %52, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %53 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %54 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @__le16_to_cpu(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = call i32 (...) @rcu_read_lock()
  %59 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %60 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %62, i32 %63)
  store %struct.ath10k_peer* %64, %struct.ath10k_peer** %9, align 8
  %65 = load %struct.ath10k_peer*, %struct.ath10k_peer** %9, align 8
  %66 = icmp ne %struct.ath10k_peer* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load %struct.ath10k_peer*, %struct.ath10k_peer** %9, align 8
  %69 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %68, i32 0, i32 0
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %69, align 8
  %71 = icmp ne %struct.ieee80211_sta* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %67, %47
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ath10k_warn(%struct.ath10k* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %155

76:                                               ; preds = %67
  %77 = load %struct.ath10k_peer*, %struct.ath10k_peer** %9, align 8
  %78 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %77, i32 0, i32 0
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %78, align 8
  store %struct.ieee80211_sta* %79, %struct.ieee80211_sta** %8, align 8
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %151, %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %154

84:                                               ; preds = %80
  %85 = load %struct.htt_resp*, %struct.htt_resp** %5, align 8
  %86 = getelementptr inbounds %struct.htt_resp, %struct.htt_resp* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %88, %92
  %94 = inttoptr i64 %93 to %struct.htt_per_peer_tx_stats_ind*
  store %struct.htt_per_peer_tx_stats_ind* %94, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %95 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %96 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @__le32_to_cpu(i32 %97)
  %99 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %100 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %99, i32 0, i32 8
  store i8* %98, i8** %100, align 8
  %101 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %102 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @__le32_to_cpu(i32 %103)
  %105 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %106 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %108 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @__le32_to_cpu(i32 %109)
  %111 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %112 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %114 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %117 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %119 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %122 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %124 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @__le16_to_cpu(i32 %125)
  %127 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %128 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %130 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @__le16_to_cpu(i32 %131)
  %133 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %134 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %136 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @__le16_to_cpu(i32 %137)
  %139 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %140 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.htt_per_peer_tx_stats_ind*, %struct.htt_per_peer_tx_stats_ind** %7, align 8
  %142 = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, %struct.htt_per_peer_tx_stats_ind* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @__le16_to_cpu(i32 %143)
  %145 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %146 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, %struct.ath10k_per_peer_tx_stats* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %148 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %149 = load %struct.ath10k_per_peer_tx_stats*, %struct.ath10k_per_peer_tx_stats** %6, align 8
  %150 = call i32 @ath10k_update_per_peer_tx_stats(%struct.ath10k* %147, %struct.ieee80211_sta* %148, %struct.ath10k_per_peer_tx_stats* %149)
  br label %151

151:                                              ; preds = %84
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %80

154:                                              ; preds = %80
  br label %155

155:                                              ; preds = %154, %72
  %156 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %157 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %156, i32 0, i32 0
  %158 = call i32 @spin_unlock_bh(i32* %157)
  %159 = call i32 (...) @rcu_read_unlock()
  br label %160

160:                                              ; preds = %155, %41
  ret void
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i32) #1

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_update_per_peer_tx_stats(%struct.ath10k*, %struct.ieee80211_sta*, %struct.ath10k_per_peer_tx_stats*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
