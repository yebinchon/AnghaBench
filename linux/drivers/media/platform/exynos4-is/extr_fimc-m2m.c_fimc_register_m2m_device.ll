; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_register_m2m_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_register_m2m_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i32, %struct.TYPE_2__, i32, %struct.v4l2_device* }
%struct.TYPE_2__ = type { i32, %struct.video_device }
%struct.video_device = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.v4l2_device*, i32*, i32* }
%struct.v4l2_device = type { i32 }

@fimc_m2m_fops = common dso_local global i32 0, align 4
@fimc_m2m_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@V4L2_FL_QUIRK_INVERTED_CROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fimc.%d.m2m\00", align 1
@m2m_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to initialize v4l2-m2m device\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Registered %s as /dev/%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_register_m2m_device(%struct.fimc_dev* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %8 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.video_device* %10, %struct.video_device** %6, align 8
  %11 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %12 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %12, i32 0, i32 3
  store %struct.v4l2_device* %11, %struct.v4l2_device** %13, align 8
  %14 = load %struct.video_device*, %struct.video_device** %6, align 8
  %15 = call i32 @memset(%struct.video_device* %14, i32 0, i32 64)
  %16 = load %struct.video_device*, %struct.video_device** %6, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 10
  store i32* @fimc_m2m_fops, i32** %17, align 8
  %18 = load %struct.video_device*, %struct.video_device** %6, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 9
  store i32* @fimc_m2m_ioctl_ops, i32** %19, align 8
  %20 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %21 = load %struct.video_device*, %struct.video_device** %6, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 8
  store %struct.v4l2_device* %20, %struct.v4l2_device** %22, align 8
  %23 = load %struct.video_device*, %struct.video_device** %6, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load i32, i32* @video_device_release_empty, align 4
  %26 = load %struct.video_device*, %struct.video_device** %6, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %29 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %28, i32 0, i32 2
  %30 = load %struct.video_device*, %struct.video_device** %6, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 6
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* @VFL_DIR_M2M, align 4
  %33 = load %struct.video_device*, %struct.video_device** %6, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %36 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.video_device*, %struct.video_device** %6, align 8
  %39 = getelementptr inbounds %struct.video_device, %struct.video_device* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @V4L2_FL_QUIRK_INVERTED_CROP, align 4
  %41 = load %struct.video_device*, %struct.video_device** %6, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 4
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.video_device*, %struct.video_device** %6, align 8
  %45 = getelementptr inbounds %struct.video_device, %struct.video_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %48 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snprintf(i32 %46, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.video_device*, %struct.video_device** %6, align 8
  %52 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %53 = call i32 @video_set_drvdata(%struct.video_device* %51, %struct.fimc_dev* %52)
  %54 = call i32 @v4l2_m2m_init(i32* @m2m_ops)
  %55 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %56 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %59 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %2
  %65 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %66 = call i32 @v4l2_err(%struct.v4l2_device* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %68 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %105

72:                                               ; preds = %2
  %73 = load %struct.video_device*, %struct.video_device** %6, align 8
  %74 = getelementptr inbounds %struct.video_device, %struct.video_device* %73, i32 0, i32 2
  %75 = call i32 @media_entity_pads_init(i32* %74, i32 0, i32* null)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %98

79:                                               ; preds = %72
  %80 = load %struct.video_device*, %struct.video_device** %6, align 8
  %81 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %82 = call i32 @video_register_device(%struct.video_device* %80, i32 %81, i32 -1)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %94

86:                                               ; preds = %79
  %87 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %88 = load %struct.video_device*, %struct.video_device** %6, align 8
  %89 = getelementptr inbounds %struct.video_device, %struct.video_device* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.video_device*, %struct.video_device** %6, align 8
  %92 = call i32 @video_device_node_name(%struct.video_device* %91)
  %93 = call i32 @v4l2_info(%struct.v4l2_device* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %92)
  store i32 0, i32* %3, align 4
  br label %105

94:                                               ; preds = %85
  %95 = load %struct.video_device*, %struct.video_device** %6, align 8
  %96 = getelementptr inbounds %struct.video_device, %struct.video_device* %95, i32 0, i32 2
  %97 = call i32 @media_entity_cleanup(i32* %96)
  br label %98

98:                                               ; preds = %94, %78
  %99 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %100 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @v4l2_m2m_release(i32 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %86, %64
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @memset(%struct.video_device*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.fimc_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, i32*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_device*, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
