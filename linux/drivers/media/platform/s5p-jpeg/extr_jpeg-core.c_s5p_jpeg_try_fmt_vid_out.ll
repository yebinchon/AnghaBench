; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.s5p_jpeg_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.s5p_jpeg_fmt = type { i32 }

@FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fourcc format (0x%08x) invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @s5p_jpeg_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.s5p_jpeg_ctx*, align 8
  %9 = alloca %struct.s5p_jpeg_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.s5p_jpeg_ctx* @fh_to_ctx(i8* %10)
  store %struct.s5p_jpeg_ctx* %11, %struct.s5p_jpeg_ctx** %8, align 8
  %12 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FMT_TYPE_OUTPUT, align 4
  %19 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %12, i32 %17, i32 %18)
  store %struct.s5p_jpeg_fmt* %19, %struct.s5p_jpeg_fmt** %9, align 8
  %20 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %9, align 8
  %21 = icmp ne %struct.s5p_jpeg_fmt* %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %3
  %23 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %3
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %37 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %9, align 8
  %38 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %39 = load i32, i32* @FMT_TYPE_OUTPUT, align 4
  %40 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %36, %struct.s5p_jpeg_fmt* %37, %struct.s5p_jpeg_ctx* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.s5p_jpeg_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx*, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
