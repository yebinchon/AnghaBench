; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_add_buffered_bc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_add_buffered_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.beacon_bc_data = type { %struct.sk_buff**, i32, %struct.mt76x02_dev* }
%struct.sk_buff = type { i32 }
%struct.mt76x02_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mt76x02_vif = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_vif* }

@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @mt76x02_add_buffered_bc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_add_buffered_bc(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.beacon_bc_data*, align 8
  %8 = alloca %struct.mt76x02_dev*, align 8
  %9 = alloca %struct.mt76x02_vif*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.beacon_bc_data*
  store %struct.beacon_bc_data* %13, %struct.beacon_bc_data** %7, align 8
  %14 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %7, align 8
  %15 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %14, i32 0, i32 2
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %15, align 8
  store %struct.mt76x02_dev* %16, %struct.mt76x02_dev** %8, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.mt76x02_vif*
  store %struct.mt76x02_vif* %20, %struct.mt76x02_vif** %9, align 8
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %8, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %9, align 8
  %26 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @BIT(i64 %27)
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %66

32:                                               ; preds = %3
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %8, align 8
  %34 = call i32 @mt76_hw(%struct.mt76x02_dev* %33)
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = call %struct.sk_buff* @ieee80211_get_buffered_bc(i32 %34, %struct.ieee80211_vif* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %11, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %66

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %41)
  store %struct.ieee80211_tx_info* %42, %struct.ieee80211_tx_info** %10, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store %struct.ieee80211_vif* %43, %struct.ieee80211_vif** %46, align 8
  %47 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = call i32 @mt76_skb_set_moredata(%struct.sk_buff* %52, i32 1)
  %54 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %7, align 8
  %55 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %54, i32 0, i32 1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = call i32 @__skb_queue_tail(i32* %55, %struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %7, align 8
  %60 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %59, i32 0, i32 0
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %60, align 8
  %62 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %9, align 8
  %63 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %61, i64 %64
  store %struct.sk_buff* %58, %struct.sk_buff** %65, align 8
  br label %66

66:                                               ; preds = %40, %39, %31
  ret void
}

declare dso_local i32 @BIT(i64) #1

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @mt76_skb_set_moredata(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
