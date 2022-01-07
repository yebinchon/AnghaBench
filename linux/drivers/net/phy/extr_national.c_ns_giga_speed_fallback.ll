; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_national.c_ns_giga_speed_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_national.c_ns_giga_speed_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@NS_EXP_MEM_CTL = common dso_local global i32 0, align 4
@NS_EXP_MEM_ADD = common dso_local global i32 0, align 4
@NS_EXP_MEM_DATA = common dso_local global i32 0, align 4
@LED_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, i32)* @ns_giga_speed_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns_giga_speed_fallback(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_BMCR, align 4
  %8 = call i32 @phy_read(%struct.phy_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = load i32, i32* @MII_BMCR, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BMCR_PDOWN, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @phy_write(%struct.phy_device* %9, i32 %10, i32 %13)
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = load i32, i32* @NS_EXP_MEM_CTL, align 4
  %17 = call i32 @phy_write(%struct.phy_device* %15, i32 %16, i32 0)
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @NS_EXP_MEM_ADD, align 4
  %20 = call i32 @phy_write(%struct.phy_device* %18, i32 %19, i32 448)
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = load i32, i32* @NS_EXP_MEM_DATA, align 4
  %23 = call i32 @phy_write(%struct.phy_device* %21, i32 %22, i32 8)
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = load i32, i32* @MII_BMCR, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @BMCR_PDOWN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @phy_write(%struct.phy_device* %24, i32 %25, i32 %29)
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @LED_CTRL_REG, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @phy_write(%struct.phy_device* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
