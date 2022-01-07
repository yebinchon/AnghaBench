; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_rockchip.c_rockchip_integrated_phy_analog_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_rockchip.c_rockchip_integrated_phy_analog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@SMI_ADDR_TSTWRITE = common dso_local global i32 0, align 4
@SMI_ADDR_TSTCNTL = common dso_local global i32 0, align 4
@TSTCNTL_WR = common dso_local global i32 0, align 4
@WR_ADDR_A7CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @rockchip_integrated_phy_analog_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_integrated_phy_analog_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @rockchip_init_tstmode(%struct.phy_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = load i32, i32* @SMI_ADDR_TSTWRITE, align 4
  %14 = call i32 @phy_write(%struct.phy_device* %12, i32 %13, i32 11)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %11
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = load i32, i32* @SMI_ADDR_TSTCNTL, align 4
  %22 = load i32, i32* @TSTCNTL_WR, align 4
  %23 = load i32, i32* @WR_ADDR_A7CFG, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @phy_write(%struct.phy_device* %20, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = call i32 @rockchip_close_tstmode(%struct.phy_device* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %28, %17, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @rockchip_init_tstmode(%struct.phy_device*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @rockchip_close_tstmode(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
