; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_dev = type { i32, i32, %struct.TYPE_4__*, %struct.video_device* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32 }
%struct.video_device = type { i32, i32, i32*, i32*, i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@coda_fops = common dso_local global i32 0, align 4
@coda_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@VFL_DIR_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VIDIOC_CROPCAP = common dso_local global i32 0, align 4
@VIDIOC_G_CROP = common dso_local global i32 0, align 4
@VIDIOC_S_CROP = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s registered as %s\0A\00", align 1
@CODA_INST_ENCODER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_dev*, i32)* @coda_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_register_device(%struct.coda_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coda_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.coda_dev* %0, %struct.coda_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %10 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %9, i32 0, i32 3
  %11 = load %struct.video_device*, %struct.video_device** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %11, i64 %13
  store %struct.video_device* %14, %struct.video_device** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %17 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %105

25:                                               ; preds = %2
  %26 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %27 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.video_device*, %struct.video_device** %6, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %41 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strscpy(i32 %39, i32 %50, i32 4)
  %52 = load %struct.video_device*, %struct.video_device** %6, align 8
  %53 = getelementptr inbounds %struct.video_device, %struct.video_device* %52, i32 0, i32 6
  store i32* @coda_fops, i32** %53, align 8
  %54 = load %struct.video_device*, %struct.video_device** %6, align 8
  %55 = getelementptr inbounds %struct.video_device, %struct.video_device* %54, i32 0, i32 5
  store i32* @coda_ioctl_ops, i32** %55, align 8
  %56 = load i32, i32* @video_device_release_empty, align 4
  %57 = load %struct.video_device*, %struct.video_device** %6, align 8
  %58 = getelementptr inbounds %struct.video_device, %struct.video_device* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %60 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %59, i32 0, i32 1
  %61 = load %struct.video_device*, %struct.video_device** %6, align 8
  %62 = getelementptr inbounds %struct.video_device, %struct.video_device* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %64 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %63, i32 0, i32 0
  %65 = load %struct.video_device*, %struct.video_device** %6, align 8
  %66 = getelementptr inbounds %struct.video_device, %struct.video_device* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* @VFL_DIR_M2M, align 4
  %68 = load %struct.video_device*, %struct.video_device** %6, align 8
  %69 = getelementptr inbounds %struct.video_device, %struct.video_device* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @V4L2_CAP_VIDEO_M2M, align 4
  %71 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.video_device*, %struct.video_device** %6, align 8
  %74 = getelementptr inbounds %struct.video_device, %struct.video_device* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.video_device*, %struct.video_device** %6, align 8
  %76 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %77 = call i32 @video_set_drvdata(%struct.video_device* %75, %struct.coda_dev* %76)
  %78 = load %struct.video_device*, %struct.video_device** %6, align 8
  %79 = load i32, i32* @VIDIOC_CROPCAP, align 4
  %80 = call i32 @v4l2_disable_ioctl(%struct.video_device* %78, i32 %79)
  %81 = load %struct.video_device*, %struct.video_device** %6, align 8
  %82 = load i32, i32* @VIDIOC_G_CROP, align 4
  %83 = call i32 @v4l2_disable_ioctl(%struct.video_device* %81, i32 %82)
  %84 = load %struct.video_device*, %struct.video_device** %6, align 8
  %85 = load i32, i32* @VIDIOC_S_CROP, align 4
  %86 = call i32 @v4l2_disable_ioctl(%struct.video_device* %84, i32 %85)
  %87 = load %struct.video_device*, %struct.video_device** %6, align 8
  %88 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %89 = call i32 @video_register_device(%struct.video_device* %87, i32 %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %25
  %93 = load %struct.coda_dev*, %struct.coda_dev** %4, align 8
  %94 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @CODA_INST_ENCODER, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %100 = load %struct.video_device*, %struct.video_device** %6, align 8
  %101 = call i32 @video_device_node_name(%struct.video_device* %100)
  %102 = call i32 @v4l2_info(i32* %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %99, i32 %101)
  br label %103

103:                                              ; preds = %92, %25
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %22
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.coda_dev*) #1

declare dso_local i32 @v4l2_disable_ioctl(%struct.video_device*, i32) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
