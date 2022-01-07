; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32, i32, i32* }
%struct.platform_device = type { i32 }
%struct.vim2m_dev = type { %struct.TYPE_7__, %struct.video_device, i32, %struct.TYPE_8__, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vim2m_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Device registered as /dev/video%d\0A\00", align 1
@m2m_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to init mem2mem device\0A\00", align 1
@MEDIA_ENT_F_PROC_VIDEO_SCALER = common dso_local global i32 0, align 4
@m2m_media_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vim2m_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vim2m_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vim2m_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.vim2m_dev* @kzalloc(i32 72, i32 %7)
  store %struct.vim2m_dev* %8, %struct.vim2m_dev** %4, align 8
  %9 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %10 = icmp ne %struct.vim2m_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %95

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %18 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %17, i32 0, i32 0
  %19 = call i32 @v4l2_device_register(i32* %16, %struct.TYPE_7__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %91

23:                                               ; preds = %14
  %24 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %25 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %24, i32 0, i32 5
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %28 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %27, i32 0, i32 4
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %31 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %30, i32 0, i32 1
  %32 = bitcast %struct.video_device* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.video_device* @vim2m_videodev to i8*), i64 24, i1 false)
  %33 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %34 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %33, i32 0, i32 1
  store %struct.video_device* %34, %struct.video_device** %5, align 8
  %35 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %36 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %35, i32 0, i32 4
  %37 = load %struct.video_device*, %struct.video_device** %5, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %40 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %39, i32 0, i32 0
  %41 = load %struct.video_device*, %struct.video_device** %5, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 1
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.video_device*, %struct.video_device** %5, align 8
  %44 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %45 = call i32 @video_register_device(%struct.video_device* %43, i32 %44, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %23
  %49 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %50 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %49, i32 0, i32 0
  %51 = call i32 @v4l2_err(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %87

52:                                               ; preds = %23
  %53 = load %struct.video_device*, %struct.video_device** %5, align 8
  %54 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %55 = call i32 @video_set_drvdata(%struct.video_device* %53, %struct.vim2m_dev* %54)
  %56 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %57 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %56, i32 0, i32 0
  %58 = load %struct.video_device*, %struct.video_device** %5, align 8
  %59 = getelementptr inbounds %struct.video_device, %struct.video_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @v4l2_info(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %64 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.vim2m_dev* %63)
  %65 = call i32 @v4l2_m2m_init(i32* @m2m_ops)
  %66 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %67 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %69 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %52
  %74 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %75 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %74, i32 0, i32 0
  %76 = call i32 @v4l2_err(%struct.TYPE_7__* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %78 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %6, align 4
  br label %82

81:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %95

82:                                               ; preds = %73
  %83 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %84 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %83, i32 0, i32 1
  %85 = call i32 @video_unregister_device(%struct.video_device* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %95

87:                                               ; preds = %48
  %88 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %89 = getelementptr inbounds %struct.vim2m_dev, %struct.vim2m_dev* %88, i32 0, i32 0
  %90 = call i32 @v4l2_device_unregister(%struct.TYPE_7__* %89)
  br label %91

91:                                               ; preds = %87, %22
  %92 = load %struct.vim2m_dev*, %struct.vim2m_dev** %4, align 8
  %93 = call i32 @kfree(%struct.vim2m_dev* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %82, %81, %11
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.vim2m_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.vim2m_dev*) #1

declare dso_local i32 @v4l2_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vim2m_dev*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.vim2m_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
