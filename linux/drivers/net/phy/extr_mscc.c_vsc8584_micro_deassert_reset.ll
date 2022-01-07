; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_micro_deassert_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_micro_deassert_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED_GPIO = common dso_local global i32 0, align 4
@RUN_FROM_INT_ROM = common dso_local global i32 0, align 4
@MICRO_CLK_EN = common dso_local global i32 0, align 4
@DW8051_CLK_EN = common dso_local global i32 0, align 4
@MICRO_NSOFT_RESET = common dso_local global i32 0, align 4
@MICRO_PATCH_EN = common dso_local global i32 0, align 4
@MSCC_INT_MEM_CNTL = common dso_local global i32 0, align 4
@READ_RAM = common dso_local global i32 0, align 4
@MSCC_DW8051_CNTL_STATUS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @vsc8584_micro_deassert_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8584_micro_deassert_reset(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %9 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_GPIO, align 4
  %10 = call i32 @phy_base_write(%struct.phy_device* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @RUN_FROM_INT_ROM, align 4
  %12 = load i32, i32* @MICRO_CLK_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DW8051_CLK_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @MICRO_NSOFT_RESET, align 4
  %17 = load i32, i32* @RUN_FROM_INT_ROM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DW8051_CLK_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MICRO_CLK_EN, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @MICRO_PATCH_EN, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @MICRO_PATCH_EN, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load i32, i32* @MSCC_INT_MEM_CNTL, align 4
  %34 = load i32, i32* @READ_RAM, align 4
  %35 = call i32 @phy_base_write(%struct.phy_device* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %2
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MSCC_DW8051_CNTL_STATUS, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @phy_base_write(%struct.phy_device* %37, i32 %38, i32 %39)
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = load i32, i32* @MSCC_DW8051_CNTL_STATUS, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @phy_base_write(%struct.phy_device* %41, i32 %42, i32 %43)
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %47 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %48 = call i32 @phy_base_write(%struct.phy_device* %45, i32 %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
