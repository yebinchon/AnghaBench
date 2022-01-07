; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.adf7242_local* }
%struct.adf7242_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD_RC_PHY_RDY = common dso_local global i32 0, align 4
@FLAG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*)* @adf7242_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf7242_start(%struct.ieee802154_hw* %0) #0 {
  %2 = alloca %struct.ieee802154_hw*, align 8
  %3 = alloca %struct.adf7242_local*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %2, align 8
  %4 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %4, i32 0, i32 0
  %6 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  store %struct.adf7242_local* %6, %struct.adf7242_local** %3, align 8
  %7 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %8 = load i32, i32* @CMD_RC_PHY_RDY, align 4
  %9 = call i32 @adf7242_cmd(%struct.adf7242_local* %7, i32 %8)
  %10 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %11 = call i32 @adf7242_clear_irqstat(%struct.adf7242_local* %10)
  %12 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %13 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @enable_irq(i32 %16)
  %18 = load i32, i32* @FLAG_START, align 4
  %19 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %20 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.adf7242_local*, %struct.adf7242_local** %3, align 8
  %23 = call i32 @adf7242_cmd_rx(%struct.adf7242_local* %22)
  ret i32 %23
}

declare dso_local i32 @adf7242_cmd(%struct.adf7242_local*, i32) #1

declare dso_local i32 @adf7242_clear_irqstat(%struct.adf7242_local*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @adf7242_cmd_rx(%struct.adf7242_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
