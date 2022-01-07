; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_check_tx_aggr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_check_tx_aggr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ath9k_htc_sta = type { i32* }

@ETH_P_PAE = common dso_local global i32 0, align 4
@AGGR_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.sk_buff*)* @ath9k_htc_check_tx_aggr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_check_tx_aggr(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath9k_htc_sta*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %8, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %21, i32 %24)
  store %struct.ieee80211_sta* %25, %struct.ieee80211_sta** %7, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %27 = icmp ne %struct.ieee80211_sta* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = call i32 (...) @rcu_read_unlock()
  br label %90

30:                                               ; preds = %3
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %32 = icmp ne %struct.ieee80211_sta* %31, null
  br i1 %32, label %33, label %88

33:                                               ; preds = %30
  %34 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i64 @conf_is_ht(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @ETH_P_PAE, align 4
  %45 = call i64 @cpu_to_be16(i32 %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %88, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @ieee80211_is_data_qos(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %47
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %53 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 15
  store i32 %57, i32* %11, align 4
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %61, %struct.ath9k_htc_sta** %12, align 8
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %63 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @__ath9k_htc_check_tx_aggr(%struct.ath9k_htc_priv* %62, %struct.ath9k_htc_sta* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %51
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta* %68, i32 %69, i32 0)
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %72 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_bh(i32* %73)
  %75 = load i32, i32* @AGGR_PROGRESS, align 4
  %76 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %12, align 8
  %77 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %83 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_bh(i32* %84)
  br label %86

86:                                               ; preds = %67, %51
  br label %87

87:                                               ; preds = %86, %47
  br label %88

88:                                               ; preds = %87, %40, %33, %30
  %89 = call i32 (...) @rcu_read_unlock()
  br label %90

90:                                               ; preds = %88, %28
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @conf_is_ht(i32*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @__ath9k_htc_check_tx_aggr(%struct.ath9k_htc_priv*, %struct.ath9k_htc_sta*, i32) #1

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
