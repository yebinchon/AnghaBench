; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_fimc_is_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_fimc_is_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { %struct.fimc_is*, i32 }
%struct.fimc_is = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.exynos_media_pipeline = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register FIMC-ISP (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*, %struct.fimc_is*)* @register_fimc_is_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_fimc_is_entity(%struct.fimc_md* %0, %struct.fimc_is* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_md*, align 8
  %5 = alloca %struct.fimc_is*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.exynos_media_pipeline*, align 8
  %8 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %4, align 8
  store %struct.fimc_is* %1, %struct.fimc_is** %5, align 8
  %9 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %10 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %6, align 8
  %12 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %13 = call %struct.exynos_media_pipeline* @fimc_md_pipeline_create(%struct.fimc_md* %12)
  store %struct.exynos_media_pipeline* %13, %struct.exynos_media_pipeline** %7, align 8
  %14 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %7, align 8
  %15 = icmp ne %struct.exynos_media_pipeline* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %7, align 8
  %22 = call i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev* %20, %struct.exynos_media_pipeline* %21)
  %23 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %24 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %23, i32 0, i32 1
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %26 = call i32 @v4l2_device_register_subdev(i32* %24, %struct.v4l2_subdev* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %31 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %30, i32 0, i32 1
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @v4l2_err(i32* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %19
  %36 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %37 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %38 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %37, i32 0, i32 0
  store %struct.fimc_is* %36, %struct.fimc_is** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %29, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.exynos_media_pipeline* @fimc_md_pipeline_create(%struct.fimc_md*) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev*, %struct.exynos_media_pipeline*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
