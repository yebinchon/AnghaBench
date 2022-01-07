; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-spi.c_mc13xxx_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-spi.c_mc13xxx_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i8*, i8*, i32 }
%struct.spi_message = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64)* @mc13xxx_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_spi_read(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca [4 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.spi_device*, align 8
  %17 = alloca %struct.spi_transfer, align 8
  %18 = alloca %struct.spi_message, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.device*
  store %struct.device* %28, %struct.device** %15, align 8
  %29 = load %struct.device*, %struct.device** %15, align 8
  %30 = call %struct.spi_device* @to_spi_device(%struct.device* %29)
  store %struct.spi_device* %30, %struct.spi_device** %16, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  store i32 4, i32* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 3
  br i1 %37, label %41, label %38

38:                                               ; preds = %5
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %5
  %42 = load i32, i32* @ENOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %53

44:                                               ; preds = %38
  %45 = call i32 @spi_message_init(%struct.spi_message* %18)
  %46 = call i32 @spi_message_add_tail(%struct.spi_transfer* %17, %struct.spi_message* %18)
  %47 = load %struct.spi_device*, %struct.spi_device** %16, align 8
  %48 = call i32 @spi_sync(%struct.spi_device* %47, %struct.spi_message* %18)
  store i32 %48, i32* %19, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %51 = call i32 @memcpy(i8* %49, i8* %50, i32 3)
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %44, %41
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
