; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtlgen_write_mmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtlgen_write_mmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i64, i64)* @rtlgen_write_mmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtlgen_write_mmd(%struct.phy_device* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MDIO_MMD_AN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @MDIO_AN_EEE_ADV, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %19 = call i32 @rtl821x_write_page(%struct.phy_device* %18, i32 2653)
  %20 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @__phy_write(%struct.phy_device* %20, i32 16, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %24 = call i32 @rtl821x_write_page(%struct.phy_device* %23, i32 0)
  br label %28

25:                                               ; preds = %13, %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local i32 @rtl821x_write_page(%struct.phy_device*, i32) #1

declare dso_local i32 @__phy_write(%struct.phy_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
