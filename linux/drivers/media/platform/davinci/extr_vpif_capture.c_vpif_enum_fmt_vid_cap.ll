; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid format index\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VPIF_IF_RAW_BAYER = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vpif_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %8, align 8
  %12 = load %struct.video_device*, %struct.video_device** %8, align 8
  %13 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %12)
  store %struct.channel_obj* %13, %struct.channel_obj** %9, align 8
  %14 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @debug, align 4
  %20 = call i32 @vpif_dbg(i32 1, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %25 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VPIF_IF_RAW_BAYER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %33 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load i32, i32* @V4L2_PIX_FMT_NV16, align 4
  %37 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %31
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
