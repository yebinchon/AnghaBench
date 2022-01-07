; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k.c___qcaspi_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k.c___qcaspi_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i32, i64 }
%struct.spi_transfer = type { i8*, i32* }
%struct.spi_message = type { i32 }

@QCA7K_SPI_WRITE = common dso_local global i32 0, align 4
@QCA7K_SPI_INTERNAL = common dso_local global i32 0, align 4
@QCASPI_CMD_LEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcaspi*, i32, i32)* @__qcaspi_write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qcaspi_write_register(%struct.qcaspi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qcaspi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x %struct.spi_transfer], align 16
  %9 = alloca %struct.spi_message, align 4
  %10 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = bitcast [2 x %struct.spi_transfer]* %8 to %struct.spi_transfer**
  %12 = call i32 @memset(%struct.spi_transfer** %11, i32 0, i32 32)
  %13 = call i32 @spi_message_init(%struct.spi_message* %9)
  %14 = load i32, i32* @QCA7K_SPI_WRITE, align 4
  %15 = load i32, i32* @QCA7K_SPI_INTERNAL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @cpu_to_be16(i32 %18)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @cpu_to_be16(i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load i8*, i8** @QCASPI_CMD_LEN, align 8
  %28 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 16
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %31 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 1
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load i8*, i8** @QCASPI_CMD_LEN, align 8
  %34 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 1
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 16
  %36 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %37 = call i32 @spi_message_add_tail(%struct.spi_transfer* %36, %struct.spi_message* %9)
  %38 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %39 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %44 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @spi_sync(i32 %45, %struct.spi_message* %9)
  %47 = call i32 @spi_message_init(%struct.spi_message* %9)
  br label %48

48:                                               ; preds = %42, %3
  %49 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 1
  %50 = call i32 @spi_message_add_tail(%struct.spi_transfer* %49, %struct.spi_message* %9)
  %51 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %52 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @spi_sync(i32 %53, %struct.spi_message* %9)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %65 = call i32 @qcaspi_spi_error(%struct.qcaspi* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %10, align 4
  ret i32 %67
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
