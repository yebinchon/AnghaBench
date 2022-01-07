; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_blackbird_register_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_blackbird_register_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_dev = type { %struct.TYPE_10__, %struct.TYPE_11__*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@cx8802_mpeg_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mpeg\00", align 1
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@UNSET = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"can't register mpeg device\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"registered device %s [mpeg]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_dev*)* @blackbird_register_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blackbird_register_video(%struct.cx8802_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx8802_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.cx8802_dev* %0, %struct.cx8802_dev** %3, align 8
  %5 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %6 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %11, i32 0, i32 0
  %13 = call i32 @cx88_vdev_init(%struct.TYPE_11__* %7, i32 %10, %struct.TYPE_10__* %12, i32* @cx8802_mpeg_template, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %18 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  store i32* %16, i32** %19, align 8
  %20 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %21 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %20, i32 0, i32 0
  %22 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %23 = call i32 @video_set_drvdata(%struct.TYPE_10__* %21, %struct.cx8802_dev* %22)
  %24 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %25 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %24, i32 0, i32 2
  %26 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %27 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  %29 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %30 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %35 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %38 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UNSET, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %47 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %48 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %1
  %53 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %54 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %53, i32 0, i32 0
  %55 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %56 = call i32 @video_register_device(%struct.TYPE_10__* %54, i32 %55, i32 -1)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %67

62:                                               ; preds = %52
  %63 = load %struct.cx8802_dev*, %struct.cx8802_dev** %3, align 8
  %64 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %63, i32 0, i32 0
  %65 = call i32 @video_device_node_name(%struct.TYPE_10__* %64)
  %66 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @cx88_vdev_init(%struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_10__*, %struct.cx8802_dev*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
