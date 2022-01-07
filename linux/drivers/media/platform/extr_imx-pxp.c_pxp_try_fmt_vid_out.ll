; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_imx-pxp.c_pxp_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.pxp_fmt = type { i32 }
%struct.pxp_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@formats = common dso_local global %struct.TYPE_8__* null, align 8
@MEM2MEM_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fourcc format (0x%08x) invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_REC709 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @pxp_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxp_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.pxp_fmt*, align 8
  %9 = alloca %struct.pxp_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.pxp_ctx* @file2ctx(%struct.file* %10)
  store %struct.pxp_ctx* %11, %struct.pxp_ctx** %9, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = call %struct.pxp_fmt* @find_format(%struct.v4l2_format* %12)
  store %struct.pxp_fmt* %13, %struct.pxp_fmt** %8, align 8
  %14 = load %struct.pxp_fmt*, %struct.pxp_fmt** %8, align 8
  %15 = icmp ne %struct.pxp_fmt* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @formats, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = call %struct.pxp_fmt* @find_format(%struct.v4l2_format* %25)
  store %struct.pxp_fmt* %26, %struct.pxp_fmt** %8, align 8
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.pxp_fmt*, %struct.pxp_fmt** %8, align 8
  %29 = getelementptr inbounds %struct.pxp_fmt, %struct.pxp_fmt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MEM2MEM_OUTPUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = load %struct.pxp_ctx*, %struct.pxp_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.pxp_ctx, %struct.pxp_ctx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @v4l2_err(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %64

47:                                               ; preds = %27
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* @V4L2_COLORSPACE_REC709, align 8
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %62 = load %struct.pxp_fmt*, %struct.pxp_fmt** %8, align 8
  %63 = call i32 @pxp_try_fmt(%struct.v4l2_format* %61, %struct.pxp_fmt* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %34
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.pxp_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.pxp_fmt* @find_format(%struct.v4l2_format*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @pxp_try_fmt(%struct.v4l2_format*, %struct.pxp_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
