; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_vidioc_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_vidioc_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.s2255_vc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@NUM_LINES_1CIFS_NTSC = common dso_local global i32 0, align 4
@NUM_LINES_1CIFS_PAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.s2255_vc*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.s2255_vc* @video_drvdata(%struct.file* %9)
  store %struct.s2255_vc* %10, %struct.s2255_vc** %7, align 8
  %11 = load %struct.s2255_vc*, %struct.s2255_vc** %7, align 8
  %12 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @V4L2_STD_525_60, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.s2255_vc*, %struct.s2255_vc** %7, align 8
  %17 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.s2255_vc*, %struct.s2255_vc** %7, align 8
  %24 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @NUM_LINES_1CIFS_NTSC, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @NUM_LINES_1CIFS_PAL, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = mul nsw i32 %42, 2
  %44 = icmp sge i32 %34, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  store i32 %46, i32* %50, align 4
  br label %57

51:                                               ; preds = %41
  %52 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 6
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.s2255_vc*, %struct.s2255_vc** %7, align 8
  %59 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  store i32 %62, i32* %66, align 4
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.s2255_vc*, %struct.s2255_vc** %7, align 8
  %73 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 3
  %78 = mul nsw i32 %71, %77
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %87, %92
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 4
  ret i32 0
}

declare dso_local %struct.s2255_vc* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
