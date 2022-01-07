; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7615_dev* }
%struct.mt7615_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @mt7615_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7615_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.mt7615_dev*, %struct.mt7615_dev** %11, align 8
  store %struct.mt7615_dev* %12, %struct.mt7615_dev** %9, align 8
  %13 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %14 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %24 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mt7615_mcu_set_bss_info(%struct.mt7615_dev* %22, %struct.ieee80211_vif* %23, i32 %26)
  br label %28

28:                                               ; preds = %21, %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mt7615_mcu_set_bss_info(%struct.mt7615_dev* %34, %struct.ieee80211_vif* %35, i32 %38)
  %40 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %42 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mt7615_mcu_wtbl_bmc(%struct.mt7615_dev* %40, %struct.ieee80211_vif* %41, i32 %44)
  %46 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mt7615_mcu_set_sta_rec_bmc(%struct.mt7615_dev* %46, %struct.ieee80211_vif* %47, i32 %50)
  %52 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %54 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mt7615_mcu_set_bcn(%struct.mt7615_dev* %52, %struct.ieee80211_vif* %53, i32 %56)
  br label %58

58:                                               ; preds = %33, %28
  %59 = load %struct.mt7615_dev*, %struct.mt7615_dev** %9, align 8
  %60 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7615_mcu_set_bss_info(%struct.mt7615_dev*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mt7615_mcu_wtbl_bmc(%struct.mt7615_dev*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mt7615_mcu_set_sta_rec_bmc(%struct.mt7615_dev*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mt7615_mcu_set_bcn(%struct.mt7615_dev*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
