; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_g_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_g_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.vivid_dev = type { %struct.v4l2_framebuffer, i64 }

@ENOTTY = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_BITMAP_CLIPPING = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_LIST_CLIPPING = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_PRIMARY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_cap_g_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTTY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %20 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %20, i32 0, i32 0
  %22 = bitcast %struct.v4l2_framebuffer* %19 to i8*
  %23 = bitcast %struct.v4l2_framebuffer* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 32, i1 false)
  %24 = load i32, i32* @V4L2_FBUF_CAP_BITMAP_CLIPPING, align 4
  %25 = load i32, i32* @V4L2_FBUF_CAP_LIST_CLIPPING, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @V4L2_FBUF_FLAG_PRIMARY, align 4
  %30 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %33 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %37 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %18, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
