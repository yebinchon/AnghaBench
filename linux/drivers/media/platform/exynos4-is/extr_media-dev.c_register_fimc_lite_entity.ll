; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_fimc_lite_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_fimc_lite_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i32, %struct.fimc_lite** }
%struct.fimc_lite = type { i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.exynos_media_pipeline = type { i32 }

@FIMC_LITE_MAX_DEVS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GRP_ID_FLITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to register FIMC.LITE%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*, %struct.fimc_lite*)* @register_fimc_lite_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_fimc_lite_entity(%struct.fimc_md* %0, %struct.fimc_lite* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_md*, align 8
  %5 = alloca %struct.fimc_lite*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.exynos_media_pipeline*, align 8
  %8 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %4, align 8
  store %struct.fimc_lite* %1, %struct.fimc_lite** %5, align 8
  %9 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %10 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FIMC_LITE_MAX_DEVS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %16 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %15, i32 0, i32 1
  %17 = load %struct.fimc_lite**, %struct.fimc_lite*** %16, align 8
  %18 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %19 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fimc_lite*, %struct.fimc_lite** %17, i64 %20
  %22 = load %struct.fimc_lite*, %struct.fimc_lite** %21, align 8
  %23 = icmp ne %struct.fimc_lite* %22, null
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i1 [ true, %2 ], [ %23, %14 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %73

32:                                               ; preds = %24
  %33 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %34 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %33, i32 0, i32 1
  store %struct.v4l2_subdev* %34, %struct.v4l2_subdev** %6, align 8
  %35 = load i32, i32* @GRP_ID_FLITE, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %39 = call %struct.exynos_media_pipeline* @fimc_md_pipeline_create(%struct.fimc_md* %38)
  store %struct.exynos_media_pipeline* %39, %struct.exynos_media_pipeline** %7, align 8
  %40 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %7, align 8
  %41 = icmp ne %struct.exynos_media_pipeline* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %73

45:                                               ; preds = %32
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %47 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %7, align 8
  %48 = call i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev* %46, %struct.exynos_media_pipeline* %47)
  %49 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %50 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %49, i32 0, i32 0
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %52 = call i32 @v4l2_device_register_subdev(i32* %50, %struct.v4l2_subdev* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %45
  %56 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %57 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %58 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %57, i32 0, i32 1
  %59 = load %struct.fimc_lite**, %struct.fimc_lite*** %58, align 8
  %60 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %61 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.fimc_lite*, %struct.fimc_lite** %59, i64 %62
  store %struct.fimc_lite* %56, %struct.fimc_lite** %63, align 8
  br label %71

64:                                               ; preds = %45
  %65 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %66 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %65, i32 0, i32 0
  %67 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %68 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @v4l2_err(i32* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %64, %55
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %42, %29
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.exynos_media_pipeline* @fimc_md_pipeline_create(%struct.fimc_md*) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev*, %struct.exynos_media_pipeline*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
