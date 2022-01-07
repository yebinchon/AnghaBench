; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vicodec_dev = type { %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vicodec_v4l2_dev_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"stateful-encoder\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"stateful-decoder\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"stateless-decoder\00", align 1
@MEDIA_ENT_F_PROC_VIDEO_DECODER = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_ENCODER = common dso_local global i32 0, align 4
@vicodec_m2m_media_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vicodec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicodec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vicodec_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.vicodec_dev* @kzalloc(i32 64, i32 %6)
  store %struct.vicodec_dev* %7, %struct.vicodec_dev** %4, align 8
  %8 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %9 = icmp ne %struct.vicodec_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %17 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %16, i32 0, i32 0
  %18 = call i32 @v4l2_device_register(i32* %15, %struct.TYPE_7__* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %75

22:                                               ; preds = %13
  %23 = load i32, i32* @vicodec_v4l2_dev_release, align 4
  %24 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %25 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %29 = call i32 @platform_set_drvdata(%struct.platform_device* %27, %struct.vicodec_dev* %28)
  %30 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %31 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %32 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %31, i32 0, i32 1
  %33 = call i64 @register_instance(%struct.vicodec_dev* %30, %struct.TYPE_8__* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %71

36:                                               ; preds = %22
  %37 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %38 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %39 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %38, i32 0, i32 2
  %40 = call i64 @register_instance(%struct.vicodec_dev* %37, %struct.TYPE_8__* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %61

43:                                               ; preds = %36
  %44 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %45 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %46 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %45, i32 0, i32 3
  %47 = call i64 @register_instance(%struct.vicodec_dev* %44, %struct.TYPE_8__* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %79

51:                                               ; preds = %49
  %52 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %53 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = call i32 @video_unregister_device(i32* %54)
  %56 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %57 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @v4l2_m2m_release(i32 %59)
  br label %61

61:                                               ; preds = %51, %42
  %62 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %63 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = call i32 @video_unregister_device(i32* %64)
  %66 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %67 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @v4l2_m2m_release(i32 %69)
  br label %71

71:                                               ; preds = %61, %35
  %72 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %73 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %72, i32 0, i32 0
  %74 = call i32 @v4l2_device_unregister(%struct.TYPE_7__* %73)
  br label %75

75:                                               ; preds = %71, %21
  %76 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %77 = call i32 @kfree(%struct.vicodec_dev* %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %50, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.vicodec_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vicodec_dev*) #1

declare dso_local i64 @register_instance(%struct.vicodec_dev*, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.vicodec_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
