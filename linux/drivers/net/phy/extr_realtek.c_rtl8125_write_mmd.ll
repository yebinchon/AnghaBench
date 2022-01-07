; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_write_mmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8125_write_mmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i64, i64)* @rtl8125_write_mmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8125_write_mmd(%struct.phy_device* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @rtlgen_write_mmd(%struct.phy_device* %11, i32 %12, i64 %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %40

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MDIO_MMD_AN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @MDIO_AN_EEE_ADV2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %32 = call i32 @rtl821x_write_page(%struct.phy_device* %31, i32 2669)
  %33 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @__phy_write(%struct.phy_device* %33, i32 18, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %37 = call i32 @rtl821x_write_page(%struct.phy_device* %36, i32 0)
  br label %38

38:                                               ; preds = %30, %26, %22
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @rtlgen_write_mmd(%struct.phy_device*, i32, i64, i64) #1

declare dso_local i32 @rtl821x_write_page(%struct.phy_device*, i32) #1

declare dso_local i32 @__phy_write(%struct.phy_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
