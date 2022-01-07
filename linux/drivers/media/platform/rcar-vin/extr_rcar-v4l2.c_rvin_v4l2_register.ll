; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_v4l2_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_v4l2_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, %struct.video_device, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__*, i32, i32 }
%struct.video_device = type { i32, i32*, i32*, i32*, i32, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@rvin_notify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"VIN%u output\00", align 1
@video_device_release_empty = common dso_local global i32 0, align 4
@rvin_fops = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@RVIN_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@RVIN_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@RVIN_DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@RVIN_DEFAULT_FIELD = common dso_local global i32 0, align 4
@RVIN_DEFAULT_COLORSPACE = common dso_local global i32 0, align 4
@rvin_mc_ioctl_ops = common dso_local global i32 0, align 4
@rvin_ioctl_ops = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Device registered as %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvin_v4l2_register(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  %6 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %6, i32 0, i32 1
  store %struct.video_device* %7, %struct.video_device** %4, align 8
  %8 = load i32, i32* @rvin_notify, align 4
  %9 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %12, i32 0, i32 2
  %14 = load %struct.video_device*, %struct.video_device** %4, align 8
  %15 = getelementptr inbounds %struct.video_device, %struct.video_device* %14, i32 0, i32 7
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %16, i32 0, i32 6
  %18 = load %struct.video_device*, %struct.video_device** %4, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 6
  store i32* %17, i32** %19, align 8
  %20 = load %struct.video_device*, %struct.video_device** %4, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @video_device_release_empty, align 4
  %28 = load %struct.video_device*, %struct.video_device** %4, align 8
  %29 = getelementptr inbounds %struct.video_device, %struct.video_device* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %30, i32 0, i32 5
  %32 = load %struct.video_device*, %struct.video_device** %4, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.video_device*, %struct.video_device** %4, align 8
  %35 = getelementptr inbounds %struct.video_device, %struct.video_device* %34, i32 0, i32 2
  store i32* @rvin_fops, i32** %35, align 8
  %36 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %37 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.video_device*, %struct.video_device** %4, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @RVIN_DEFAULT_FORMAT, align 4
  %44 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %45 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @RVIN_DEFAULT_WIDTH, align 4
  %48 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %49 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @RVIN_DEFAULT_HEIGHT, align 4
  %52 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %53 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @RVIN_DEFAULT_FIELD, align 4
  %56 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %57 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @RVIN_DEFAULT_COLORSPACE, align 4
  %60 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %61 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %64 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %63, i32 0, i32 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %1
  %70 = load %struct.video_device*, %struct.video_device** %4, align 8
  %71 = getelementptr inbounds %struct.video_device, %struct.video_device* %70, i32 0, i32 1
  store i32* @rvin_mc_ioctl_ops, i32** %71, align 8
  br label %77

72:                                               ; preds = %1
  %73 = load %struct.video_device*, %struct.video_device** %4, align 8
  %74 = getelementptr inbounds %struct.video_device, %struct.video_device* %73, i32 0, i32 1
  store i32* @rvin_ioctl_ops, i32** %74, align 8
  %75 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %76 = call i32 @rvin_reset_format(%struct.rvin_dev* %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %79 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %80 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %79, i32 0, i32 3
  %81 = call i32 @rvin_format_align(%struct.rvin_dev* %78, %struct.TYPE_6__* %80)
  %82 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %83 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %82, i32 0, i32 1
  %84 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %85 = call i32 @video_register_device(%struct.video_device* %83, i32 %84, i32 -1)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %90 = call i32 @vin_err(%struct.rvin_dev* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %104

92:                                               ; preds = %77
  %93 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %94 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %93, i32 0, i32 1
  %95 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %96 = call i32 @video_set_drvdata(%struct.video_device* %94, %struct.rvin_dev* %95)
  %97 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %98 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %97, i32 0, i32 2
  %99 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %100 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %99, i32 0, i32 1
  %101 = call i32 @video_device_node_name(%struct.video_device* %100)
  %102 = call i32 @v4l2_info(%struct.TYPE_5__* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %92, %88
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @rvin_reset_format(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_format_align(%struct.rvin_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.rvin_dev*) #1

declare dso_local i32 @v4l2_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
