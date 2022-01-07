; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_try_fmt_vid_cap_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_try_fmt_vid_cap_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_jpeg_ctx = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.mtk_jpeg_fmt* }
%struct.mtk_jpeg_fmt = type { i32 }

@MTK_JPEG_FMT_TYPE_CAPTURE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"(%d) try_fmt:%c%c%c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @mtk_jpeg_try_fmt_vid_cap_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_try_fmt_vid_cap_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.mtk_jpeg_ctx*, align 8
  %8 = alloca %struct.mtk_jpeg_fmt*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i8* %9)
  store %struct.mtk_jpeg_ctx* %10, %struct.mtk_jpeg_ctx** %7, align 8
  %11 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MTK_JPEG_FMT_TYPE_CAPTURE, align 4
  %18 = call %struct.mtk_jpeg_fmt* @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx* %11, i32 %16, i32 %17)
  store %struct.mtk_jpeg_fmt* %18, %struct.mtk_jpeg_fmt** %8, align 8
  %19 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %8, align 8
  %20 = icmp ne %struct.mtk_jpeg_fmt* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %24, align 8
  store %struct.mtk_jpeg_fmt* %25, %struct.mtk_jpeg_fmt** %8, align 8
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @debug, align 4
  %28 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %8, align 8
  %36 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %8, align 8
  %40 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %8, align 8
  %45 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %8, align 8
  %50 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = call i32 @v4l2_dbg(i32 2, i32 %27, i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38, i32 %43, i32 %48, i32 %53)
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %56 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %8, align 8
  %57 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %7, align 8
  %58 = load i32, i32* @MTK_JPEG_FMT_TYPE_CAPTURE, align 4
  %59 = call i32 @mtk_jpeg_try_fmt_mplane(%struct.v4l2_format* %55, %struct.mtk_jpeg_fmt* %56, %struct.mtk_jpeg_ctx* %57, i32 %58)
  ret i32 %59
}

declare dso_local %struct.mtk_jpeg_ctx* @mtk_jpeg_fh_to_ctx(i8*) #1

declare dso_local %struct.mtk_jpeg_fmt* @mtk_jpeg_find_format(%struct.mtk_jpeg_ctx*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_jpeg_try_fmt_mplane(%struct.v4l2_format*, %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
