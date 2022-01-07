; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_config_mdix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_config_mdix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADIN1300_PHY_CTRL1 = common dso_local global i32 0, align 4
@ADIN1300_MAN_MDIX_EN = common dso_local global i32 0, align 4
@ADIN1300_AUTO_MDI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @adin_config_mdix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_config_mdix(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %13 [
    i32 130, label %10
    i32 128, label %11
    i32 129, label %12
  ]

10:                                               ; preds = %1
  br label %16

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %16

12:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %12, %11, %10
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @ADIN1300_PHY_CTRL1, align 4
  %19 = call i32 @phy_read(%struct.phy_device* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %53

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @ADIN1300_MAN_MDIX_EN, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @ADIN1300_MAN_MDIX_EN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @ADIN1300_AUTO_MDI_EN, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @ADIN1300_AUTO_MDI_EN, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = load i32, i32* @ADIN1300_PHY_CTRL1, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @phy_write(%struct.phy_device* %49, i32 %50, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %22, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
