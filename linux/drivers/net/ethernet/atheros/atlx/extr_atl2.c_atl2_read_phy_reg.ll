; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32 }

@MDIO_REG_ADDR_MASK = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_RW = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@MDIO_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_WAIT_TIMES = common dso_local global i32 0, align 4
@MDIO_BUSY = common dso_local global i32 0, align 4
@ATLX_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_hw*, i32, i32*)* @atl2_read_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_read_phy_reg(%struct.atl2_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MDIO_REG_ADDR_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @MDIO_REG_ADDR_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @MDIO_START, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MDIO_RW, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MDIO_CLK_25_4, align 4
  %22 = load i32, i32* @MDIO_CLK_SEL_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %26 = load i32, i32* @REG_MDIO_CTRL, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %25, i32 %26, i32 %27)
  %29 = call i32 (...) @wmb()
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %48, %3
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MDIO_WAIT_TIMES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = call i32 @udelay(i32 2)
  %36 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %37 = load i32, i32* @REG_MDIO_CTRL, align 4
  %38 = call i32 @ATL2_READ_REG(%struct.atl2_hw* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MDIO_START, align 4
  %41 = load i32, i32* @MDIO_BUSY, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %51

46:                                               ; preds = %34
  %47 = call i32 (...) @wmb()
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %30

51:                                               ; preds = %45, %30
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MDIO_START, align 4
  %54 = load i32, i32* @MDIO_BUSY, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %4, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @ATLX_ERR_PHY, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ATL2_WRITE_REG(%struct.atl2_hw*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ATL2_READ_REG(%struct.atl2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
