; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { %struct.TYPE_4__, %struct.cx18_stream* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cx18_stream = type { i32, i64, i32 }

@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx18_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx18_open_id*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca %struct.cx18_stream*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.cx18_open_id* @fh2id(i8* %11)
  store %struct.cx18_open_id* %12, %struct.cx18_open_id** %7, align 8
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %14 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %13, i32 0, i32 1
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %8, align 8
  %16 = load %struct.cx18*, %struct.cx18** %8, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 1
  %18 = load %struct.cx18_stream*, %struct.cx18_stream** %17, align 8
  %19 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %20 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %18, i64 %21
  store %struct.cx18_stream* %22, %struct.cx18_stream** %9, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.v4l2_pix_format* %25, %struct.v4l2_pix_format** %10, align 8
  %26 = load %struct.cx18*, %struct.cx18** %8, align 8
  %27 = getelementptr inbounds %struct.cx18, %struct.cx18* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cx18*, %struct.cx18** %8, align 8
  %33 = getelementptr inbounds %struct.cx18, %struct.cx18* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %45 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CX18_ENC_STREAM_TYPE_YUV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %3
  %50 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %51 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %56 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cx18_stream*, %struct.cx18_stream** %9, align 8
  %61 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %73

65:                                               ; preds = %3
  %66 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 0
  store i32 131072, i32* %70, align 8
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %65, %49
  ret i32 0
}

declare dso_local %struct.cx18_open_id* @fh2id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
