; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_read_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_read_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i32 }
%struct.spi_message = type { i64 }
%struct.spi_transfer = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qcaspi*, i32*, i64)* @qcaspi_read_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qcaspi_read_legacy(%struct.qcaspi* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.qcaspi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_message, align 8
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 16)
  %12 = call i32 @spi_message_init(%struct.spi_message* %8)
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i32* %13, i32** %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %8)
  %18 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %19 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @spi_sync(i32 %20, %struct.spi_message* %8)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %3
  %30 = load %struct.qcaspi*, %struct.qcaspi** %5, align 8
  %31 = call i32 @qcaspi_spi_error(%struct.qcaspi* %30)
  store i64 0, i64* %4, align 8
  br label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @qcaspi_spi_error(%struct.qcaspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
