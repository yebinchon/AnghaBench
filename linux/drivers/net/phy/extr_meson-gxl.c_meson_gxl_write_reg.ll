; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@TSTWRITE = common dso_local global i32 0, align 4
@TSTCNTL = common dso_local global i32 0, align 4
@TSTCNTL_WRITE = common dso_local global i32 0, align 4
@TSTCNTL_REG_BANK_SEL = common dso_local global i32 0, align 4
@TSTCNTL_TEST_MODE = common dso_local global i32 0, align 4
@TSTCNTL_WRITE_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32, i32)* @meson_gxl_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gxl_write_reg(%struct.phy_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %11 = call i32 @meson_gxl_open_banks(%struct.phy_device* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %38

15:                                               ; preds = %4
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = load i32, i32* @TSTWRITE, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @phy_write(%struct.phy_device* %16, i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %38

23:                                               ; preds = %15
  %24 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %25 = load i32, i32* @TSTCNTL, align 4
  %26 = load i32, i32* @TSTCNTL_WRITE, align 4
  %27 = load i32, i32* @TSTCNTL_REG_BANK_SEL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @FIELD_PREP(i32 %27, i32 %28)
  %30 = or i32 %26, %29
  %31 = load i32, i32* @TSTCNTL_TEST_MODE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TSTCNTL_WRITE_ADDRESS, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @FIELD_PREP(i32 %33, i32 %34)
  %36 = or i32 %32, %35
  %37 = call i32 @phy_write(%struct.phy_device* %24, i32 %25, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %23, %22, %14
  %39 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %40 = call i32 @meson_gxl_close_banks(%struct.phy_device* %39)
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @meson_gxl_open_banks(%struct.phy_device*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @meson_gxl_close_banks(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
