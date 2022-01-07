; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_rx_ext_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_rx_ext_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mt7615_mcu_rxd = type { i32 }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@mt7615_mcu_csa_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_dev*, %struct.sk_buff*)* @mt7615_mcu_rx_ext_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mcu_rx_ext_event(%struct.mt7615_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mt7615_mcu_rxd*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.mt7615_mcu_rxd*
  store %struct.mt7615_mcu_rxd* %9, %struct.mt7615_mcu_rxd** %5, align 8
  %10 = load %struct.mt7615_mcu_rxd*, %struct.mt7615_mcu_rxd** %5, align 8
  %11 = getelementptr inbounds %struct.mt7615_mcu_rxd, %struct.mt7615_mcu_rxd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %32 [
    i32 128, label %13
    i32 129, label %23
  ]

13:                                               ; preds = %2
  %14 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ieee80211_radar_detected(i32 %17)
  %19 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %29 = load i32, i32* @mt7615_mcu_csa_finish, align 4
  %30 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %31 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %27, i32 %28, i32 %29, %struct.mt7615_dev* %30)
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %23, %13
  ret void
}

declare dso_local i32 @ieee80211_radar_detected(i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.mt7615_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
