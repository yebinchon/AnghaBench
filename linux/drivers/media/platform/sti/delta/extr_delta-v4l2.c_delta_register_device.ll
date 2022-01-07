; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_dev = type { i32, %struct.video_device*, i32, i32, i32 }
%struct.video_device = type { i32, i32, i32*, i32, i32*, i32 (%struct.video_device*)*, i32*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@delta_m2m_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s failed to initialize v4l2-m2m device\0A\00", align 1
@DELTA_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s failed to allocate video device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@delta_fops = common dso_local global i32 0, align 4
@delta_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@DELTA_NAME = common dso_local global i8* null, align 8
@DELTA_FW_VERSION = common dso_local global i8* null, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s failed to register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_dev*)* @delta_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_register_device(%struct.delta_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.delta_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  store %struct.delta_dev* %0, %struct.delta_dev** %3, align 8
  %6 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %7 = icmp ne %struct.delta_dev* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %99

11:                                               ; preds = %1
  %12 = call i32 @v4l2_m2m_init(i32* @delta_m2m_ops)
  %13 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %14 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %16 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %22 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DELTA_PREFIX, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %27 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %97

30:                                               ; preds = %11
  %31 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %31, %struct.video_device** %5, align 8
  %32 = load %struct.video_device*, %struct.video_device** %5, align 8
  %33 = icmp ne %struct.video_device* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %36 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DELTA_PREFIX, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %92

42:                                               ; preds = %30
  %43 = load %struct.video_device*, %struct.video_device** %5, align 8
  %44 = getelementptr inbounds %struct.video_device, %struct.video_device* %43, i32 0, i32 7
  store i32* @delta_fops, i32** %44, align 8
  %45 = load %struct.video_device*, %struct.video_device** %5, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 6
  store i32* @delta_ioctl_ops, i32** %46, align 8
  %47 = load %struct.video_device*, %struct.video_device** %5, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 5
  store i32 (%struct.video_device*)* @video_device_release, i32 (%struct.video_device*)** %48, align 8
  %49 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %50 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %49, i32 0, i32 4
  %51 = load %struct.video_device*, %struct.video_device** %5, align 8
  %52 = getelementptr inbounds %struct.video_device, %struct.video_device* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* @VFL_DIR_M2M, align 4
  %54 = load %struct.video_device*, %struct.video_device** %5, align 8
  %55 = getelementptr inbounds %struct.video_device, %struct.video_device* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %57 = load i32, i32* @V4L2_CAP_VIDEO_M2M, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.video_device*, %struct.video_device** %5, align 8
  %60 = getelementptr inbounds %struct.video_device, %struct.video_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %62 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %61, i32 0, i32 3
  %63 = load %struct.video_device*, %struct.video_device** %5, align 8
  %64 = getelementptr inbounds %struct.video_device, %struct.video_device* %63, i32 0, i32 2
  store i32* %62, i32** %64, align 8
  %65 = load %struct.video_device*, %struct.video_device** %5, align 8
  %66 = getelementptr inbounds %struct.video_device, %struct.video_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** @DELTA_NAME, align 8
  %69 = load i8*, i8** @DELTA_FW_VERSION, align 8
  %70 = call i32 @snprintf(i32 %67, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69)
  %71 = load %struct.video_device*, %struct.video_device** %5, align 8
  %72 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %73 = call i32 @video_register_device(%struct.video_device* %71, i32 %72, i32 -1)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %42
  %77 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %78 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DELTA_PREFIX, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %89

82:                                               ; preds = %42
  %83 = load %struct.video_device*, %struct.video_device** %5, align 8
  %84 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %85 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %84, i32 0, i32 1
  store %struct.video_device* %83, %struct.video_device** %85, align 8
  %86 = load %struct.video_device*, %struct.video_device** %5, align 8
  %87 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %88 = call i32 @video_set_drvdata(%struct.video_device* %86, %struct.delta_dev* %87)
  store i32 0, i32* %2, align 4
  br label %99

89:                                               ; preds = %76
  %90 = load %struct.video_device*, %struct.video_device** %5, align 8
  %91 = call i32 @video_device_release(%struct.video_device* %90)
  br label %92

92:                                               ; preds = %89, %34
  %93 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %94 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @v4l2_m2m_release(i32 %95)
  br label %97

97:                                               ; preds = %92, %20
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %82, %8
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.delta_dev*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
