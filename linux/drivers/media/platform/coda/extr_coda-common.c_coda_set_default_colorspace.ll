; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_set_default_colorspace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_set_default_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32, i32 }

@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@V4L2_XFER_FUNC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_YCBCR_ENC_DEFAULT = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_pix_format*)* @coda_set_default_colorspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_set_default_colorspace(%struct.v4l2_pix_format* %0) #0 {
  %2 = alloca %struct.v4l2_pix_format*, align 8
  %3 = alloca i32, align 4
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %2, align 8
  %4 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  store i32 %10, i32* %3, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 720
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 576
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %16, %11
  %24 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @V4L2_XFER_FUNC_DEFAULT, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_YCBCR_ENC_DEFAULT, align 4
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @V4L2_QUANTIZATION_DEFAULT, align 4
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
