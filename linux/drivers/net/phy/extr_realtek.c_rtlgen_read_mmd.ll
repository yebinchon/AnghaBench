; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtlgen_read_mmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtlgen_read_mmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_PCS_EEE_ABLE = common dso_local global i64 0, align 8
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i64 0, align 8
@MDIO_AN_EEE_LPABLE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i64)* @rtlgen_read_mmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtlgen_read_mmd(%struct.phy_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MDIO_MMD_PCS, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MDIO_PCS_EEE_ABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = call i32 @rtl821x_write_page(%struct.phy_device* %16, i32 2652)
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = call i32 @__phy_read(%struct.phy_device* %18, i32 18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = call i32 @rtl821x_write_page(%struct.phy_device* %20, i32 0)
  br label %57

22:                                               ; preds = %11, %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MDIO_MMD_AN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @MDIO_AN_EEE_ADV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %32 = call i32 @rtl821x_write_page(%struct.phy_device* %31, i32 2653)
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = call i32 @__phy_read(%struct.phy_device* %33, i32 16)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = call i32 @rtl821x_write_page(%struct.phy_device* %35, i32 0)
  br label %56

37:                                               ; preds = %26, %22
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MDIO_MMD_AN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @MDIO_AN_EEE_LPABLE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %47 = call i32 @rtl821x_write_page(%struct.phy_device* %46, i32 2653)
  %48 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %49 = call i32 @__phy_read(%struct.phy_device* %48, i32 17)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %51 = call i32 @rtl821x_write_page(%struct.phy_device* %50, i32 0)
  br label %55

52:                                               ; preds = %41, %37
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @rtl821x_write_page(%struct.phy_device*, i32) #1

declare dso_local i32 @__phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
