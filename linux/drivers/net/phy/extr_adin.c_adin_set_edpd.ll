; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_set_edpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_set_edpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@ETHTOOL_PHY_EDPD_DISABLE = common dso_local global i32 0, align 4
@ADIN1300_PHY_CTRL_STATUS2 = common dso_local global i32 0, align 4
@ADIN1300_NRG_PD_EN = common dso_local global i32 0, align 4
@ADIN1300_NRG_PD_TX_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @adin_set_edpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_set_edpd(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ETHTOOL_PHY_EDPD_DISABLE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = load i32, i32* @ADIN1300_PHY_CTRL_STATUS2, align 4
  %13 = load i32, i32* @ADIN1300_NRG_PD_EN, align 4
  %14 = load i32, i32* @ADIN1300_NRG_PD_TX_EN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @phy_clear_bits(%struct.phy_device* %11, i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load i32, i32* @ADIN1300_NRG_PD_EN, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %25 [
    i32 1000, label %20
    i32 129, label %20
    i32 128, label %24
  ]

20:                                               ; preds = %17, %17
  %21 = load i32, i32* @ADIN1300_NRG_PD_TX_EN, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %17, %20
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %24
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = load i32, i32* @ADIN1300_PHY_CTRL_STATUS2, align 4
  %31 = load i32, i32* @ADIN1300_NRG_PD_EN, align 4
  %32 = load i32, i32* @ADIN1300_NRG_PD_TX_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @phy_modify(%struct.phy_device* %29, i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %25, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @phy_clear_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
