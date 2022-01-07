; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@ETHTOOL_LINK_MODE_FIBRE_BIT = common dso_local global i32 0, align 4
@marvell_hw_stats = common dso_local global i32 0, align 4
@NB_FIBER_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @marvell_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_get_sset_count(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %4 = load i32, i32* @ETHTOOL_LINK_MODE_FIBRE_BIT, align 4
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @linkmode_test_bit(i32 %4, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @marvell_hw_stats, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @marvell_hw_stats, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = load i32, i32* @NB_FIBER_STATS, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @linkmode_test_bit(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
