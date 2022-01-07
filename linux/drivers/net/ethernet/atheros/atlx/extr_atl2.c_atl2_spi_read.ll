; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32 }

@REG_SPI_DATA = common dso_local global i32 0, align 4
@REG_SPI_ADDR = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_WAIT_READY = common dso_local global i32 0, align 4
@CUSTOM_SPI_CS_SETUP = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_SETUP_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_SETUP_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CLK_HI = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_HI_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_HI_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CLK_LO = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_LO_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CLK_LO_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CS_HOLD = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HOLD_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HOLD_SHIFT = common dso_local global i32 0, align 4
@CUSTOM_SPI_CS_HI = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HI_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_CS_HI_SHIFT = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_INS_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_INS_SHIFT = common dso_local global i32 0, align 4
@REG_SPI_FLASH_CTRL = common dso_local global i32 0, align 4
@SPI_FLASH_CTRL_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_hw*, i32, i32*)* @atl2_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_spi_read(%struct.atl2_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %11 = load i32, i32* @REG_SPI_DATA, align 4
  %12 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %10, i32 %11, i32 0)
  %13 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %14 = load i32, i32* @REG_SPI_ADDR, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @SPI_FLASH_CTRL_WAIT_READY, align 4
  %18 = load i32, i32* @CUSTOM_SPI_CS_SETUP, align 4
  %19 = load i32, i32* @SPI_FLASH_CTRL_CS_SETUP_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @SPI_FLASH_CTRL_CS_SETUP_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %17, %22
  %24 = load i32, i32* @CUSTOM_SPI_CLK_HI, align 4
  %25 = load i32, i32* @SPI_FLASH_CTRL_CLK_HI_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @SPI_FLASH_CTRL_CLK_HI_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load i32, i32* @CUSTOM_SPI_CLK_LO, align 4
  %31 = load i32, i32* @SPI_FLASH_CTRL_CLK_LO_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @SPI_FLASH_CTRL_CLK_LO_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load i32, i32* @CUSTOM_SPI_CS_HOLD, align 4
  %37 = load i32, i32* @SPI_FLASH_CTRL_CS_HOLD_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SPI_FLASH_CTRL_CS_HOLD_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %35, %40
  %42 = load i32, i32* @CUSTOM_SPI_CS_HI, align 4
  %43 = load i32, i32* @SPI_FLASH_CTRL_CS_HI_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SPI_FLASH_CTRL_CS_HI_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %41, %46
  %48 = load i32, i32* @SPI_FLASH_CTRL_INS_MASK, align 4
  %49 = and i32 1, %48
  %50 = load i32, i32* @SPI_FLASH_CTRL_INS_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %47, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %54 = load i32, i32* @REG_SPI_FLASH_CTRL, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @SPI_FLASH_CTRL_START, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %61 = load i32, i32* @REG_SPI_FLASH_CTRL, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %60, i32 %61, i32 %62)
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %78, %3
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 10
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = call i32 @msleep(i32 1)
  %69 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %70 = load i32, i32* @REG_SPI_FLASH_CTRL, align 4
  %71 = call i32 @ATL2_READ_REG(%struct.atl2_hw* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SPI_FLASH_CTRL_START, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %81

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %64

81:                                               ; preds = %76, %64
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @SPI_FLASH_CTRL_START, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %92

87:                                               ; preds = %81
  %88 = load %struct.atl2_hw*, %struct.atl2_hw** %5, align 8
  %89 = load i32, i32* @REG_SPI_DATA, align 4
  %90 = call i32 @ATL2_READ_REG(%struct.atl2_hw* %88, i32 %89)
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %86
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ATL2_WRITE_REG(%struct.atl2_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ATL2_READ_REG(%struct.atl2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
