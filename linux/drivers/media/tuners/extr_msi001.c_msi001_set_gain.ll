; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi001_dev = type { %struct.spi_device* }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"lna=%d mixer=%d if=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msi001_dev*, i32, i32, i32)* @msi001_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi001_set_gain(%struct.msi001_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msi001_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msi001_dev* %0, %struct.msi001_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.msi001_dev*, %struct.msi001_dev** %6, align 8
  %14 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %13, i32 0, i32 0
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %10, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  store i32 1, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 59, %22
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 1, %28
  %30 = shl i32 %29, 12
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 1, %33
  %35 = shl i32 %34, 13
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, 65536
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.msi001_dev*, %struct.msi001_dev** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @msi001_wreg(%struct.msi001_dev* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  br label %48

47:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

48:                                               ; preds = %46
  %49 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %47
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @msi001_wreg(%struct.msi001_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
