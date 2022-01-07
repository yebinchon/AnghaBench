; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_get_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_get_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32 }
%struct.solo_enc_dev = type { i64, i32, i32, i32 }

@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@FRAME_BUF_SIZE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @solo_enc_get_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_enc_get_fmt_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.solo_enc_dev*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.solo_enc_dev* @video_drvdata(%struct.file* %9)
  store %struct.solo_enc_dev* %10, %struct.solo_enc_dev** %7, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format* %13, %struct.v4l2_pix_format** %8, align 8
  %14 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %7, align 8
  %15 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %7, align 8
  %20 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %7, align 8
  %25 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %7, align 8
  %30 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @V4L2_FIELD_NONE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @FRAME_BUF_SIZE, align 4
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret i32 0
}

declare dso_local %struct.solo_enc_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
