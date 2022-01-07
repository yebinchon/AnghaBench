; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spansion_set_4byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spansion_set_4byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32*, i32 (%struct.spi_nor*, i32, i32*, i32)*, i64 }
%struct.spi_mem_op = type { i32 }

@SPINOR_OP_BRWR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @spansion_set_4byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spansion_set_4byte(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = shl i32 %7, 7
  %9 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %10 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i32, i32* @SPINOR_OP_BRWR, align 4
  %19 = call i32 @SPI_MEM_OP_CMD(i32 %18, i32 1)
  %20 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %21 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %22 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %23 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @SPI_MEM_OP_DATA_OUT(i32 1, i32* %24, i32 1)
  %26 = call i32 @SPI_MEM_OP(i32 %19, i32 %20, i32 %21, i32 %25)
  %27 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %29 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @spi_mem_exec_op(i64 %30, %struct.spi_mem_op* %6)
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %34 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %33, i32 0, i32 1
  %35 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %34, align 8
  %36 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %37 = load i32, i32* @SPINOR_OP_BRWR, align 4
  %38 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %39 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 %35(%struct.spi_nor* %36, i32 %37, i32* %40, i32 1)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_OUT(i32, i32*, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
