; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { i32 }

@PHY_CONTROL = common dso_local global i32 0, align 4
@MII_CR_POWER_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_phy_power_down(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca %struct.pch_gbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %5 = load i32, i32* @PHY_CONTROL, align 4
  %6 = call i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %4, i32 %5, i32* %3)
  %7 = load i32, i32* @MII_CR_POWER_DOWN, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %11 = load i32, i32* @PHY_CONTROL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %10, i32 %11, i32 %12)
  %14 = call i32 @mdelay(i32 1)
  ret void
}

declare dso_local i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw*, i32, i32*) #1

declare dso_local i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
