; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_check_pp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_spimem_check_pp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 }
%struct.spi_nor_pp_command = type { i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SPI_MEM_OP_NO_DUMMY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.spi_nor_pp_command*)* @spi_nor_spimem_check_pp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_spimem_check_pp(%struct.spi_nor* %0, %struct.spi_nor_pp_command* %1) #0 {
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca %struct.spi_nor_pp_command*, align 8
  %5 = alloca %struct.spi_mem_op, align 4
  %6 = alloca { i64, i32 }, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  store %struct.spi_nor_pp_command* %1, %struct.spi_nor_pp_command** %4, align 8
  %7 = load %struct.spi_nor_pp_command*, %struct.spi_nor_pp_command** %4, align 8
  %8 = getelementptr inbounds %struct.spi_nor_pp_command, %struct.spi_nor_pp_command* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @SPI_MEM_OP_CMD(i32 %9, i32 1)
  %11 = call i32 @SPI_MEM_OP_ADDR(i32 3, i32 0, i32 1)
  %12 = load i32, i32* @SPI_MEM_OP_NO_DUMMY, align 4
  %13 = call i32 @SPI_MEM_OP_DATA_OUT(i32 0, i32* null, i32 1)
  %14 = call { i64, i32 } @SPI_MEM_OP(i32 %10, i32 %11, i32 %12, i32 %13)
  store { i64, i32 } %14, { i64, i32 }* %6, align 8
  %15 = bitcast { i64, i32 }* %6 to i8*
  %16 = bitcast %struct.spi_mem_op* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 8 %15, i64 12, i1 false)
  %17 = load %struct.spi_nor_pp_command*, %struct.spi_nor_pp_command** %4, align 8
  %18 = getelementptr inbounds %struct.spi_nor_pp_command, %struct.spi_nor_pp_command* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spi_nor_get_protocol_inst_nbits(i32 %19)
  %21 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.spi_nor_pp_command*, %struct.spi_nor_pp_command** %4, align 8
  %24 = getelementptr inbounds %struct.spi_nor_pp_command, %struct.spi_nor_pp_command* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @spi_nor_get_protocol_addr_nbits(i32 %25)
  %27 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.spi_nor_pp_command*, %struct.spi_nor_pp_command** %4, align 8
  %30 = getelementptr inbounds %struct.spi_nor_pp_command, %struct.spi_nor_pp_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spi_nor_get_protocol_data_nbits(i32 %31)
  %33 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %36 = call i32 @spi_nor_spimem_check_op(%struct.spi_nor* %35, %struct.spi_mem_op* %5)
  ret i32 %36
}

declare dso_local { i64, i32 } @SPI_MEM_OP(i32, i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_CMD(i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_ADDR(i32, i32, i32) #1

declare dso_local i32 @SPI_MEM_OP_DATA_OUT(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spi_nor_get_protocol_inst_nbits(i32) #1

declare dso_local i32 @spi_nor_get_protocol_addr_nbits(i32) #1

declare dso_local i32 @spi_nor_get_protocol_data_nbits(i32) #1

declare dso_local i32 @spi_nor_spimem_check_op(%struct.spi_nor*, %struct.spi_mem_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
