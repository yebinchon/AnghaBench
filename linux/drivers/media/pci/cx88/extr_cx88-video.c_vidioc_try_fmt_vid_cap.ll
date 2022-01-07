; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cx8800_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }
%struct.cx8800_fmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx8800_dev*, align 8
  %9 = alloca %struct.cx88_core*, align 8
  %10 = alloca %struct.cx8800_fmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.cx8800_dev* @video_drvdata(%struct.file* %14)
  store %struct.cx8800_dev* %15, %struct.cx8800_dev** %8, align 8
  %16 = load %struct.cx8800_dev*, %struct.cx8800_dev** %8, align 8
  %17 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %16, i32 0, i32 0
  %18 = load %struct.cx88_core*, %struct.cx88_core** %17, align 8
  store %struct.cx88_core* %18, %struct.cx88_core** %9, align 8
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cx8800_fmt* @format_by_fourcc(i32 %23)
  store %struct.cx8800_fmt* %24, %struct.cx8800_fmt** %10, align 8
  %25 = load %struct.cx8800_fmt*, %struct.cx8800_fmt** %10, align 8
  %26 = icmp ne %struct.cx8800_fmt* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %115

30:                                               ; preds = %3
  %31 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @norm_maxw(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @norm_maxh(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  switch i32 %44, label %46 [
    i32 128, label %45
    i32 132, label %45
    i32 131, label %45
    i32 130, label %45
    i32 129, label %45
  ]

45:                                               ; preds = %30, %30, %30, %30, %30
  br label %57

46:                                               ; preds = %30
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = udiv i32 %52, 2
  %54 = icmp ugt i32 %51, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 131, i32 132
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %46, %45
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @V4L2_FIELD_HAS_T_OR_B(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = udiv i32 %62, 2
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @v4l_bound_align_image(i32* %68, i32 48, i32 %69, i32 2, i32* %73, i32 32, i32 %74, i32 0, i32 0)
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cx8800_fmt*, %struct.cx8800_fmt** %10, align 8
  %87 = getelementptr inbounds %struct.cx8800_fmt, %struct.cx8800_fmt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = ashr i32 %89, 3
  %91 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = mul i32 %99, %104
  %106 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %111 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  store i32 %110, i32* %114, align 4
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %64, %27
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.cx8800_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.cx8800_fmt* @format_by_fourcc(i32) #1

declare dso_local i32 @norm_maxw(i32) #1

declare dso_local i32 @norm_maxh(i32) #1

declare dso_local i64 @V4L2_FIELD_HAS_T_OR_B(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
