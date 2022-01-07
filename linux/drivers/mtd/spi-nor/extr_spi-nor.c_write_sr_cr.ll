; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_write_sr_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_write_sr_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 (%struct.spi_nor*, i32, i32*, i32)*, i32, i64 }
%struct.spi_mem_op = type { i32 }

@SPINOR_OP_WRSR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_ADDR = common dso_local global i32 0, align 4
@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"error while writing configuration register\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"timeout while writing configuration register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32*)* @write_sr_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_sr_cr(%struct.spi_nor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %9 = call i32 @write_enable(%struct.spi_nor* %8)
  %10 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %16 = call i32 @SPI_MEM_OP_CMD(i32 %15, i32 1)
  %17 = load i32, i32* @SPI_MEM_OP_NO_ADDR, align 4
  %18 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @SPI_MEM_OP_DATA_OUT(i32 2, i32* %19, i32 1)
  %21 = call i32 @SPI_MEM_OP(i32 %16, i32 %17, i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %24 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @spi_mem_exec_op(i64 %25, %struct.spi_mem_op* %7)
  store i32 %26, i32* %6, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %29 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %28, i32 0, i32 0
  %30 = load i32 (%struct.spi_nor*, i32, i32*, i32)*, i32 (%struct.spi_nor*, i32, i32*, i32)** %29, align 8
  %31 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %32 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 %30(%struct.spi_nor* %31, i32 %32, i32* %33, i32 2)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %27, %14
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %40 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %57

45:                                               ; preds = %35
  %46 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %47 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %52 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %50, %38
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @write_enable(%struct.spi_nor*) #1

declare dso_local i32 @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_OUT(i32, i32*, i32) #1

declare dso_local i32 @spi_mem_exec_op(i64, %struct.spi_mem_op*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spi_nor_wait_till_ready(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
