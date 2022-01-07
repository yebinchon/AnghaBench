; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_downshift_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_downshift_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_PHY_PAGE_EXTENDED = common dso_local global i32 0, align 4
@MSCC_PHY_ACTIPHY_CNTL = common dso_local global i32 0, align 4
@DOWNSHIFT_CNTL_MASK = common dso_local global i32 0, align 4
@DOWNSHIFT_EN = common dso_local global i32 0, align 4
@DOWNSHIFT_DEV_DISABLE = common dso_local global i32 0, align 4
@DOWNSHIFT_CNTL_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32*)* @vsc85xx_downshift_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_downshift_get(%struct.phy_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %8 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED, align 4
  %9 = load i32, i32* @MSCC_PHY_ACTIPHY_CNTL, align 4
  %10 = call i32 @phy_read_paged(%struct.phy_device* %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @DOWNSHIFT_CNTL_MASK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DOWNSHIFT_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @DOWNSHIFT_DEV_DISABLE, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %35

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DOWNSHIFT_EN, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @DOWNSHIFT_CNTL_POS, align 4
  %32 = ashr i32 %30, %31
  %33 = add nsw i32 %32, 2
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %23
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @phy_read_paged(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
