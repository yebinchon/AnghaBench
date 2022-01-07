; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-vbi.c_cx23885_vbi_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-vbi.c_cx23885_vbi_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8**, i64*, i64, i64, i32, i32 }
%struct.cx23885_dev = type { i32 }

@VBI_LINE_LENGTH = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_VBI_ITU_525_F1_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_525_F2_START = common dso_local global i64 0, align 8
@VBI_NTSC_LINE_COUNT = common dso_local global i8* null, align 8
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_VBI_ITU_625_F1_START = common dso_local global i64 0, align 8
@V4L2_VBI_ITU_625_F2_START = common dso_local global i64 0, align 8
@VBI_PAL_LINE_COUNT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_vbi_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %8)
  store %struct.cx23885_dev* %9, %struct.cx23885_dev** %7, align 8
  %10 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 27000000, i32* %13, align 8
  %14 = load i32, i32* @VBI_LINE_LENGTH, align 4
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i32 %19, i32* %23, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %33 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_STD_525_60, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %3
  %39 = load i64, i64* @V4L2_VBI_ITU_525_F1_START, align 8
  %40 = add nsw i64 %39, 9
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %40, i64* %46, align 8
  %47 = load i64, i64* @V4L2_VBI_ITU_525_F2_START, align 8
  %48 = add nsw i64 %47, 9
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  store i64 %48, i64* %54, align 8
  %55 = load i8*, i8** @VBI_NTSC_LINE_COUNT, align 8
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  store i8* %55, i8** %61, align 8
  %62 = load i8*, i8** @VBI_NTSC_LINE_COUNT, align 8
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  store i8* %62, i8** %68, align 8
  br label %108

69:                                               ; preds = %3
  %70 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %71 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @V4L2_STD_625_50, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %69
  %77 = load i64, i64* @V4L2_VBI_ITU_625_F1_START, align 8
  %78 = add nsw i64 %77, 5
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %78, i64* %84, align 8
  %85 = load i64, i64* @V4L2_VBI_ITU_625_F2_START, align 8
  %86 = add nsw i64 %85, 5
  %87 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 %86, i64* %92, align 8
  %93 = load i8*, i8** @VBI_PAL_LINE_COUNT, align 8
  %94 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %93, i8** %99, align 8
  %100 = load i8*, i8** @VBI_PAL_LINE_COUNT, align 8
  %101 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %102 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  store i8* %100, i8** %106, align 8
  br label %107

107:                                              ; preds = %76, %69
  br label %108

108:                                              ; preds = %107, %38
  ret i32 0
}

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
