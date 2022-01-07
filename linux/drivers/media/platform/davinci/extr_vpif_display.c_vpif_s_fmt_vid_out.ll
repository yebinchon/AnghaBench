; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_s_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_s_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { %struct.v4l2_format, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpif_s_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file* %13)
  store %struct.video_device* %14, %struct.video_device** %8, align 8
  %15 = load %struct.video_device*, %struct.video_device** %8, align 8
  %16 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %15)
  store %struct.channel_obj* %16, %struct.channel_obj** %9, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 0
  %19 = load %struct.common_obj*, %struct.common_obj** %18, align 8
  %20 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %19, i64 %20
  store %struct.common_obj* %21, %struct.common_obj** %10, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.v4l2_pix_format* %24, %struct.v4l2_pix_format** %11, align 8
  %25 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i32 0, i32 1
  %27 = call i64 @vb2_is_busy(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %54

32:                                               ; preds = %3
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = call i32 @vpif_try_fmt_vid_out(%struct.file* %33, i8* %34, %struct.v4l2_format* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %54

41:                                               ; preds = %32
  %42 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %43 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %47 = bitcast %struct.v4l2_pix_format* %45 to i8*
  %48 = bitcast %struct.v4l2_pix_format* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %50 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %49, i32 0, i32 0
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %52 = bitcast %struct.v4l2_format* %50 to i8*
  %53 = bitcast %struct.v4l2_format* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %41, %39, %29
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @vpif_try_fmt_vid_out(%struct.file*, i8*, %struct.v4l2_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
