; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_out_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_out_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_window }
%struct.v4l2_window = type { %struct.TYPE_6__, i32*, i64, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.ivtv = type { %struct.TYPE_7__, i32, i32, i32, %struct.ivtv_stream* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ivtv_stream = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.ivtv* }

@V4L2_CAP_VIDEO_OUTPUT_OVERLAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_g_fmt_vid_out_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_fmt_vid_out_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.ivtv_stream*, align 8
  %10 = alloca %struct.v4l2_window*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.TYPE_8__* @fh2id(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.ivtv*, %struct.ivtv** %13, align 8
  store %struct.ivtv* %14, %struct.ivtv** %8, align 8
  %15 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 4
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.TYPE_8__* @fh2id(i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i64 %21
  store %struct.ivtv_stream* %22, %struct.ivtv_stream** %9, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.v4l2_window* %25, %struct.v4l2_window** %10, align 8
  %26 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %27 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_OVERLAY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %3
  %36 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %37 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %83

43:                                               ; preds = %35
  %44 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %45 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %48 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %53 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %55 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %60 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %62 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  %63 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %64 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %67 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %70 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %77 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_window*, %struct.v4l2_window** %10, align 8
  %81 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %43, %40, %32
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_8__* @fh2id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
