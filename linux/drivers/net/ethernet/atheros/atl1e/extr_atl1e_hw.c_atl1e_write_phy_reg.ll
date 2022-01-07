; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_write_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_write_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { i32 }

@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_MASK = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@MDIO_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_WAIT_TIMES = common dso_local global i32 0, align 4
@MDIO_BUSY = common dso_local global i32 0, align 4
@AT_ERR_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MDIO_DATA_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MDIO_REG_ADDR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @MDIO_REG_ADDR_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MDIO_START, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MDIO_CLK_25_4, align 4
  %26 = load i32, i32* @MDIO_CLK_SEL_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.atl1e_hw*, %struct.atl1e_hw** %5, align 8
  %30 = load i32, i32* @REG_MDIO_CTRL, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %29, i32 %30, i32 %31)
  %33 = call i32 (...) @wmb()
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %3
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MDIO_WAIT_TIMES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = call i32 @udelay(i32 2)
  %40 = load %struct.atl1e_hw*, %struct.atl1e_hw** %5, align 8
  %41 = load i32, i32* @REG_MDIO_CTRL, align 4
  %42 = call i32 @AT_READ_REG(%struct.atl1e_hw* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @MDIO_START, align 4
  %45 = load i32, i32* @MDIO_BUSY, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %55

50:                                               ; preds = %38
  %51 = call i32 (...) @wmb()
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %49, %34
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MDIO_START, align 4
  %58 = load i32, i32* @MDIO_BUSY, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @AT_ERR_PHY, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
