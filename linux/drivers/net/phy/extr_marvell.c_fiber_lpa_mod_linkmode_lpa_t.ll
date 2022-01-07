; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_fiber_lpa_mod_linkmode_lpa_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_fiber_lpa_mod_linkmode_lpa_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@LPA_FIBER_1000HALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@LPA_FIBER_1000FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @fiber_lpa_mod_linkmode_lpa_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiber_lpa_mod_linkmode_lpa_t(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %6 = load i64*, i64** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LPA_FIBER_1000HALF, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @linkmode_mod_bit(i32 %5, i64* %6, i32 %9)
  %11 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %12 = load i64*, i64** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @LPA_FIBER_1000FULL, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @linkmode_mod_bit(i32 %11, i64* %12, i32 %15)
  ret void
}

declare dso_local i32 @linkmode_mod_bit(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
