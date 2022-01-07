; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm-phy-lib.c_bcm_phy_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@BRCM_CL45VEN_EEE_CONTROL = common dso_local global i32 0, align 4
@LPI_FEATURE_EN = common dso_local global i32 0, align 4
@LPI_FEATURE_EN_DIG1000X = common dso_local global i32 0, align 4
@BCM_CL45VEN_EEE_ADV = common dso_local global i32 0, align 4
@MDIO_EEE_100TX = common dso_local global i32 0, align 4
@MDIO_EEE_1000T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_phy_set_eee(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %8 = load i32, i32* @MDIO_MMD_AN, align 4
  %9 = load i32, i32* @BRCM_CL45VEN_EEE_CONTROL, align 4
  %10 = call i32 @phy_read_mmd(%struct.phy_device* %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* @LPI_FEATURE_EN, align 4
  %20 = load i32, i32* @LPI_FEATURE_EN_DIG1000X, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %15
  %25 = load i32, i32* @LPI_FEATURE_EN, align 4
  %26 = load i32, i32* @LPI_FEATURE_EN_DIG1000X, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = load i32, i32* @MDIO_MMD_AN, align 4
  %34 = load i32, i32* @BRCM_CL45VEN_EEE_CONTROL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @phy_write_mmd(%struct.phy_device* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = load i32, i32* @MDIO_MMD_AN, align 4
  %39 = load i32, i32* @BCM_CL45VEN_EEE_ADV, align 4
  %40 = call i32 @phy_read_mmd(%struct.phy_device* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @MDIO_EEE_100TX, align 4
  %50 = load i32, i32* @MDIO_EEE_1000T, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %61

54:                                               ; preds = %45
  %55 = load i32, i32* @MDIO_EEE_100TX, align 4
  %56 = load i32, i32* @MDIO_EEE_1000T, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %63 = load i32, i32* @MDIO_MMD_AN, align 4
  %64 = load i32, i32* @BCM_CL45VEN_EEE_ADV, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @phy_write_mmd(%struct.phy_device* %62, i32 %63, i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %43, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
