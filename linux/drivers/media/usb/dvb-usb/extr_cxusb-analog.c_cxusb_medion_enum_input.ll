; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.v4l2_input }
%struct.v4l2_input = type { i64, i64, i32 }
%struct.file = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_3__*, %struct.cxusb_medion_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.cxusb_medion_dev = type { i64, i32 }

@CXUSB_INPUT_CNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@cxusb_medion_inputs = common dso_local global %struct.TYPE_4__* null, align 8
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_input_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cx25840 input status query failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @cxusb_medion_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_medion_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %13)
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %8, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 1
  %17 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %16, align 8
  store %struct.cxusb_medion_dev* %17, %struct.cxusb_medion_dev** %9, align 8
  %18 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @CXUSB_INPUT_CNT, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %70

27:                                               ; preds = %3
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxusb_medion_inputs, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = bitcast %struct.v4l2_input* %28 to i8*
  %34 = bitcast %struct.v4l2_input* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 24, i1 false)
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %45 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %27
  store i64 0, i64* %12, align 8
  %49 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %50 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @video, align 4
  %53 = load i32, i32* @g_input_status, align 4
  %54 = call i32 @v4l2_subdev_call(i32 %51, i32 %52, i32 %53, i64* %12)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @dev_warn(i32* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %68

64:                                               ; preds = %48
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %27
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
