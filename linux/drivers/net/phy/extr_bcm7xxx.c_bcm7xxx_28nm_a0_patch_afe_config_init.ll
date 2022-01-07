; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_a0_patch_afe_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_a0_patch_afe_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@AFE_RXCONFIG_2 = common dso_local global i32 0, align 4
@DSP_TAP10 = common dso_local global i32 0, align 4
@AFE_HPF_TRIM_OTHERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm7xxx_28nm_a0_patch_afe_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7xxx_28nm_a0_patch_afe_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %3 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %4 = load i32, i32* @AFE_RXCONFIG_2, align 4
  %5 = call i32 (%struct.phy_device*, i32, i32, ...) @bcm_phy_write_misc(%struct.phy_device* %3, i32 %4, i32 53251)
  %6 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %7 = load i32, i32* @DSP_TAP10, align 4
  %8 = call i32 (%struct.phy_device*, i32, i32, ...) @bcm_phy_write_misc(%struct.phy_device* %6, i32 %7, i32 31003)
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = load i32, i32* @AFE_HPF_TRIM_OTHERS, align 4
  %11 = call i32 (%struct.phy_device*, i32, i32, ...) @bcm_phy_write_misc(%struct.phy_device* %9, i32 %10, i32 4323)
  %12 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %13 = call i32 (%struct.phy_device*, i32, i32, ...) @bcm_phy_write_misc(%struct.phy_device* %12, i32 33, i32 2, i32 34806)
  %14 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %15 = call i32 (%struct.phy_device*, i32, i32, ...) @bcm_phy_write_misc(%struct.phy_device* %14, i32 34, i32 2, i32 381)
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = call i32 (%struct.phy_device*, i32, i32, ...) @bcm_phy_write_misc(%struct.phy_device* %16, i32 38, i32 2, i32 21)
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = call i32 @bcm_phy_r_rc_cal_reset(%struct.phy_device* %18)
  ret i32 0
}

declare dso_local i32 @bcm_phy_write_misc(%struct.phy_device*, i32, i32, ...) #1

declare dso_local i32 @bcm_phy_r_rc_cal_reset(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
