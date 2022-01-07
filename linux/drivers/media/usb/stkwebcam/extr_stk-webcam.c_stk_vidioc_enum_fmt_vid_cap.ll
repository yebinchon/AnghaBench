; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_vidioc_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_vidioc_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }

@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB565X = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @stk_vidioc_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %8 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %19
    i32 3, label %23
    i32 4, label %27
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %13 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i32, i32* @V4L2_PIX_FMT_RGB565X, align 4
  %17 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  %21 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %25 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %29 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %27, %23, %19, %15, %11
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
