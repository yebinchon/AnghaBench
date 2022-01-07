; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_enum_fmt_sdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_enum_fmt_sdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32 }
%struct.hackrf_dev = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"index=%d\0A\00", align 1
@NUM_FORMATS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @hackrf_enum_fmt_sdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_enum_fmt_sdr(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.hackrf_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.hackrf_dev* @video_drvdata(%struct.file* %9)
  store %struct.hackrf_dev* %10, %struct.hackrf_dev** %8, align 8
  %11 = load %struct.hackrf_dev*, %struct.hackrf_dev** %8, align 8
  %12 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NUM_FORMATS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @formats, align 8
  %28 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.hackrf_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
