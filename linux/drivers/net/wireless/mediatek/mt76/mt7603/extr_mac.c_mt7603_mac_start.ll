; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_ARB_SCR = common dso_local global i32 0, align 4
@MT_ARB_SCR_TX_DISABLE = common dso_local global i32 0, align 4
@MT_ARB_SCR_RX_DISABLE = common dso_local global i32 0, align 4
@MT_WF_ARB_TX_START_0 = common dso_local global i32 0, align 4
@MT_WF_ARB_RQCR = common dso_local global i32 0, align 4
@MT_WF_ARB_RQCR_RX_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_mac_start(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %3 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %4 = load i32, i32* @MT_ARB_SCR, align 4
  %5 = load i32, i32* @MT_ARB_SCR_TX_DISABLE, align 4
  %6 = load i32, i32* @MT_ARB_SCR_RX_DISABLE, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @mt76_clear(%struct.mt7603_dev* %3, i32 %4, i32 %7)
  %9 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %10 = load i32, i32* @MT_WF_ARB_TX_START_0, align 4
  %11 = call i32 @mt76_wr(%struct.mt7603_dev* %9, i32 %10, i32 -1)
  %12 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %13 = load i32, i32* @MT_WF_ARB_RQCR, align 4
  %14 = load i32, i32* @MT_WF_ARB_RQCR_RX_START, align 4
  %15 = call i32 @mt76_set(%struct.mt7603_dev* %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
