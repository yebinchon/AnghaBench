; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_update_beacon_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_update_beacon_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_vif = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_update_beacon_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.mt76x02_dev*, align 8
  %8 = alloca %struct.mt76x02_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mt76x02_dev*
  store %struct.mt76x02_dev* %11, %struct.mt76x02_dev** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mt76x02_vif*
  store %struct.mt76x02_vif* %15, %struct.mt76x02_vif** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %17 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %8, align 8
  %21 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %42

27:                                               ; preds = %3
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %29 = call i32 @mt76_hw(%struct.mt76x02_dev* %28)
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %29, %struct.ieee80211_vif* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %37 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %8, align 8
  %38 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = call i32 @mt76x02_mac_set_beacon(%struct.mt76x02_dev* %36, i32 %39, %struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %35, %34, %26
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_mac_set_beacon(%struct.mt76x02_dev*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
