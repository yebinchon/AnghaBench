; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_fmt = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i64, i64 }
%struct.bdisp_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bdisp_formats = common dso_local global %struct.bdisp_fmt* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"No YU12 on capture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @bdisp_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.bdisp_ctx*, align 8
  %9 = alloca %struct.bdisp_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.bdisp_ctx* @fh_to_ctx(i8* %10)
  store %struct.bdisp_ctx* %11, %struct.bdisp_ctx** %8, align 8
  %12 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bdisp_fmt*, %struct.bdisp_fmt** @bdisp_formats, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.bdisp_fmt* %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.bdisp_fmt*, %struct.bdisp_fmt** @bdisp_formats, align 8
  %23 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.bdisp_fmt, %struct.bdisp_fmt* %22, i64 %25
  store %struct.bdisp_fmt* %26, %struct.bdisp_fmt** %9, align 8
  %27 = load %struct.bdisp_fmt*, %struct.bdisp_fmt** %9, align 8
  %28 = getelementptr inbounds %struct.bdisp_fmt, %struct.bdisp_fmt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %21
  %33 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %32, %21
  %48 = load %struct.bdisp_fmt*, %struct.bdisp_fmt** %9, align 8
  %49 = getelementptr inbounds %struct.bdisp_fmt, %struct.bdisp_fmt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %38, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.bdisp_ctx* @fh_to_ctx(i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.bdisp_fmt*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
