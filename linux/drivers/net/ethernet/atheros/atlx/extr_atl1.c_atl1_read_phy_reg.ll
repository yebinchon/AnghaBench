; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64 }

@MDIO_REG_ADDR_MASK = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_RW = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@MDIO_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i64 0, align 8
@MDIO_WAIT_TIMES = common dso_local global i32 0, align 4
@MDIO_BUSY = common dso_local global i32 0, align 4
@ATLX_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_hw*, i32, i32*)* @atl1_read_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_read_phy_reg(%struct.atl1_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %5, align 8
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
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %27 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REG_MDIO_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i32 %25, i64 %30)
  %32 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %33 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_MDIO_CTRL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @ioread32(i64 %36)
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %58, %3
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MDIO_WAIT_TIMES, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = call i32 @udelay(i32 2)
  %44 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %45 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_MDIO_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @ioread32(i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MDIO_START, align 4
  %52 = load i32, i32* @MDIO_BUSY, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  br label %61

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %38

61:                                               ; preds = %56, %38
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MDIO_START, align 4
  %64 = load i32, i32* @MDIO_BUSY, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @ATLX_ERR_PHY, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
