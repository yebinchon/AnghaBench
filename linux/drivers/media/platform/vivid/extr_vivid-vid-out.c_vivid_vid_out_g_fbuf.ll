; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_vid_out_g_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vivid_vid_out_g_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32, i32, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.vivid_dev = type { i32, i32, i32, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@V4L2_FBUF_CAP_EXTERNOVERLAY = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_BITMAP_CLIPPING = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_LIST_CLIPPING = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_SRC_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_LOCAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_LOCAL_INV_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_OVERLAY = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_ARGB555 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_out_g_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_framebuffer*, align 8
  %7 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.vivid_dev* @video_drvdata(%struct.file* %8)
  store %struct.vivid_dev* %9, %struct.vivid_dev** %7, align 8
  %10 = load i32, i32* @V4L2_FBUF_CAP_EXTERNOVERLAY, align 4
  %11 = load i32, i32* @V4L2_FBUF_CAP_BITMAP_CLIPPING, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @V4L2_FBUF_CAP_LIST_CLIPPING, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @V4L2_FBUF_CAP_CHROMAKEY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @V4L2_FBUF_CAP_SRC_CHROMAKEY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @V4L2_FBUF_CAP_GLOBAL_ALPHA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @V4L2_FBUF_CAP_LOCAL_ALPHA, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @V4L2_FBUF_CAP_LOCAL_INV_ALPHA, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @V4L2_FBUF_FLAG_OVERLAY, align 4
  %28 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %29 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %35 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %41 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  store i32 %42, i32* %45, align 4
  %46 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %47 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %53 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 5
  br i1 %57, label %58, label %63

58:                                               ; preds = %3
  %59 = load i32, i32* @V4L2_PIX_FMT_ARGB555, align 4
  %60 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  store i32 %59, i32* %62, align 8
  br label %68

63:                                               ; preds = %3
  %64 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %65 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %70 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %78, %82
  %84 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %88 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 5
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %92 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  store i32 %91, i32* %94, align 8
  %95 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  ret i32 0
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
