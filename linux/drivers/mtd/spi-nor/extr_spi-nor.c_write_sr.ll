; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_write_sr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_write_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 (%struct.spi_nor*, i32, i32*, i32)*, i32*, i64 }
%struct.spi_mem_op = type { i32 }

@SPINOR_OP_WRSR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @write_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_sr(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %9 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %13 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %18 = call i32 @SPI_MEM_OP_CMD(i32 %17, i32 1)
  %19 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %20 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %21 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %22 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @SPI_MEM_OP_DATA_OUT(i32 1, i32* %23, i32 1)
  %25 = call i32 @SPI_MEM_OP(i32 %18, i32 %19, i32 %20, i32 %24)
  %26 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %28 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @spi_mem_exec_op(i64 %29, %struct.spi_mem_op* %6)
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %33 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %32, i32 0, i32 0
  %34 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %33, align 8
  %35 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %36 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %37 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %38 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 %34(%struct.spi_nor* %35, i32 %36, i32* %39, i32 1)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %31, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
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
