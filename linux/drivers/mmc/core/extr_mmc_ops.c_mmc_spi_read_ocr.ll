; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_spi_read_ocr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_spi_read_ocr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32*, i32, i32 }

@MMC_SPI_READ_OCR = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_spi_read_ocr(%struct.mmc_host* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = bitcast %struct.mmc_command* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @MMC_SPI_READ_OCR, align 4
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1073741824, i32 0
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @MMC_RSP_SPI_R3, align 4
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %20 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %19, %struct.mmc_command* %7, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
