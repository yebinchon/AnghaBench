; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.falcon_spi_device = type { i32 }

@FALCON_SPI_MAX_LEN = common dso_local global i32 0, align 4
@SPI_READ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, %struct.falcon_spi_device*, i64, i64, i64*, i32*)* @falcon_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_spi_read(%struct.ef4_nic* %0, %struct.falcon_spi_device* %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.ef4_nic*, align 8
  %8 = alloca %struct.falcon_spi_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %7, align 8
  store %struct.falcon_spi_device* %1, %struct.falcon_spi_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %58, %6
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %14, align 8
  %24 = sub i64 %22, %23
  %25 = load i32, i32* @FALCON_SPI_MAX_LEN, align 4
  %26 = call i64 @min(i64 %24, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %8, align 8
  %28 = load i32, i32* @SPI_READ, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %14, align 8
  %31 = add i64 %29, %30
  %32 = call i32 @falcon_spi_munge_command(%struct.falcon_spi_device* %27, i32 %28, i64 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %7, align 8
  %34 = load %struct.falcon_spi_device*, %struct.falcon_spi_device** %8, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %14, align 8
  %38 = add i64 %36, %37
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @falcon_spi_cmd(%struct.ef4_nic* %33, %struct.falcon_spi_device* %34, i32 %35, i64 %38, i32* null, i32* %41, i64 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %21
  br label %59

47:                                               ; preds = %21
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %14, align 8
  %51 = call i32 (...) @cond_resched()
  %52 = load i32, i32* @current, align 4
  %53 = call i64 @signal_pending(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINTR, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %16, align 4
  br label %59

58:                                               ; preds = %47
  br label %17

59:                                               ; preds = %55, %46, %17
  %60 = load i64*, i64** %11, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %14, align 8
  %64 = load i64*, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %16, align 4
  ret i32 %66
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @falcon_spi_munge_command(%struct.falcon_spi_device*, i32, i64) #1

declare dso_local i32 @falcon_spi_cmd(%struct.ef4_nic*, %struct.falcon_spi_device*, i32, i64, i32*, i32*, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
