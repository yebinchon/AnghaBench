; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_lxt.c_lxt973_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_lxt.c_lxt973_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { {}* }

@MII_LXT973_PCR = common dso_local global i32 0, align 4
@PCR_FIBER_SELECT = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @lxt973_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lxt973_probe(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = load i32, i32* @MII_LXT973_PCR, align 4
  %6 = call i32 @phy_read(%struct.phy_device* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PCR_FIBER_SELECT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %13 = load i32, i32* @MII_BMCR, align 4
  %14 = call i32 @phy_read(%struct.phy_device* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @BMCR_SPEED100, align 4
  %16 = load i32, i32* @BMCR_FULLDPLX, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @BMCR_ANENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %25 = load i32, i32* @MII_BMCR, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @phy_write(%struct.phy_device* %24, i32 %25, i32 %26)
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.phy_device*)**
  store i32 (%struct.phy_device*)* @lxt973_probe, i32 (%struct.phy_device*)** %30, align 8
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.phy_device*)**
  store i32 (%struct.phy_device*)* null, i32 (%struct.phy_device*)** %34, align 8
  br label %35

35:                                               ; preds = %31, %11
  ret i32 0
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
