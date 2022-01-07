; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_enum_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_enum_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.solo_enc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_PIX_FMT_MPEG4 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @solo_enc_enum_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_enc_enum_fmt_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.solo_enc_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.solo_enc_dev* @video_drvdata(%struct.file* %10)
  store %struct.solo_enc_dev* %11, %struct.solo_enc_dev** %8, align 8
  %12 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %13 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %35 [
    i32 0, label %20
    i32 1, label %31
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %30 [
    i32 129, label %22
    i32 128, label %26
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @V4L2_PIX_FMT_MPEG4, align 4
  %24 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @V4L2_PIX_FMT_H264, align 4
  %28 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %26, %22
  br label %38

31:                                               ; preds = %3
  %32 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %33 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %31, %30
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.solo_enc_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
