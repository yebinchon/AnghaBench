; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83822.c_dp83822_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83822.c_dp83822_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@DP83822_WOL_MAGIC_EN = common dso_local global i32 0, align 4
@DP83822_WOL_SECURE_ON = common dso_local global i32 0, align 4
@DP83822_WOL_EN = common dso_local global i32 0, align 4
@DP83822_DEVADDR = common dso_local global i32 0, align 4
@MII_DP83822_WOL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83822_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83822_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load i32, i32* @DP83822_WOL_MAGIC_EN, align 4
  %5 = load i32, i32* @DP83822_WOL_SECURE_ON, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DP83822_WOL_EN, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = load i32, i32* @DP83822_DEVADDR, align 4
  %11 = load i32, i32* @MII_DP83822_WOL_CFG, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @phy_write_mmd(%struct.phy_device* %9, i32 %10, i32 %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
