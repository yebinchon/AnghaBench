; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_field_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_field_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxusb_medion_dev = type { i64, i32, i32, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@g_std = common dso_local global i32 0, align 4
@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot get current standard for input %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"cannot determine field order for the current standard setup and received signal, using TB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cxusb_medion_dev*)* @cxusb_medion_field_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cxusb_medion_field_order(%struct.cxusb_medion_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cxusb_medion_dev*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxusb_medion_dev* %0, %struct.cxusb_medion_dev** %3, align 8
  %8 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %8, i32 0, i32 3
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  store %struct.dvb_usb_device* %10, %struct.dvb_usb_device** %4, align 8
  %11 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  store i64 %16, i64* %2, align 8
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @cxusb_medion_norm2field_order(i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %2, align 8
  br label %60

27:                                               ; preds = %17
  %28 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %29 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @video, align 4
  %32 = load i32, i32* @g_std, align 4
  %33 = call i32 @v4l2_subdev_call(i32 %30, i32 %31, i32 %32, i32* %7)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %38 = load i32, i32* @OPS, align 4
  %39 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %40 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %37, i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %53

44:                                               ; preds = %27
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @cxusb_medion_norm2field_order(i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* %5, align 8
  store i64 %51, i64* %2, align 8
  br label %60

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %53, %50, %25, %15
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i64 @cxusb_medion_norm2field_order(i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
