; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_core.c_mt76x02u_exit_beacon_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_usb_core.c_mt76x02u_exit_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT76_REMOVED = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TIMER_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_SYNC_MODE = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_TBTT_EN = common dso_local global i32 0, align 4
@MT_BEACON_TIME_CFG_BEACON_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02u_exit_beacon_config(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %3 = load i32, i32* @MT76_REMOVED, align 4
  %4 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @test_bit(i32 %3, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %11 = load i32, i32* @MT_BEACON_TIME_CFG, align 4
  %12 = load i32, i32* @MT_BEACON_TIME_CFG_TIMER_EN, align 4
  %13 = load i32, i32* @MT_BEACON_TIME_CFG_SYNC_MODE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MT_BEACON_TIME_CFG_TBTT_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MT_BEACON_TIME_CFG_BEACON_TX, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @mt76_clear(%struct.mt76x02_dev* %10, i32 %11, i32 %18)
  br label %20

20:                                               ; preds = %9, %1
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %22 = call i32 @mt76x02u_stop_pre_tbtt_timer(%struct.mt76x02_dev* %21)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02u_stop_pre_tbtt_timer(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
