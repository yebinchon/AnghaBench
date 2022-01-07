; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@TSTCNTL = common dso_local global i32 0, align 4
@TSTCNTL_READ = common dso_local global i32 0, align 4
@TSTCNTL_REG_BANK_SEL = common dso_local global i32 0, align 4
@TSTCNTL_TEST_MODE = common dso_local global i32 0, align 4
@TSTCNTL_READ_ADDRESS = common dso_local global i32 0, align 4
@TSTREAD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32)* @meson_gxl_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gxl_read_reg(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %9 = call i32 @meson_gxl_open_banks(%struct.phy_device* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %35

13:                                               ; preds = %3
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = load i32, i32* @TSTCNTL, align 4
  %16 = load i32, i32* @TSTCNTL_READ, align 4
  %17 = load i32, i32* @TSTCNTL_REG_BANK_SEL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FIELD_PREP(i32 %17, i32 %18)
  %20 = or i32 %16, %19
  %21 = load i32, i32* @TSTCNTL_TEST_MODE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TSTCNTL_READ_ADDRESS, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @FIELD_PREP(i32 %23, i32 %24)
  %26 = or i32 %22, %25
  %27 = call i32 @phy_write(%struct.phy_device* %14, i32 %15, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  br label %35

31:                                               ; preds = %13
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = load i32, i32* @TSTREAD1, align 4
  %34 = call i32 @phy_read(%struct.phy_device* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %30, %12
  %36 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %37 = call i32 @meson_gxl_close_banks(%struct.phy_device* %36)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @meson_gxl_open_banks(%struct.phy_device*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @meson_gxl_close_banks(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
