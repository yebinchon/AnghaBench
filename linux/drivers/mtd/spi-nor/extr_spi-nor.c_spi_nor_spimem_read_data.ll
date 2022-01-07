; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32, i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i64, i32*)* @spi_nor_spimem_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_spimem_read_data(%struct.spi_nor* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SPI_MEM_OP_CMD(i32 %12, i32 1)
  %14 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @SPI_MEM_OP_ADDR(i32 %16, i32 %17, i32 1)
  %19 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %20 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SPI_MEM_OP_DUMMY(i32 %21, i32 1)
  %23 = load i64, i64* %7, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @SPI_MEM_OP_DATA_IN(i64 %23, i32* %24, i32 1)
  call void @SPI_MEM_OP(%struct.spi_mem_op* sret %9, i32 %13, i32 %18, i32 %22, i32 %25)
  %26 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %27 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @spi_nor_get_protocol_inst_nbits(i32 %28)
  %30 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %33 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spi_nor_get_protocol_addr_nbits(i32 %34)
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %44 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spi_nor_get_protocol_data_nbits(i32 %45)
  %47 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %50 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = sdiv i32 %55, 8
  %57 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %9, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %60 = call i32 @spi_nor_spimem_xfer_data(%struct.spi_nor* %59, %struct.spi_mem_op* %9)
  ret i32 %60
}

declare dso_local void @SPI_MEM_OP(%struct.spi_mem_op* sret, i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_ADDR(i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DUMMY(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_IN(i64, i32*, i32) #1

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
