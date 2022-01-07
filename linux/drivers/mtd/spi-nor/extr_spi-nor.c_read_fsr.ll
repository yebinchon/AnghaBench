; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_read_fsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_read_fsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32*, i32 (%struct.spi_nor*, i32, i32*, i32)*, i64 }
%struct.spi_mem_op = type { i32 }

@SPINOR_OP_RDFSR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"error %d reading FSR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @read_fsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_fsr(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %6 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %7 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @SPINOR_OP_RDFSR, align 4
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
  %22 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @spi_mem_exec_op(i64 %23, %struct.spi_mem_op* %5)
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %27 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %26, i32 0, i32 1
  %28 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %27, align 8
  %29 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %30 = load i32, i32* @SPINOR_OP_RDFSR, align 4
  %31 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %32 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 %28(%struct.spi_nor* %29, i32 %30, i32* %33, i32 1)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %25, %10
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %35
  %43 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %44 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_IN(i32, i32*, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
