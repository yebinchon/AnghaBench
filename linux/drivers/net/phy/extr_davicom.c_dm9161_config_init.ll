; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_davicom.c_dm9161_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_davicom.c_dm9161_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@MII_DM9161_SCR_INIT = common dso_local global i32 0, align 4
@MII_DM9161_SCR_RMII = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MII_DM9161_SCR = common dso_local global i32 0, align 4
@MII_DM9161_10BTCSR = common dso_local global i32 0, align 4
@MII_DM9161_10BTCSR_INIT = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dm9161_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm9161_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_BMCR, align 4
  %8 = load i32, i32* @BMCR_ISOLATE, align 4
  %9 = call i32 @phy_write(%struct.phy_device* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %20
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @MII_DM9161_SCR_INIT, align 4
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %14
  %21 = load i32, i32* @MII_DM9161_SCR_INIT, align 4
  %22 = load i32, i32* @MII_DM9161_SCR_RMII, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %20, %18
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = load i32, i32* @MII_DM9161_SCR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @phy_write(%struct.phy_device* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %27
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MII_DM9161_10BTCSR, align 4
  %39 = load i32, i32* @MII_DM9161_10BTCSR_INIT, align 4
  %40 = call i32 @phy_write(%struct.phy_device* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = load i32, i32* @MII_BMCR, align 4
  %48 = load i32, i32* @BMCR_ANENABLE, align 4
  %49 = call i32 @phy_write(%struct.phy_device* %46, i32 %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %43, %34, %24, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
