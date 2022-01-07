; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_read_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_read_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32*, i32 (%struct.spi_nor*, i32, i32*, i32)*, i32, i64 }
%struct.spi_mem_op = type { i32 }

@SPINOR_OP_RDCR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error %d reading CR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @read_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cr(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %6 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %7 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @SPINOR_OP_RDCR, align 4
  %12 = call i32 @SPI_MEM_OP_CMD(i32 %11, i32 1)
  %13 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %14 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %15 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %16 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @SPI_MEM_OP_DATA_IN(i32 1, i32* %17, i32 1)
  %19 = call i32 @SPI_MEM_OP(i32 %12, i32 %13, i32 %14, i32 %18)
  %20 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %22 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @spi_mem_exec_op(i64 %23, %struct.spi_mem_op* %5)
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %27 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %26, i32 0, i32 1
  %28 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %27, align 8
  %29 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %30 = load i32, i32* @SPINOR_OP_RDCR, align 4
  %31 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %32 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 %28(%struct.spi_nor* %29, i32 %30, i32* %33, i32 1)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %10
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %40 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %47 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_IN(i32, i32*, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
