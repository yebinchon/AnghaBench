; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { i32 }
%struct.dvb_usb_device = type { %struct.cxusb_medion_dev* }
%struct.cxusb_medion_dev = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@CXUSB_INPUT_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@cxusb_medion_inputs = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @cxusb_medion_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_medion_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %15, align 8
  store %struct.cxusb_medion_dev* %16, %struct.cxusb_medion_dev** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CXUSB_INPUT_CNT, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %80

23:                                               ; preds = %3
  %24 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %25 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @video, align 4
  %28 = load i32, i32* @s_routing, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxusb_medion_inputs, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @v4l2_subdev_call(i32 %26, i32 %27, i32 %28, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %80

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %43 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxusb_medion_inputs, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %52 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %56 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxusb_medion_inputs, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %57, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %40
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cxusb_medion_inputs, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %68, %40
  %77 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @cxusb_medion_set_norm(%struct.cxusb_medion_dev* %77, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %38, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cxusb_medion_set_norm(%struct.cxusb_medion_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
