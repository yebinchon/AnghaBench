; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_calc_rdreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_calc_rdreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.cqspi_flash_pdata* }
%struct.cqspi_flash_pdata = type { i32, i32, i32 }

@CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB = common dso_local global i32 0, align 4
@CQSPI_REG_RD_INSTR_TYPE_ADDR_LSB = common dso_local global i32 0, align 4
@CQSPI_REG_RD_INSTR_TYPE_DATA_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @cqspi_calc_rdreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_calc_rdreg(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cqspi_flash_pdata*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %8 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %7, i32 0, i32 0
  %9 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %8, align 8
  store %struct.cqspi_flash_pdata* %9, %struct.cqspi_flash_pdata** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %5, align 8
  %11 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CQSPI_REG_RD_INSTR_TYPE_INSTR_LSB, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %5, align 8
  %18 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CQSPI_REG_RD_INSTR_TYPE_ADDR_LSB, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %5, align 8
  %25 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CQSPI_REG_RD_INSTR_TYPE_DATA_LSB, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
