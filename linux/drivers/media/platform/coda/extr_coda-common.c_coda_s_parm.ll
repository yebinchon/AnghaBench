; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_fract, i32 }
%struct.v4l2_fract = type { i32 }
%struct.coda_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @coda_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.v4l2_fract*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.coda_ctx* @fh_to_ctx(i8* %10)
  store %struct.coda_ctx* %11, %struct.coda_ctx** %8, align 8
  %12 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %22 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.v4l2_fract* %29, %struct.v4l2_fract** %9, align 8
  %30 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %31 = call i32 @coda_approximate_timeperframe(%struct.v4l2_fract* %30)
  %32 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %33 = call i32 @coda_timeperframe_to_frate(%struct.v4l2_fract* %32)
  %34 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %20, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @coda_approximate_timeperframe(%struct.v4l2_fract*) #1

declare dso_local i32 @coda_timeperframe_to_frate(%struct.v4l2_fract*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
