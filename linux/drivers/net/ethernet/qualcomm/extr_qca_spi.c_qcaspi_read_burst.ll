; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_read_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_read_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i32 }
%struct.spi_message = type { i64 }
%struct.spi_transfer = type { i64, i32*, i32* }

@QCA7K_SPI_READ = common dso_local global i32 0, align 4
@QCA7K_SPI_EXTERNAL = common dso_local global i32 0, align 4
@QCASPI_CMD_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qcaspi*, i32*, i64)* @qcaspi_read_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qcaspi_read_burst(%struct.qcaspi* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.qcaspi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_message, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.spi_transfer], align 16
  %11 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = bitcast [2 x %struct.spi_transfer]* %10 to %struct.spi_transfer**
  %13 = call i32 @memset(%struct.spi_transfer** %12, i32 0, i32 48)
  %14 = call i32 @spi_message_init(%struct.spi_message* %8)
  %15 = load i32, i32* @QCA7K_SPI_READ, align 4
  %16 = load i32, i32* @QCA7K_SPI_EXTERNAL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @cpu_to_be16(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 2
  store i32* %9, i32** %20, align 16
  %21 = load i64, i64* @QCASPI_CMD_LEN, align 8
  %22 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 16
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %31 = call i32 @spi_message_add_tail(%struct.spi_transfer* %30, %struct.spi_message* %8)
  %32 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %33 = call i32 @spi_message_add_tail(%struct.spi_transfer* %32, %struct.spi_message* %8)
  %34 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %35 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spi_sync(i32 %36, %struct.spi_message* %8)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @QCASPI_CMD_LEN, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %3
  %48 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %49 = call i32 @qcaspi_spi_error(%struct.qcaspi* %48)
  store i64 0, i64* %4, align 8
  br label %52

50:                                               ; preds = %40
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @qcaspi_spi_error(%struct.qcaspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
