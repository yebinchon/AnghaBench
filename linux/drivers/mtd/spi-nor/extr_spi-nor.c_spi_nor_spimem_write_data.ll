; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i64, i64, i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@SPINOR_OP_AAI_WP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i64, i32*)* @spi_nor_spimem_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_spimem_write_data(%struct.spi_nor* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.spi_mem_op, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @SPI_MEM_OP_CMD(i64 %12, i32 1)
  %14 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SPI_MEM_OP_ADDR(i32 %16, i32 %17, i32 1)
  %19 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @SPI_MEM_OP_DATA_OUT(i64 %20, i32* %21, i32 1)
  call void @SPI_MEM_OP(%struct.spi_mem_op* sret %9, i32 %13, i32 %18, i32 %19, i32 %22)
  %23 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %24 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @spi_nor_get_protocol_inst_nbits(i32 %25)
  %27 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @spi_nor_get_protocol_addr_nbits(i32 %31)
  %33 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %36 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @spi_nor_get_protocol_data_nbits(i32 %37)
  %39 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %42 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPINOR_OP_AAI_WP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %4
  %47 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %48 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %46, %4
  %55 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %56 = call i32 @spi_nor_spimem_xfer_data(%struct.spi_nor* %55, %struct.spi_mem_op* %9)
  ret i32 %56
}

declare dso_local void @SPI_MEM_OP(%struct.spi_mem_op* sret, i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i64, i32) #1

declare dso_local i32 @SPI_MEM_OP_ADDR(i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_OUT(i64, i32*, i32) #1

declare dso_local i32 @spi_nor_get_protocol_inst_nbits(i32) #1

declare dso_local i32 @spi_nor_get_protocol_addr_nbits(i32) #1

declare dso_local i32 @spi_nor_get_protocol_data_nbits(i32) #1

declare dso_local i32 @spi_nor_spimem_xfer_data(%struct.spi_nor*, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
