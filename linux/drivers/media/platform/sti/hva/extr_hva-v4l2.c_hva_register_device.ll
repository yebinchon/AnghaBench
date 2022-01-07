; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_dev = type { i32, %struct.video_device*, i32, i32, i32 }
%struct.video_device = type { i32, i32, i32*, i32, i32*, i32 (%struct.video_device*)*, i32*, i32* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@hva_m2m_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s failed to initialize v4l2-m2m device\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s failed to allocate video device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@hva_fops = common dso_local global i32 0, align 4
@hva_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%lx\00", align 1
@HVA_NAME = common dso_local global i8* null, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s failed to register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_dev*)* @hva_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_register_device(%struct.hva_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hva_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.hva_dev* %0, %struct.hva_dev** %3, align 8
  %7 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %8 = icmp ne %struct.hva_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %98

12:                                               ; preds = %1
  %13 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %14 = call %struct.device* @hva_to_dev(%struct.hva_dev* %13)
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = call i32 @v4l2_m2m_init(i32* @hva_m2m_ops)
  %16 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %12
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* @HVA_PREFIX, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %4, align 4
  br label %96

31:                                               ; preds = %12
  %32 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %32, %struct.video_device** %5, align 8
  %33 = load %struct.video_device*, %struct.video_device** %5, align 8
  %34 = icmp ne %struct.video_device* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* @HVA_PREFIX, align 4
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %91

41:                                               ; preds = %31
  %42 = load %struct.video_device*, %struct.video_device** %5, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 7
  store i32* @hva_fops, i32** %43, align 8
  %44 = load %struct.video_device*, %struct.video_device** %5, align 8
  %45 = getelementptr inbounds %struct.video_device, %struct.video_device* %44, i32 0, i32 6
  store i32* @hva_ioctl_ops, i32** %45, align 8
  %46 = load %struct.video_device*, %struct.video_device** %5, align 8
  %47 = getelementptr inbounds %struct.video_device, %struct.video_device* %46, i32 0, i32 5
  store i32 (%struct.video_device*)* @video_device_release, i32 (%struct.video_device*)** %47, align 8
  %48 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %48, i32 0, i32 4
  %50 = load %struct.video_device*, %struct.video_device** %5, align 8
  %51 = getelementptr inbounds %struct.video_device, %struct.video_device* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* @VFL_DIR_M2M, align 4
  %53 = load %struct.video_device*, %struct.video_device** %5, align 8
  %54 = getelementptr inbounds %struct.video_device, %struct.video_device* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %56 = load i32, i32* @V4L2_CAP_VIDEO_M2M, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.video_device*, %struct.video_device** %5, align 8
  %59 = getelementptr inbounds %struct.video_device, %struct.video_device* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %60, i32 0, i32 3
  %62 = load %struct.video_device*, %struct.video_device** %5, align 8
  %63 = getelementptr inbounds %struct.video_device, %struct.video_device* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.video_device*, %struct.video_device** %5, align 8
  %65 = getelementptr inbounds %struct.video_device, %struct.video_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** @HVA_NAME, align 8
  %68 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @snprintf(i32 %66, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %67, i32 %70)
  %72 = load %struct.video_device*, %struct.video_device** %5, align 8
  %73 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %74 = call i32 @video_register_device(%struct.video_device* %72, i32 %73, i32 -1)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %41
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = load i32, i32* @HVA_PREFIX, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %88

81:                                               ; preds = %41
  %82 = load %struct.video_device*, %struct.video_device** %5, align 8
  %83 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %84 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %83, i32 0, i32 1
  store %struct.video_device* %82, %struct.video_device** %84, align 8
  %85 = load %struct.video_device*, %struct.video_device** %5, align 8
  %86 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %87 = call i32 @video_set_drvdata(%struct.video_device* %85, %struct.hva_dev* %86)
  store i32 0, i32* %2, align 4
  br label %98

88:                                               ; preds = %77
  %89 = load %struct.video_device*, %struct.video_device** %5, align 8
  %90 = call i32 @video_device_release(%struct.video_device* %89)
  br label %91

91:                                               ; preds = %88, %35
  %92 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %93 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @v4l2_m2m_release(i32 %94)
  br label %96

96:                                               ; preds = %91, %23
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %81, %9
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.device* @hva_to_dev(%struct.hva_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.hva_dev*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
