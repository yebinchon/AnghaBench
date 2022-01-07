; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.at86rf230_local* }
%struct.at86rf230_local = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CONFIG_IEEE802154_AT86RF230_DEBUGFS = common dso_local global i32 0, align 4
@STATE_RX_AACK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*)* @at86rf230_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_start(%struct.ieee802154_hw* %0) #0 {
  %2 = alloca %struct.ieee802154_hw*, align 8
  %3 = alloca %struct.at86rf230_local*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %2, align 8
  %4 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %4, i32 0, i32 0
  %6 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  store %struct.at86rf230_local* %6, %struct.at86rf230_local** %3, align 8
  %7 = load i32, i32* @CONFIG_IEEE802154_AT86RF230_DEBUGFS, align 4
  %8 = call i64 @IS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.at86rf230_local*, %struct.at86rf230_local** %3, align 8
  %12 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %11, i32 0, i32 1
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.at86rf230_local*, %struct.at86rf230_local** %3, align 8
  %16 = call i32 @at86rf230_awake(%struct.at86rf230_local* %15)
  %17 = load %struct.at86rf230_local*, %struct.at86rf230_local** %3, align 8
  %18 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @enable_irq(i32 %21)
  %23 = load %struct.at86rf230_local*, %struct.at86rf230_local** %3, align 8
  %24 = load i32, i32* @STATE_RX_AACK_ON, align 4
  %25 = call i32 @at86rf230_sync_state_change(%struct.at86rf230_local* %23, i32 %24)
  ret i32 %25
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @at86rf230_awake(%struct.at86rf230_local*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @at86rf230_sync_state_change(%struct.at86rf230_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
