; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32 }
%struct.hackrf_dev = type { i32, i32, i32, i32, i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.video_device = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"tuner=%d type=%d frequency=%u\0A\00", align 1
@bands_adc_dac = common dso_local global %struct.TYPE_4__* null, align 8
@VFL_DIR_RX = common dso_local global i64 0, align 8
@RX_ADC_FREQUENCY = common dso_local global i32 0, align 4
@TX_DAC_FREQUENCY = common dso_local global i32 0, align 4
@bands_rx_tx = common dso_local global %struct.TYPE_3__* null, align 8
@RX_RF_FREQUENCY = common dso_local global i32 0, align 4
@TX_RF_FREQUENCY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @hackrf_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.hackrf_dev*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.hackrf_dev* @video_drvdata(%struct.file* %13)
  store %struct.hackrf_dev* %14, %struct.hackrf_dev** %8, align 8
  %15 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %16 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %15, i32 0, i32 5
  %17 = load %struct.usb_interface*, %struct.usb_interface** %16, align 8
  store %struct.usb_interface* %17, %struct.usb_interface** %9, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = call %struct.video_device* @video_devdata(%struct.file* %18)
  store %struct.video_device* %19, %struct.video_device** %10, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %3
  %37 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bands_adc_dac, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bands_adc_dac, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clamp(i32 %39, i32 %43, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.video_device*, %struct.video_device** %10, align 8
  %50 = getelementptr inbounds %struct.video_device, %struct.video_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VFL_DIR_RX, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %36
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %57 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @RX_ADC_FREQUENCY, align 4
  %59 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %60 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %59, i32 0, i32 4
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  br label %70

62:                                               ; preds = %36
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %65 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @TX_DAC_FREQUENCY, align 4
  %67 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %68 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %67, i32 0, i32 4
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %62, %54
  br label %115

71:                                               ; preds = %3
  %72 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %111

76:                                               ; preds = %71
  %77 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands_rx_tx, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands_rx_tx, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clamp(i32 %79, i32 %83, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load %struct.video_device*, %struct.video_device** %10, align 8
  %90 = getelementptr inbounds %struct.video_device, %struct.video_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VFL_DIR_RX, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %76
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %97 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @RX_RF_FREQUENCY, align 4
  %99 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %100 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %99, i32 0, i32 4
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %110

102:                                              ; preds = %76
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %105 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @TX_RF_FREQUENCY, align 4
  %107 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %108 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %107, i32 0, i32 4
  %109 = call i32 @set_bit(i32 %106, i32* %108)
  br label %110

110:                                              ; preds = %102, %94
  br label %114

111:                                              ; preds = %71
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %122

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %70
  %116 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %117 = call i32 @hackrf_set_params(%struct.hackrf_dev* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %122

121:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %128

122:                                              ; preds = %120, %111
  %123 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %124 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %123, i32 0, i32 0
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %122, %121
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.hackrf_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hackrf_set_params(%struct.hackrf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
