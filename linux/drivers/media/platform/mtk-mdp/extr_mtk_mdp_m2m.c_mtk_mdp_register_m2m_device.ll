; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_register_m2m_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_register_m2m_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_dev = type { %struct.TYPE_7__*, i32, i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32, i32*, i32 (%struct.TYPE_7__*)*, i32*, i32* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }

@mtk_mdp_default_variant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate video device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@mtk_mdp_m2m_fops = common dso_local global i32 0, align 4
@mtk_mdp_m2m_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:m2m\00", align 1
@MTK_MDP_MODULE_NAME = common dso_local global i8* null, align 8
@mtk_mdp_m2m_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to initialize v4l2-m2m device\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register video device\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"driver registered as /dev/video%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_mdp_register_m2m_device(%struct.mtk_mdp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_mdp_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_mdp_dev* %0, %struct.mtk_mdp_dev** %3, align 8
  %6 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %6, i32 0, i32 5
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %10, i32 0, i32 4
  store i32* @mtk_mdp_default_variant, i32** %11, align 8
  %12 = call %struct.TYPE_7__* (...) @video_device_alloc()
  %13 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %13, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %14, align 8
  %15 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %118

24:                                               ; preds = %1
  %25 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  %26 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 8
  store i32* @mtk_mdp_m2m_fops, i32** %35, align 8
  %36 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 7
  store i32* @mtk_mdp_m2m_ioctl_ops, i32** %39, align 8
  %40 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 6
  store i32 (%struct.TYPE_7__*)* @video_device_release, i32 (%struct.TYPE_7__*)** %43, align 8
  %44 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %44, i32 0, i32 3
  %46 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  store i32* %45, i32** %49, align 8
  %50 = load i32, i32* @VFL_DIR_M2M, align 4
  %51 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i32 %50, i32* %54, align 8
  %55 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %55, i32 0, i32 2
  %57 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i32* %56, i32** %60, align 8
  %61 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** @MTK_MDP_MODULE_NAME, align 8
  %67 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %69 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %72 = call i32 @video_set_drvdata(%struct.TYPE_7__* %70, %struct.mtk_mdp_dev* %71)
  %73 = call i32 @v4l2_m2m_init(i32* @mtk_mdp_m2m_ops)
  %74 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %75 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %24
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %5, align 4
  br label %113

88:                                               ; preds = %24
  %89 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %90 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %93 = call i32 @video_register_device(%struct.TYPE_7__* %91, i32 %92, i32 2)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %108

99:                                               ; preds = %88
  %100 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %101 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %100, i32 0, i32 2
  %102 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @v4l2_info(i32* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  store i32 0, i32* %2, align 4
  br label %120

108:                                              ; preds = %96
  %109 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %110 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @v4l2_m2m_release(i32 %111)
  br label %113

113:                                              ; preds = %108, %81
  %114 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %3, align 8
  %115 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = call i32 @video_device_release(%struct.TYPE_7__* %116)
  br label %118

118:                                              ; preds = %113, %19
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %99
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_7__* @video_device_alloc(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @video_device_release(%struct.TYPE_7__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.mtk_mdp_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
