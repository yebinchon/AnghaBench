; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_del_wtbl_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_del_wtbl_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.wtbl_req_hdr = type { i32 }

@WTBL_RESET_ALL = common dso_local global i32 0, align 4
@MCU_EXT_CMD_WTBL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_mcu_del_wtbl_all(%struct.mt7615_dev* %0) #0 {
  %2 = alloca %struct.mt7615_dev*, align 8
  %3 = alloca %struct.wtbl_req_hdr, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %2, align 8
  %4 = getelementptr inbounds %struct.wtbl_req_hdr, %struct.wtbl_req_hdr* %3, i32 0, i32 0
  %5 = load i32, i32* @WTBL_RESET_ALL, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.mt7615_dev*, %struct.mt7615_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %6, i32 0, i32 0
  %8 = load i32, i32* @MCU_EXT_CMD_WTBL_UPDATE, align 4
  %9 = call i32 @__mt76_mcu_send_msg(i32* %7, i32 %8, %struct.wtbl_req_hdr* %3, i32 4, i32 1)
  ret i32 %9
}

declare dso_local i32 @__mt76_mcu_send_msg(i32*, i32, %struct.wtbl_req_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
