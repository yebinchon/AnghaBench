; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_check_readop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_check_readop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 }
%struct.spi_nor_read_command = type { i32, i32, i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.spi_nor_read_command*)* @spi_nor_spimem_check_readop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_spimem_check_readop(%struct.spi_nor* %0, %struct.spi_nor_read_command* %1) #0 {
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca %struct.spi_nor_read_command*, align 8
  %5 = alloca %struct.spi_mem_op, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  store %struct.spi_nor_read_command* %1, %struct.spi_nor_read_command** %4, align 8
  %6 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %7 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @SPI_MEM_OP_CMD(i32 %8, i32 1)
  %10 = call i32 @SPI_MEM_OP_ADDR(i32 3, i32 0, i32 1)
  %11 = call i32 @SPI_MEM_OP_DUMMY(i32 0, i32 1)
  %12 = call i32 @SPI_MEM_OP_DATA_IN(i32 0, i32* null, i32 1)
  call void @SPI_MEM_OP(%struct.spi_mem_op* sret %5, i32 %9, i32 %10, i32 %11, i32 %12)
  %13 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %14 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @spi_nor_get_protocol_inst_nbits(i32 %15)
  %17 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %20 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @spi_nor_get_protocol_addr_nbits(i32 %21)
  %23 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %26 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @spi_nor_get_protocol_data_nbits(i32 %27)
  %29 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %37 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.spi_nor_read_command*, %struct.spi_nor_read_command** %4, align 8
  %40 = getelementptr inbounds %struct.spi_nor_read_command, %struct.spi_nor_read_command* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 8
  %48 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %51 = call i32 @spi_nor_spimem_check_op(%struct.spi_nor* %50, %struct.spi_mem_op* %5)
  ret i32 %51
}

declare dso_local void @SPI_MEM_OP(%struct.spi_mem_op* sret, i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_ADDR(i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DUMMY(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_IN(i32, i32*, i32) #1

declare dso_local i32 @spi_nor_get_protocol_inst_nbits(i32) #1

declare dso_local i32 @spi_nor_get_protocol_addr_nbits(i32) #1

declare dso_local i32 @spi_nor_get_protocol_data_nbits(i32) #1

declare dso_local i32 @spi_nor_spimem_check_op(%struct.spi_nor*, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
