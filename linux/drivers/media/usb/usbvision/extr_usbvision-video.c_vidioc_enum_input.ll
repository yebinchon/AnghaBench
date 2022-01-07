; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i8*, i32, i8* }
%struct.usb_usbvision = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@usbvision_device_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"White Video Input\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_INPUT_TYPE_TUNER = common dso_local global i8* null, align 8
@USBVISION_NORMS = common dso_local global i8* null, align 8
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Green Video Input\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Composite Video Input\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Yellow Video Input\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"S-Video Input\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Red Video Input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.usb_usbvision*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %10)
  store %struct.usb_usbvision* %11, %struct.usb_usbvision** %8, align 8
  %12 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %16 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %131

22:                                               ; preds = %3
  %23 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %24 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %130 [
    i32 0, label %38
    i32 1, label %67
    i32 2, label %93
    i32 3, label %119
  ]

38:                                               ; preds = %36
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %40 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %41 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @strscpy(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %66

52:                                               ; preds = %38
  %53 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strscpy(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %57 = load i8*, i8** @V4L2_INPUT_TYPE_TUNER, align 8
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i8*, i8** @USBVISION_NORMS, align 8
  %64 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %52, %47
  br label %130

67:                                               ; preds = %36
  %68 = load i8*, i8** @V4L2_INPUT_TYPE_CAMERA, align 8
  %69 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %72 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %73 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @strscpy(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %89

84:                                               ; preds = %67
  %85 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @strscpy(i32 %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i8*, i8** @USBVISION_NORMS, align 8
  %91 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  br label %130

93:                                               ; preds = %36
  %94 = load i8*, i8** @V4L2_INPUT_TYPE_CAMERA, align 8
  %95 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %98 = load %struct.usb_usbvision*, %struct.usb_usbvision** %8, align 8
  %99 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strscpy(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 4)
  br label %115

110:                                              ; preds = %93
  %111 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @strscpy(i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i8*, i8** @USBVISION_NORMS, align 8
  %117 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  br label %130

119:                                              ; preds = %36
  %120 = load i8*, i8** @V4L2_INPUT_TYPE_CAMERA, align 8
  %121 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @strscpy(i32 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %127 = load i8*, i8** @USBVISION_NORMS, align 8
  %128 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %36, %119, %115, %89, %66
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %19
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
