; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_sta_rate_tbl_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_sta_rate_tbl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.mt76x02_sta = type { i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_sta_rate_tbl_update(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mt76x02_dev*, align 8
  %8 = alloca %struct.mt76x02_sta*, align 8
  %9 = alloca %struct.ieee80211_sta_rates*, align 8
  %10 = alloca %struct.ieee80211_tx_rate, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %12, align 8
  store %struct.mt76x02_dev* %13, %struct.mt76x02_dev** %7, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mt76x02_sta*
  store %struct.mt76x02_sta* %17, %struct.mt76x02_sta** %8, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ieee80211_sta_rates* @rcu_dereference(i32 %20)
  store %struct.ieee80211_sta_rates* %21, %struct.ieee80211_sta_rates** %9, align 8
  %22 = bitcast %struct.ieee80211_tx_rate* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  %23 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %24 = icmp ne %struct.ieee80211_sta_rates* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %42 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %8, align 8
  %43 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %42, i32 0, i32 0
  %44 = call i32 @mt76x02_mac_wcid_set_rate(%struct.mt76x02_dev* %41, i32* %43, %struct.ieee80211_tx_rate* %10)
  br label %45

45:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.ieee80211_sta_rates* @rcu_dereference(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mt76x02_mac_wcid_set_rate(%struct.mt76x02_dev*, i32*, %struct.ieee80211_tx_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
