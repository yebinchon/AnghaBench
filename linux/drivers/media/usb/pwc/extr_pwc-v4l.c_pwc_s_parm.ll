; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pwc_device = type { i32, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @pwc_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.pwc_device* @video_drvdata(%struct.file* %12)
  store %struct.pwc_device* %13, %struct.pwc_device** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %3
  %23 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %22
  store i32 30, i32* %11, align 4
  br label %53

39:                                               ; preds = %30
  %40 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %45, %51
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %39, %38
  %54 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %55 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %54, i32 0, i32 3
  %56 = call i64 @vb2_is_busy(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %79

61:                                               ; preds = %53
  %62 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %63 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %64 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %67 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %70 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @pwc_set_video_mode(%struct.pwc_device* %62, i32 %65, i32 %68, i32 %71, i32 %72, i32* %9, i32 0)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %77 = call i32 @pwc_g_parm(%struct.file* %74, i8* %75, %struct.v4l2_streamparm* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %61, %58, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.pwc_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @pwc_set_video_mode(%struct.pwc_device*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @pwc_g_parm(%struct.file*, i8*, %struct.v4l2_streamparm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
