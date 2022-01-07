; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_winbond.c_w25m02gv_select_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_winbond.c_w25m02gv_select_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinand_device = type { i32*, i32 }
%struct.spi_mem_op = type { i32 }

@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spinand_device*, i32)* @w25m02gv_select_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w25m02gv_select_target(%struct.spinand_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spinand_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_mem_op, align 4
  store %struct.spinand_device* %0, %struct.spinand_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @SPI_MEM_OP_CMD(i32 194, i32 1)
  %7 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %8 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %9 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %10 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @SPI_MEM_OP_DATA_OUT(i32 1, i32* %11, i32 1)
  %13 = call i32 @SPI_MEM_OP(i32 %6, i32 %7, i32 %8, i32 %12)
  %14 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %17 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32 %15, i32* %18, align 4
  %19 = load %struct.spinand_device*, %struct.spinand_device** %3, align 8
  %20 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @spi_mem_exec_op(i32 %21, %struct.spi_mem_op* %5)
  ret i32 %22
}

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_OUT(i32, i32*, i32) #1

declare dso_local i32 @spi_mem_exec_op(i32, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
