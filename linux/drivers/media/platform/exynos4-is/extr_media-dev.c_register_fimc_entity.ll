; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_fimc_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_fimc_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i32, i32, %struct.fimc_dev**, i32* }
%struct.fimc_dev = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.exynos_media_pipeline = type { i32 }

@FIMC_MAX_DEVS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GRP_ID_FIMC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register FIMC.%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*, %struct.fimc_dev*)* @register_fimc_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_fimc_entity(%struct.fimc_md* %0, %struct.fimc_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_md*, align 8
  %5 = alloca %struct.fimc_dev*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.exynos_media_pipeline*, align 8
  %8 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %4, align 8
  store %struct.fimc_dev* %1, %struct.fimc_dev** %5, align 8
  %9 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FIMC_MAX_DEVS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %16 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %15, i32 0, i32 2
  %17 = load %struct.fimc_dev**, %struct.fimc_dev*** %16, align 8
  %18 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %19 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.fimc_dev*, %struct.fimc_dev** %17, i64 %20
  %22 = load %struct.fimc_dev*, %struct.fimc_dev** %21, align 8
  %23 = icmp ne %struct.fimc_dev* %22, null
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
  br label %98

32:                                               ; preds = %24
  %33 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %34 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store %struct.v4l2_subdev* %35, %struct.v4l2_subdev** %6, align 8
  %36 = load i32, i32* @GRP_ID_FIMC, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %40 = call %struct.exynos_media_pipeline* @fimc_md_pipeline_create(%struct.fimc_md* %39)
  store %struct.exynos_media_pipeline* %40, %struct.exynos_media_pipeline** %7, align 8
  %41 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %7, align 8
  %42 = icmp ne %struct.exynos_media_pipeline* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %98

46:                                               ; preds = %32
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %48 = load %struct.exynos_media_pipeline*, %struct.exynos_media_pipeline** %7, align 8
  %49 = call i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev* %47, %struct.exynos_media_pipeline* %48)
  %50 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %51 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %50, i32 0, i32 0
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %53 = call i32 @v4l2_device_register_subdev(i32* %51, %struct.v4l2_subdev* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %46
  %57 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %58 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %63 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %68 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %72 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %66, %61, %56
  %74 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %75 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %76 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %75, i32 0, i32 2
  %77 = load %struct.fimc_dev**, %struct.fimc_dev*** %76, align 8
  %78 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %79 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.fimc_dev*, %struct.fimc_dev** %77, i64 %80
  store %struct.fimc_dev* %74, %struct.fimc_dev** %81, align 8
  %82 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %83 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %86 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %96

88:                                               ; preds = %46
  %89 = load %struct.fimc_md*, %struct.fimc_md** %4, align 8
  %90 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %89, i32 0, i32 0
  %91 = load %struct.fimc_dev*, %struct.fimc_dev** %5, align 8
  %92 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @v4l2_err(i32* %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %73
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %43, %29
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.exynos_media_pipeline* @fimc_md_pipeline_create(%struct.fimc_md*) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev*, %struct.exynos_media_pipeline*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
