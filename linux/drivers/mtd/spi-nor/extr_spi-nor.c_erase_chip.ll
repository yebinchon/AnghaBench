; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_erase_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_erase_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 (%struct.spi_nor*, i32, i32*, i32)*, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_mem_op = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c" %lldKiB\0A\00", align 1
@SPINOR_OP_CHIP_ERASE = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @erase_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_chip(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %5 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %6 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %9 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 10
  %13 = sext i32 %12 to i64
  %14 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %16 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @SPINOR_OP_CHIP_ERASE, align 4
  %21 = call i32 @SPI_MEM_OP_CMD(i32 %20, i32 1)
  %22 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %23 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %24 = load i32, i32* @SPI_MEM_OP_NO_DATA, align 4
  %25 = call i32 @SPI_MEM_OP(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %4, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %28 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @spi_mem_exec_op(i64 %29, %struct.spi_mem_op* %4)
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %33 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %32, i32 0, i32 0
  %34 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %33, align 8
  %35 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %36 = load i32, i32* @SPINOR_OP_CHIP_ERASE, align 4
  %37 = call i32 %34(%struct.spi_nor* %35, i32 %36, i32* null, i32 0)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
