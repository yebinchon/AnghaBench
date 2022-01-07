; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i8*, i8*, i32 }
%struct.spi_message = type { i32 }

@SJA1105_SIZE_SPI_TRANSFER_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SPI message (%d) longer than max of %d\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SPI transfer failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i8*, i8*, i32)* @sja1105_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_spi_transfer(%struct.sja1105_private* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_private*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca %struct.spi_transfer, align 8
  %12 = alloca %struct.spi_message, align 4
  %13 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %6, align 8
  %15 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %14, i32 0, i32 0
  %16 = load %struct.spi_device*, %struct.spi_device** %15, align 8
  store %struct.spi_device* %16, %struct.spi_device** %10, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %19, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SJA1105_SIZE_SPI_TRANSFER_MAX, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SJA1105_SIZE_SPI_TRANSFER_MAX, align 4
  %31 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %4
  %35 = call i32 @spi_message_init(%struct.spi_message* %12)
  %36 = call i32 @spi_message_add_tail(%struct.spi_transfer* %11, %struct.spi_message* %12)
  %37 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %38 = call i32 @spi_sync(%struct.spi_device* %37, %struct.spi_message* %12)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %13, align 4
  %45 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %41, %26
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
