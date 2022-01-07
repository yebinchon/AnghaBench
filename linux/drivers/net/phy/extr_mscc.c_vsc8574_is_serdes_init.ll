; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8574_is_serdes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8574_is_serdes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED_GPIO = common dso_local global i32 0, align 4
@MSCC_INT_MEM_CNTL = common dso_local global i32 0, align 4
@MSCC_DW8051_CNTL_STATUS = common dso_local global i32 0, align 4
@MICRO_NSOFT_RESET = common dso_local global i32 0, align 4
@RUN_FROM_INT_ROM = common dso_local global i32 0, align 4
@DW8051_CLK_EN = common dso_local global i32 0, align 4
@MICRO_CLK_EN = common dso_local global i32 0, align 4
@MSCC_DW8051_VLD_MASK = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc8574_is_serdes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8574_is_serdes_init(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %7 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_GPIO, align 4
  %8 = call i32 @phy_base_write(%struct.phy_device* %5, i32 %6, i32 %7)
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = call i32 @MSCC_TRAP_ROM_ADDR(i32 1)
  %11 = call i32 @phy_base_read(%struct.phy_device* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 16055
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = call i32 @MSCC_PATCH_RAM_ADDR(i32 1)
  %18 = call i32 @phy_base_read(%struct.phy_device* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 16402
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %24 = load i32, i32* @MSCC_INT_MEM_CNTL, align 4
  %25 = call i32 @phy_base_read(%struct.phy_device* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @EN_PATCH_RAM_TRAP_ADDR(i32 1)
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %32 = load i32, i32* @MSCC_DW8051_CNTL_STATUS, align 4
  %33 = call i32 @phy_base_read(%struct.phy_device* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @MICRO_NSOFT_RESET, align 4
  %35 = load i32, i32* @RUN_FROM_INT_ROM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DW8051_CLK_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MICRO_CLK_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MSCC_DW8051_VLD_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %47

46:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %45, %29, %21, %14
  %48 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %49 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %50 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %51 = call i32 @phy_base_write(%struct.phy_device* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_base_read(%struct.phy_device*, i32) #1

declare dso_local i32 @MSCC_TRAP_ROM_ADDR(i32) #1

declare dso_local i32 @MSCC_PATCH_RAM_ADDR(i32) #1

declare dso_local i32 @EN_PATCH_RAM_TRAP_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
