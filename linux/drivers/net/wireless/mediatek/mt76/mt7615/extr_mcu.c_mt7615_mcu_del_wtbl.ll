; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_del_wtbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_del_wtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.mt7615_sta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wtbl_req_hdr = type { i32, i32 }

@WTBL_RESET_AND_SET = common dso_local global i32 0, align 4
@MCU_EXT_CMD_WTBL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_mcu_del_wtbl(%struct.mt7615_dev* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.mt7615_sta*, align 8
  %6 = alloca %struct.wtbl_req_hdr, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %7 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.mt7615_sta*
  store %struct.mt7615_sta* %10, %struct.mt7615_sta** %5, align 8
  %11 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %6, i32 0, i32 0
  %12 = load i32, i32* @WTBL_RESET_AND_SET, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %6, i32 0, i32 1
  %14 = load %struct.mt7615_sta*, %struct.mt7615_sta** %5, align 8
  %15 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @MCU_EXT_CMD_WTBL_UPDATE, align 4
  %21 = call i32 @__mt76_mcu_send_msg(i32* %19, i32 %20, %struct.wtbl_req_hdr* %6, i32 8, i32 1)
  ret i32 %21
}

declare dso_local i32 @__mt76_mcu_send_msg(i32*, i32, %struct.wtbl_req_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
