; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_set_norm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_set_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxusb_medion_dev = type { i64, i32, i32, i32, i32, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"trying to set standard for input %u to %lx\0A\00", align 1
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tda9887 norm setup failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"tuner norm setup failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cx25840 norm setup failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxusb_medion_dev*, i32)* @cxusb_medion_set_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_set_norm(%struct.cxusb_medion_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxusb_medion_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.cxusb_medion_dev* %0, %struct.cxusb_medion_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %8, i32 0, i32 5
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  store %struct.dvb_usb_device* %10, %struct.dvb_usb_device** %6, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %12 = load i32, i32* @OPS, align 4
  %13 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %14 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %11, i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %112

26:                                               ; preds = %2
  %27 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %28 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %33 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @video, align 4
  %36 = load i32, i32* @s_std, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @v4l2_subdev_call(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %112

43:                                               ; preds = %31
  br label %108

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @V4L2_STD_PAL, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %112

53:                                               ; preds = %44
  %54 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %55 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @video, align 4
  %58 = load i32, i32* @s_std, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @v4l2_subdev_call(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %112

71:                                               ; preds = %53
  %72 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %73 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @video, align 4
  %76 = load i32, i32* @s_std, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @v4l2_subdev_call(i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %112

89:                                               ; preds = %71
  %90 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %91 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @video, align 4
  %94 = load i32, i32* @s_std, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @v4l2_subdev_call(i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %112

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %43
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %111 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %99, %81, %63, %50, %41, %23
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i32, i64) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
