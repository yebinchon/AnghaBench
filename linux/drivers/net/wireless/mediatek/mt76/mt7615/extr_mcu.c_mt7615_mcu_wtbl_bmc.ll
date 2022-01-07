; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_wtbl_bmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_wtbl_bmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.mt7615_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wtbl_req_hdr = type { i32, i32 }

@WTBL_RESET_AND_SET = common dso_local global i32 0, align 4
@MCU_EXT_CMD_WTBL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_mcu_wtbl_bmc(%struct.mt7615_dev* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7615_dev*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt7615_vif*, align 8
  %9 = alloca %struct.wtbl_req_hdr, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %13, %struct.mt7615_vif** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %9, i32 0, i32 0
  %18 = load i32, i32* @WTBL_RESET_AND_SET, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %9, i32 0, i32 1
  %20 = load %struct.mt7615_vif*, %struct.mt7615_vif** %8, align 8
  %21 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 4
  %25 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %25, i32 0, i32 0
  %27 = load i32, i32* @MCU_EXT_CMD_WTBL_UPDATE, align 4
  %28 = call i32 @__mt76_mcu_send_msg(i32* %26, i32 %27, %struct.wtbl_req_hdr* %9, i32 8, i32 1)
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %31 = load %struct.mt7615_vif*, %struct.mt7615_vif** %8, align 8
  %32 = call i32 @mt7615_mcu_add_wtbl_bmc(%struct.mt7615_dev* %30, %struct.mt7615_vif* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @__mt76_mcu_send_msg(i32*, i32, %struct.wtbl_req_hdr*, i32, i32) #1

declare dso_local i32 @mt7615_mcu_add_wtbl_bmc(%struct.mt7615_dev*, %struct.mt7615_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
