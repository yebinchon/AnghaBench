; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_vidioc_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_vidioc_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.pxa_camera_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pxa_mbus_pixelfmt*, i64 }
%struct.pxa_mbus_pixelfmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @pxac_vidioc_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxac_vidioc_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.pxa_camera_dev*, align 8
  %9 = alloca %struct.pxa_mbus_pixelfmt*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.pxa_camera_dev* @video_drvdata(%struct.file* %11)
  store %struct.pxa_camera_dev* %12, %struct.pxa_camera_dev** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %24, %3
  %14 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %15 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %27
  %37 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %38 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %45, align 8
  store %struct.pxa_mbus_pixelfmt* %46, %struct.pxa_mbus_pixelfmt** %9, align 8
  %47 = load %struct.pxa_mbus_pixelfmt*, %struct.pxa_mbus_pixelfmt** %9, align 8
  %48 = getelementptr inbounds %struct.pxa_mbus_pixelfmt, %struct.pxa_mbus_pixelfmt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %36, %33
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.pxa_camera_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
