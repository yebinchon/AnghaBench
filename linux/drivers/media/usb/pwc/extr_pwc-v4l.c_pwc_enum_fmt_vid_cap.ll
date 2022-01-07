; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.pwc_device = type { i32 }

@V4L2_PIX_FMT_PWC1 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_PWC2 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @pwc_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.pwc_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.pwc_device* @video_drvdata(%struct.file* %9)
  store %struct.pwc_device* %10, %struct.pwc_device** %8, align 8
  %11 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %31 [
    i32 0, label %14
    i32 1, label %27
  ]

14:                                               ; preds = %3
  %15 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %16 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 646
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @V4L2_PIX_FMT_PWC1, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @V4L2_PIX_FMT_PWC2, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i32, i32* @V4L2_PIX_FMT_YUV420, align 4
  %29 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %27, %23
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.pwc_device* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
