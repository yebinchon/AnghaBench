; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i32 }
%struct.fimc_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.exynos_video_entity }
%struct.exynos_video_entity = type { i32 }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@IDX_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @fimc_cap_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_cap_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca %struct.exynos_video_entity*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.fimc_dev* @video_drvdata(%struct.file* %11)
  store %struct.fimc_dev* %12, %struct.fimc_dev** %8, align 8
  %13 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.exynos_video_entity* %15, %struct.exynos_video_entity** %9, align 8
  %16 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %25 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %9, align 8
  %28 = call i32 @fimc_md_graph_lock(%struct.exynos_video_entity* %27)
  %29 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %9, align 8
  %30 = getelementptr inbounds %struct.exynos_video_entity, %struct.exynos_video_entity* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IDX_SENSOR, align 4
  %33 = call %struct.v4l2_subdev* @__fimc_md_get_subdev(i32 %31, i32 %32)
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %10, align 8
  %34 = load %struct.exynos_video_entity*, %struct.exynos_video_entity** %9, align 8
  %35 = call i32 @fimc_md_graph_unlock(%struct.exynos_video_entity* %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %37 = icmp ne %struct.v4l2_subdev* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %23
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strscpy(i32 %41, i32 %44, i32 4)
  br label %46

46:                                               ; preds = %38, %23
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.fimc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @fimc_md_graph_lock(%struct.exynos_video_entity*) #1

declare dso_local %struct.v4l2_subdev* @__fimc_md_get_subdev(i32, i32) #1

declare dso_local i32 @fimc_md_graph_unlock(%struct.exynos_video_entity*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
