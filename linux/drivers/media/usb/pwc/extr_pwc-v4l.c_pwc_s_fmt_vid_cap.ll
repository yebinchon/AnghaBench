; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pwc_device = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Trying to set format to: width=%d height=%d fps=%d format=%c%c%c%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"pwc_set_video_mode(), return=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @pwc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.pwc_device* @video_drvdata(%struct.file* %12)
  store %struct.pwc_device* %13, %struct.pwc_device** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = call i32 @pwc_vidioc_try_fmt(%struct.pwc_device* %14, %struct.v4l2_format* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %3
  %22 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %23 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %22, i32 0, i32 4
  %24 = call i64 @vb2_is_busy(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %87

29:                                               ; preds = %21
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %46 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = load i32, i32* %10, align 4
  %54 = ashr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 24
  %58 = and i32 %57, 255
  %59 = call i32 (i8*, i32, ...) @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44, i32 %47, i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @pwc_set_video_mode(%struct.pwc_device* %60, i32 %65, i32 %70, i32 %71, i32 30, i32* %11, i32 0)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (i8*, i32, ...) @PWC_DEBUG_IOCTL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %76 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %77 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %80 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %83 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pwc_vidioc_fill_fmt(%struct.v4l2_format* %75, i32 %78, i32 %81, i32 %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %29, %26, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.pwc_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @pwc_vidioc_try_fmt(%struct.pwc_device*, %struct.v4l2_format*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @PWC_DEBUG_IOCTL(i8*, i32, ...) #1

declare dso_local i32 @pwc_set_video_mode(%struct.pwc_device*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pwc_vidioc_fill_fmt(%struct.v4l2_format*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
