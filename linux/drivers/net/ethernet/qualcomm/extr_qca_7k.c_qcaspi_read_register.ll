; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k.c_qcaspi_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k.c_qcaspi_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i32, i64 }
%struct.spi_transfer = type { i8*, i32*, i32* }
%struct.spi_message = type { i32 }

@QCA7K_SPI_READ = common dso_local global i32 0, align 4
@QCA7K_SPI_INTERNAL = common dso_local global i32 0, align 4
@QCASPI_CMD_LEN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcaspi_read_register(%struct.qcaspi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qcaspi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.spi_transfer], align 16
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %13 = call i32 @memset(%struct.spi_transfer* %12, i32 0, i32 48)
  %14 = call i32 @spi_message_init(%struct.spi_message* %10)
  %15 = load i32, i32* @QCA7K_SPI_READ, align 4
  %16 = load i32, i32* @QCA7K_SPI_INTERNAL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @cpu_to_be16(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 2
  store i32* %8, i32** %23, align 16
  %24 = load i8*, i8** @QCASPI_CMD_LEN, align 8
  %25 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 16
  %27 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 1
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 1
  store i32* %7, i32** %28, align 8
  %29 = load i8*, i8** @QCASPI_CMD_LEN, align 8
  %30 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 1
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 0
  %33 = call i32 @spi_message_add_tail(%struct.spi_transfer* %32, %struct.spi_message* %10)
  %34 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %35 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %40 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @spi_sync(i32 %41, %struct.spi_message* %10)
  %43 = call i32 @spi_message_init(%struct.spi_message* %10)
  br label %44

44:                                               ; preds = %38, %3
  %45 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %9, i64 0, i64 1
  %46 = call i32 @spi_message_add_tail(%struct.spi_transfer* %45, %struct.spi_message* %10)
  %47 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %48 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @spi_sync(i32 %49, %struct.spi_message* %10)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %44
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %61 = call i32 @qcaspi_spi_error(%struct.qcaspi* %60)
  br label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @be16_to_cpu(i32 %63)
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @qcaspi_spi_error(%struct.qcaspi*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
