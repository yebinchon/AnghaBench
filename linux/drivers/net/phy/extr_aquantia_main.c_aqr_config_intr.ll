; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_TX_VEND_INT_MASK2 = common dso_local global i32 0, align 4
@MDIO_AN_TX_VEND_INT_MASK2_LINK = common dso_local global i32 0, align 4
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@VEND1_GLOBAL_INT_STD_MASK = common dso_local global i32 0, align 4
@VEND1_GLOBAL_INT_STD_MASK_ALL = common dso_local global i32 0, align 4
@VEND1_GLOBAL_INT_VEND_MASK = common dso_local global i32 0, align 4
@VEND1_GLOBAL_INT_VEND_MASK_GLOBAL3 = common dso_local global i32 0, align 4
@VEND1_GLOBAL_INT_VEND_MASK_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @aqr_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqr_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = load i32, i32* @MDIO_MMD_AN, align 4
  %14 = load i32, i32* @MDIO_AN_TX_VEND_INT_MASK2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @MDIO_AN_TX_VEND_INT_MASK2_LINK, align 4
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = call i32 @phy_write_mmd(%struct.phy_device* %12, i32 %13, i32 %14, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %20
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %30 = load i32, i32* @VEND1_GLOBAL_INT_STD_MASK, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @VEND1_GLOBAL_INT_STD_MASK_ALL, align 4
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = call i32 @phy_write_mmd(%struct.phy_device* %28, i32 %29, i32 %30, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %57

43:                                               ; preds = %36
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %46 = load i32, i32* @VEND1_GLOBAL_INT_VEND_MASK, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @VEND1_GLOBAL_INT_VEND_MASK_GLOBAL3, align 4
  %51 = load i32, i32* @VEND1_GLOBAL_INT_VEND_MASK_AN, align 4
  %52 = or i32 %50, %51
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i32 [ %52, %49 ], [ 0, %53 ]
  %56 = call i32 @phy_write_mmd(%struct.phy_device* %44, i32 %45, i32 %46, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %41, %25
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
