; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_meson-gxl.c_meson_gxl_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@INTSRC_ANEG_PR = common dso_local global i32 0, align 4
@INTSRC_PARALLEL_FAULT = common dso_local global i32 0, align 4
@INTSRC_ANEG_LP_ACK = common dso_local global i32 0, align 4
@INTSRC_LINK_DOWN = common dso_local global i32 0, align 4
@INTSRC_REMOTE_FAULT = common dso_local global i32 0, align 4
@INTSRC_ANEG_COMPLETE = common dso_local global i32 0, align 4
@INTSRC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @meson_gxl_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gxl_config_intr(%struct.phy_device* %0) #0 {
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
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @INTSRC_ANEG_PR, align 4
  %13 = load i32, i32* @INTSRC_PARALLEL_FAULT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @INTSRC_ANEG_LP_ACK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @INTSRC_LINK_DOWN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @INTSRC_REMOTE_FAULT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @INTSRC_ANEG_COMPLETE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %11
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = call i32 @meson_gxl_ack_interrupt(%struct.phy_device* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load i32, i32* @INTSRC_MASK, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @phy_write(%struct.phy_device* %32, i32 %33, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @meson_gxl_ack_interrupt(%struct.phy_device*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
