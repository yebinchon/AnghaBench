; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_spi_write_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_spi_write_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54s_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPI_ADRS_DMA_WRITE_CTRL = common dso_local global i32 0, align 4
@HOST_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"spi_write_dma not allowed to DMA write.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SPI_DMA_WRITE_CTRL_ENABLE = common dso_local global i64 0, align 8
@SPI_ADRS_DMA_WRITE_LEN = common dso_local global i32 0, align 4
@SPI_ADRS_DMA_WRITE_BASE = common dso_local global i32 0, align 4
@SPI_ADRS_DMA_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54s_priv*, i32, i8*, i64)* @p54spi_spi_write_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54spi_spi_write_dma(%struct.p54s_priv* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p54s_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.p54s_priv* %0, %struct.p54s_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.p54s_priv*, %struct.p54s_priv** %6, align 8
  %11 = load i32, i32* @SPI_ADRS_DMA_WRITE_CTRL, align 4
  %12 = load i32, i32* @HOST_ALLOWED, align 4
  %13 = call i32 @p54spi_wait_bit(%struct.p54s_priv* %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load %struct.p54s_priv*, %struct.p54s_priv** %6, align 8
  %17 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %43

23:                                               ; preds = %4
  %24 = load %struct.p54s_priv*, %struct.p54s_priv** %6, align 8
  %25 = load i32, i32* @SPI_ADRS_DMA_WRITE_CTRL, align 4
  %26 = load i64, i64* @SPI_DMA_WRITE_CTRL_ENABLE, align 8
  %27 = call i32 @cpu_to_le16(i64 %26)
  %28 = call i32 @p54spi_write16(%struct.p54s_priv* %24, i32 %25, i32 %27)
  %29 = load %struct.p54s_priv*, %struct.p54s_priv** %6, align 8
  %30 = load i32, i32* @SPI_ADRS_DMA_WRITE_LEN, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @cpu_to_le16(i64 %31)
  %33 = call i32 @p54spi_write16(%struct.p54s_priv* %29, i32 %30, i32 %32)
  %34 = load %struct.p54s_priv*, %struct.p54s_priv** %6, align 8
  %35 = load i32, i32* @SPI_ADRS_DMA_WRITE_BASE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @p54spi_write32(%struct.p54s_priv* %34, i32 %35, i32 %36)
  %38 = load %struct.p54s_priv*, %struct.p54s_priv** %6, align 8
  %39 = load i32, i32* @SPI_ADRS_DMA_DATA, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @p54spi_spi_write(%struct.p54s_priv* %38, i32 %39, i8* %40, i64 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %23, %15
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @p54spi_wait_bit(%struct.p54s_priv*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @p54spi_write16(%struct.p54s_priv*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @p54spi_write32(%struct.p54s_priv*, i32, i32) #1

declare dso_local i32 @p54spi_spi_write(%struct.p54s_priv*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
