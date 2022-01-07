; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32 }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32, i32, i32, i32, %struct.yuv_playback_info, %struct.ivtv_stream* }
%struct.yuv_playback_info = type { i32 }
%struct.ivtv_stream = type { i32 }

@V4L2_CAP_VIDEO_OUTPUT_OVERLAY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_LOCAL_INV_ALPHA = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_CHROMAKEY = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_OVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @ivtv_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.ivtv_stream*, align 8
  %11 = alloca %struct.yuv_playback_info*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.ivtv_open_id* @fh2id(i8* %12)
  store %struct.ivtv_open_id* %13, %struct.ivtv_open_id** %8, align 8
  %14 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %15 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %14, i32 0, i32 1
  %16 = load %struct.ivtv*, %struct.ivtv** %15, align 8
  store %struct.ivtv* %16, %struct.ivtv** %9, align 8
  %17 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 5
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.ivtv_open_id* @fh2id(i8* %20)
  %22 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i64 %23
  store %struct.ivtv_stream* %24, %struct.ivtv_stream** %10, align 8
  %25 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 4
  store %struct.yuv_playback_info* %26, %struct.yuv_playback_info** %11, align 8
  %27 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %28 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOTTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %85

36:                                               ; preds = %3
  %37 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOTTY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %85

44:                                               ; preds = %36
  %45 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_FBUF_FLAG_GLOBAL_ALPHA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_ALPHA, align 4
  %58 = load i32, i32* @V4L2_FBUF_FLAG_LOCAL_INV_ALPHA, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %64 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @V4L2_FBUF_FLAG_CHROMAKEY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %73 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %75 = call i32 @ivtv_set_osd_alpha(%struct.ivtv* %74)
  %76 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @V4L2_FBUF_FLAG_OVERLAY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %11, align 8
  %84 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %44, %41, %33
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

declare dso_local i32 @ivtv_set_osd_alpha(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
