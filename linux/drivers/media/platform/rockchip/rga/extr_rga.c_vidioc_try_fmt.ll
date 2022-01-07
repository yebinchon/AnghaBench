; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_fmt = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@formats = common dso_local global %struct.rga_fmt* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@MIN_WIDTH = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@RGA_COLOR_FMT_YUV422SP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.rga_fmt*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %9 = call %struct.rga_fmt* @rga_fmt_find(%struct.v4l2_format* %8)
  store %struct.rga_fmt* %9, %struct.rga_fmt** %7, align 8
  %10 = load %struct.rga_fmt*, %struct.rga_fmt** %7, align 8
  %11 = icmp ne %struct.rga_fmt* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load %struct.rga_fmt*, %struct.rga_fmt** @formats, align 8
  %14 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %13, i64 0
  store %struct.rga_fmt* %14, %struct.rga_fmt** %7, align 8
  %15 = load %struct.rga_fmt*, %struct.rga_fmt** %7, align 8
  %16 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %12, %3
  %23 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i32 %23, i32* %27, align 4
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX_WIDTH, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load i32, i32* @MAX_WIDTH, align 4
  %37 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %22
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAX_HEIGHT, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @MAX_HEIGHT, align 4
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %41
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MIN_WIDTH, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @MIN_WIDTH, align 4
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %55
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MIN_HEIGHT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i32, i32* @MIN_HEIGHT, align 4
  %79 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %69
  %84 = load %struct.rga_fmt*, %struct.rga_fmt** %7, align 8
  %85 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RGA_COLOR_FMT_YUV422SP, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %91 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 4
  br label %114

99:                                               ; preds = %83
  %100 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %101 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.rga_fmt*, %struct.rga_fmt** %7, align 8
  %106 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = ashr i32 %108, 3
  %110 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %99, %89
  %115 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %116 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %121 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.rga_fmt*, %struct.rga_fmt** %7, align 8
  %126 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = mul nsw i32 %119, %128
  %130 = ashr i32 %129, 3
  %131 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %132 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  store i32 %130, i32* %134, align 4
  ret i32 0
}

declare dso_local %struct.rga_fmt* @rga_fmt_find(%struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
