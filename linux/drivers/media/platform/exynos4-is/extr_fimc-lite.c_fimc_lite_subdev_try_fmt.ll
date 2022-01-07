; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_fmt = type { i32, i32 }
%struct.fimc_lite = type { i32, %struct.flite_frame, %struct.flite_drvdata* }
%struct.flite_frame = type { %struct.v4l2_rect, %struct.TYPE_2__* }
%struct.v4l2_rect = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.flite_drvdata = type { i32, i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@FLITE_SD_PAD_SINK = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"code: %#x (%d), %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fimc_fmt* (%struct.fimc_lite*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @fimc_lite_subdev_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fimc_fmt* @fimc_lite_subdev_try_fmt(%struct.fimc_lite* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.fimc_fmt*, align 8
  %5 = alloca %struct.fimc_lite*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.flite_drvdata*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.fimc_fmt*, align 8
  %11 = alloca %struct.flite_frame*, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %13 = alloca %struct.v4l2_rect*, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %14 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %15 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %14, i32 0, i32 2
  %16 = load %struct.flite_drvdata*, %struct.flite_drvdata** %15, align 8
  store %struct.flite_drvdata* %16, %struct.flite_drvdata** %8, align 8
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %18, %struct.v4l2_mbus_framefmt** %9, align 8
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %10, align 8
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FLITE_SD_PAD_SINK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %3
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %25, i32 0, i32 1
  %27 = load %struct.flite_drvdata*, %struct.flite_drvdata** %8, align 8
  %28 = getelementptr inbounds %struct.flite_drvdata, %struct.flite_drvdata* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.flite_drvdata*, %struct.flite_drvdata** %8, align 8
  %31 = getelementptr inbounds %struct.flite_drvdata, %struct.flite_drvdata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ffs(i32 %32)
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 0
  %37 = load %struct.flite_drvdata*, %struct.flite_drvdata** %8, align 8
  %38 = getelementptr inbounds %struct.flite_drvdata, %struct.flite_drvdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @v4l_bound_align_image(i32* %26, i32 8, i32 %29, i64 %34, i32* %36, i32 0, i32 %39, i32 0, i32 0)
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 3
  %43 = call %struct.fimc_fmt* @fimc_lite_find_format(i32* null, i32* %42, i32 0, i32 0)
  store %struct.fimc_fmt* %43, %struct.fimc_fmt** %10, align 8
  %44 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %45 = icmp ne %struct.fimc_fmt* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  store %struct.fimc_fmt* null, %struct.fimc_fmt** %4, align 8
  br label %140

51:                                               ; preds = %24
  %52 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %53 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %58 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %119

62:                                               ; preds = %3
  %63 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %64 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %63, i32 0, i32 1
  store %struct.flite_frame* %64, %struct.flite_frame** %11, align 8
  %65 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %62
  %71 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %72 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %71, i32 0, i32 0
  %73 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %74 = load i64, i64* @FLITE_SD_PAD_SINK, align 8
  %75 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32* %72, %struct.v4l2_subdev_pad_config* %73, i64 %74)
  store %struct.v4l2_mbus_framefmt* %75, %struct.v4l2_mbus_framefmt** %12, align 8
  %76 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %80 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %87 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %86, i32 0, i32 0
  %88 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %89 = load i64, i64* @FLITE_SD_PAD_SINK, align 8
  %90 = call %struct.v4l2_rect* @v4l2_subdev_get_try_crop(i32* %87, %struct.v4l2_subdev_pad_config* %88, i64 %89)
  store %struct.v4l2_rect* %90, %struct.v4l2_rect** %13, align 8
  br label %108

91:                                               ; preds = %62
  %92 = load %struct.flite_frame*, %struct.flite_frame** %11, align 8
  %93 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.flite_frame*, %struct.flite_frame** %11, align 8
  %100 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %105 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.flite_frame*, %struct.flite_frame** %11, align 8
  %107 = getelementptr inbounds %struct.flite_frame, %struct.flite_frame* %106, i32 0, i32 0
  store %struct.v4l2_rect* %107, %struct.v4l2_rect** %13, align 8
  br label %108

108:                                              ; preds = %91, %70
  %109 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %113 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %118 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %108, %51
  %120 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %121 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %122 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @debug, align 4
  %124 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %125 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %124, i32 0, i32 0
  %126 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %127 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %130 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %133 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %136 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @v4l2_dbg(i32 1, i32 %123, i32* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %131, i32 %134, i32 %137)
  %139 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  store %struct.fimc_fmt* %139, %struct.fimc_fmt** %4, align 8
  br label %140

140:                                              ; preds = %119, %50
  %141 = load %struct.fimc_fmt*, %struct.fimc_fmt** %4, align 8
  ret %struct.fimc_fmt* %141
}

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local %struct.fimc_fmt* @fimc_lite_find_format(i32*, i32*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local %struct.v4l2_rect* @v4l2_subdev_get_try_crop(i32*, %struct.v4l2_subdev_pad_config*, i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
