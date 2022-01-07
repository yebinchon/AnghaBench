; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_g_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_g_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { %struct.v4l2_format }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpif_g_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_g_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %8, align 8
  %13 = load %struct.video_device*, %struct.video_device** %8, align 8
  %14 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %13)
  store %struct.channel_obj* %14, %struct.channel_obj** %9, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 0
  %17 = load %struct.common_obj*, %struct.common_obj** %16, align 8
  %18 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i64 %18
  store %struct.common_obj* %19, %struct.common_obj** %10, align 8
  %20 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %33 = call i64 @vpif_update_resolution(%struct.channel_obj* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %41 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %40, i32 0, i32 0
  %42 = bitcast %struct.v4l2_format* %39 to i8*
  %43 = bitcast %struct.v4l2_format* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %35, %28
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i64 @vpif_update_resolution(%struct.channel_obj*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
