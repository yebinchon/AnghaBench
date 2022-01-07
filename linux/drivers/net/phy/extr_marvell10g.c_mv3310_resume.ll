; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell10g.c_mv3310_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MDIO_MMD_VEND2 = common dso_local global i32 0, align 4
@MV_V2_PORT_CTRL = common dso_local global i32 0, align 4
@MV_V2_PORT_CTRL_PWRDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @mv3310_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv3310_resume(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MDIO_MMD_VEND2, align 4
  %7 = load i32, i32* @MV_V2_PORT_CTRL, align 4
  %8 = load i32, i32* @MV_V2_PORT_CTRL_PWRDOWN, align 4
  %9 = call i32 @phy_clear_bits_mmd(%struct.phy_device* %5, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = call i32 @mv3310_hwmon_config(%struct.phy_device* %15, i32 1)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @phy_clear_bits_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @mv3310_hwmon_config(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
