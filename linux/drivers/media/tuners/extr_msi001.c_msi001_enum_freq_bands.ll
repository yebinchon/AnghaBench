; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_enum_freq_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_msi001.c_msi001_enum_freq_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency_band = type { i64, i32, i32, i32, i32, i32 }
%struct.msi001_dev = type { %struct.spi_device* }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"tuner=%d type=%d index=%d\0A\00", align 1
@bands = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency_band*)* @msi001_enum_freq_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi001_enum_freq_bands(%struct.v4l2_subdev* %0, %struct.v4l2_frequency_band* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frequency_band*, align 8
  %6 = alloca %struct.msi001_dev*, align 8
  %7 = alloca %struct.spi_device*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frequency_band* %1, %struct.v4l2_frequency_band** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev* %8)
  store %struct.msi001_dev* %9, %struct.msi001_dev** %6, align 8
  %10 = load %struct.msi001_dev*, %struct.msi001_dev** %6, align 8
  %11 = getelementptr inbounds %struct.msi001_dev, %struct.msi001_dev* %10, i32 0, i32 0
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %7, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i64 %23)
  %25 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %29 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %28)
  %30 = icmp uge i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %36 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %45 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %54 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_frequency_band*, %struct.v4l2_frequency_band** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_frequency_band, %struct.v4l2_frequency_band* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %34, %31
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.msi001_dev* @sd_to_msi001_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
