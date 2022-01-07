; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@REG_INTCON = common dso_local global i32 0, align 4
@BIT_TXNIE = common dso_local global i32 0, align 4
@BIT_RXIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802154_hw*)* @mrf24j40_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrf24j40_stop(%struct.ieee802154_hw* %0) #0 {
  %2 = alloca %struct.ieee802154_hw*, align 8
  %3 = alloca %struct.mrf24j40*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %2, align 8
  %4 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %4, i32 0, i32 0
  %6 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  store %struct.mrf24j40* %6, %struct.mrf24j40** %3, align 8
  %7 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %8 = call i32 @printdev(%struct.mrf24j40* %7)
  %9 = call i32 @dev_dbg(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.mrf24j40*, %struct.mrf24j40** %3, align 8
  %11 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REG_INTCON, align 4
  %14 = load i32, i32* @BIT_TXNIE, align 4
  %15 = load i32, i32* @BIT_RXIE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BIT_TXNIE, align 4
  %18 = load i32, i32* @BIT_RXIE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
