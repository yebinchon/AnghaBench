; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_read_mmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_read_mmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_PCS_EEE_ABLE2 = common dso_local global i64 0, align 8
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV2 = common dso_local global i64 0, align 8
@MDIO_AN_EEE_LPABLE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i64)* @rtl8125_read_mmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8125_read_mmd(%struct.phy_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @rtlgen_read_mmd(%struct.phy_device* %9, i32 %10, i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MDIO_MMD_PCS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MDIO_PCS_EEE_ABLE2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %29 = call i32 @rtl821x_write_page(%struct.phy_device* %28, i32 2670)
  %30 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %31 = call i32 @__phy_read(%struct.phy_device* %30, i32 22)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %33 = call i32 @rtl821x_write_page(%struct.phy_device* %32, i32 0)
  br label %66

34:                                               ; preds = %23, %19
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MDIO_MMD_AN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @MDIO_AN_EEE_ADV2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %44 = call i32 @rtl821x_write_page(%struct.phy_device* %43, i32 2669)
  %45 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %46 = call i32 @__phy_read(%struct.phy_device* %45, i32 18)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %48 = call i32 @rtl821x_write_page(%struct.phy_device* %47, i32 0)
  br label %65

49:                                               ; preds = %38, %34
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MDIO_MMD_AN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @MDIO_AN_EEE_LPABLE2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %59 = call i32 @rtl821x_write_page(%struct.phy_device* %58, i32 2669)
  %60 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %61 = call i32 @__phy_read(%struct.phy_device* %60, i32 16)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %63 = call i32 @rtl821x_write_page(%struct.phy_device* %62, i32 0)
  br label %64

64:                                               ; preds = %57, %53, %49
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @rtlgen_read_mmd(%struct.phy_device*, i32, i64) #1

declare dso_local i32 @rtl821x_write_page(%struct.phy_device*, i32) #1

declare dso_local i32 @__phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
