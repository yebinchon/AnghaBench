; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_open_banks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_open_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@TSTCNTL = common dso_local global i32 0, align 4
@TSTCNTL_TEST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @meson_gxl_open_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gxl_open_banks(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @TSTCNTL, align 4
  %7 = call i32 @phy_write(%struct.phy_device* %5, i32 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = load i32, i32* @TSTCNTL, align 4
  %15 = load i32, i32* @TSTCNTL_TEST_MODE, align 4
  %16 = call i32 @phy_write(%struct.phy_device* %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %12
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @TSTCNTL, align 4
  %24 = call i32 @phy_write(%struct.phy_device* %22, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = load i32, i32* @TSTCNTL, align 4
  %32 = load i32, i32* @TSTCNTL_TEST_MODE, align 4
  %33 = call i32 @phy_write(%struct.phy_device* %30, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %29, %27, %19, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
