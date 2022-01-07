; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_HM12 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.ivtv_open_id*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.ivtv_open_id* @fh2id(i8* %10)
  store %struct.ivtv_open_id* %11, %struct.ivtv_open_id** %7, align 8
  %12 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %13 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %12, i32 0, i32 1
  %14 = load %struct.ivtv*, %struct.ivtv** %13, align 8
  store %struct.ivtv* %14, %struct.ivtv** %8, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.v4l2_pix_format* %17, %struct.v4l2_pix_format** %9, align 8
  %18 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %7, align 8
  %37 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IVTV_ENC_STREAM_TYPE_YUV, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %3
  %42 = load i32, i32* @V4L2_PIX_FMT_HM12, align 4
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 720
  %49 = mul nsw i32 %48, 3
  %50 = sdiv i32 %49, 2
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 2
  store i32 720, i32* %54, align 4
  br label %63

55:                                               ; preds = %3
  %56 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %57 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 1
  store i32 131072, i32* %60, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %41
  ret i32 0
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
