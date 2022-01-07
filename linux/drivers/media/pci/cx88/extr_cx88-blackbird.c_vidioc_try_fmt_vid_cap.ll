; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.cx8802_dev = type { i32, i32, %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cx8802_dev*, align 8
  %8 = alloca %struct.cx88_core*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.cx8802_dev* @video_drvdata(%struct.file* %12)
  store %struct.cx8802_dev* %13, %struct.cx8802_dev** %7, align 8
  %14 = load %struct.cx8802_dev*, %struct.cx8802_dev** %7, align 8
  %15 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %14, i32 0, i32 2
  %16 = load %struct.cx88_core*, %struct.cx88_core** %15, align 8
  store %struct.cx88_core* %16, %struct.cx88_core** %8, align 8
  %17 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  store i32 %17, i32* %21, align 8
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.cx8802_dev*, %struct.cx8802_dev** %7, align 8
  %27 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cx8802_dev*, %struct.cx8802_dev** %7, align 8
  %30 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 %37, i32* %41, align 8
  %42 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %43 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @norm_maxw(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %47 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @norm_maxh(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %57 [
    i32 128, label %56
    i32 132, label %56
    i32 131, label %56
    i32 130, label %56
    i32 129, label %56
  ]

56:                                               ; preds = %3, %3, %3, %3, %3
  br label %68

57:                                               ; preds = %3
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = udiv i32 %63, 2
  %65 = icmp ugt i32 %62, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 131, i32 132
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %57, %56
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @V4L2_FIELD_HAS_T_OR_B(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = udiv i32 %73, 2
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @v4l_bound_align_image(i32* %79, i32 48, i32 %80, i32 2, i32* %84, i32 32, i32 %85, i32 0, i32 0)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  ret i32 0
}

declare dso_local %struct.cx8802_dev* @video_drvdata(%struct.file*) #1

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
