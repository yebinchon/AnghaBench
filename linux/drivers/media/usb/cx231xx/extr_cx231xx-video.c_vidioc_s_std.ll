; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx231xx_fh = type { i32, %struct.cx231xx* }
%struct.cx231xx = type { i32, i32, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca %struct.v4l2_subdev_format, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %13, %struct.cx231xx_fh** %8, align 8
  %14 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %15 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %14, i32 0, i32 1
  %16 = load %struct.cx231xx*, %struct.cx231xx** %15, align 8
  store %struct.cx231xx* %16, %struct.cx231xx** %9, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %18 = bitcast %struct.TYPE_2__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %22 = call i32 @check_dev(%struct.cx231xx* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %3
  %28 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %84

34:                                               ; preds = %27
  %35 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %36 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %35, i32 0, i32 0
  %37 = call i64 @videobuf_queue_is_busy(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %84

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 1
  store i32 720, i32* %47, align 4
  %48 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %49 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V4L2_STD_625_50, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 576, i32 480
  %56 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %59 = load i32, i32* @video, align 4
  %60 = load i32, i32* @s_std, align 4
  %61 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.cx231xx*, i32, i32, i32, ...) @call_all(%struct.cx231xx* %58, i32 %59, i32 %60, i32 %63)
  %65 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %74 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %79 = load i32, i32* @pad, align 4
  %80 = load i32, i32* @set_fmt, align 4
  %81 = call i32 (%struct.cx231xx*, i32, i32, i32, ...) @call_all(%struct.cx231xx* %78, i32 %79, i32 %80, i32 0, %struct.v4l2_subdev_format* %10)
  %82 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %83 = call i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx* %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %42, %39, %33, %25
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @check_dev(%struct.cx231xx*) #2

declare dso_local i64 @videobuf_queue_is_busy(i32*) #2

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, i32, ...) #2

declare dso_local i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
