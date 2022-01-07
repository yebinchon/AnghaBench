; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_set_downshift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_set_downshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MDIO_AN_VEND_PROV_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@DOWNSHIFT_DEV_DISABLE = common dso_local global i64 0, align 8
@MDIO_AN_VEND_PROV_DOWNSHIFT_EN = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_VEND_PROV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i64)* @aqr107_set_downshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqr107_set_downshift(%struct.phy_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @MDIO_AN_VEND_PROV_DOWNSHIFT_MASK, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @FIELD_FIT(i32 %7, i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @E2BIG, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @DOWNSHIFT_DEV_DISABLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @MDIO_AN_VEND_PROV_DOWNSHIFT_EN, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @MDIO_AN_VEND_PROV_DOWNSHIFT_MASK, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @FIELD_PREP(i32 %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %18, %14
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = load i32, i32* @MDIO_MMD_AN, align 4
  %28 = load i32, i32* @MDIO_AN_VEND_PROV, align 4
  %29 = load i32, i32* @MDIO_AN_VEND_PROV_DOWNSHIFT_EN, align 4
  %30 = load i32, i32* @MDIO_AN_VEND_PROV_DOWNSHIFT_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @phy_modify_mmd(%struct.phy_device* %26, i32 %27, i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @FIELD_FIT(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @phy_modify_mmd(%struct.phy_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
