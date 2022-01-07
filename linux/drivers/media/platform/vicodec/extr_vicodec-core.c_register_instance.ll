; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_register_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_register_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i32, i32, i32*, i32* }
%struct.vicodec_dev = type { i32 }
%struct.vicodec_dev_instance = type { i32, i32, %struct.video_device, i32 }

@m2m_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to init vicodec enc device\0A\00", align 1
@vicodec_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@multiplanar = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_M2M_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_M2M = common dso_local global i32 0, align 4
@VIDIOC_DECODER_CMD = common dso_local global i32 0, align 4
@VIDIOC_TRY_DECODER_CMD = common dso_local global i32 0, align 4
@VIDIOC_ENCODER_CMD = common dso_local global i32 0, align 4
@VIDIOC_TRY_ENCODER_CMD = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to register video device '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Device '%s' registered as /dev/video%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_dev*, %struct.vicodec_dev_instance*, i8*, i32)* @register_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_instance(%struct.vicodec_dev* %0, %struct.vicodec_dev_instance* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vicodec_dev*, align 8
  %7 = alloca %struct.vicodec_dev_instance*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  store %struct.vicodec_dev* %0, %struct.vicodec_dev** %6, align 8
  store %struct.vicodec_dev_instance* %1, %struct.vicodec_dev_instance** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %13 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %12, i32 0, i32 3
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %16 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %15, i32 0, i32 1
  %17 = call i32 @mutex_init(i32* %16)
  %18 = call i32 @v4l2_m2m_init(i32* @m2m_ops)
  %19 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %20 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %22 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %28 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %31 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %108

34:                                               ; preds = %4
  %35 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %36 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %35, i32 0, i32 2
  %37 = bitcast %struct.video_device* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.video_device* @vicodec_videodev to i8*), i64 32, i1 false)
  %38 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %39 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %38, i32 0, i32 2
  store %struct.video_device* %39, %struct.video_device** %10, align 8
  %40 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %41 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %40, i32 0, i32 1
  %42 = load %struct.video_device*, %struct.video_device** %10, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %45 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %44, i32 0, i32 0
  %46 = load %struct.video_device*, %struct.video_device** %10, align 8
  %47 = getelementptr inbounds %struct.video_device, %struct.video_device* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  %48 = load %struct.video_device*, %struct.video_device** %10, align 8
  %49 = getelementptr inbounds %struct.video_device, %struct.video_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strscpy(i32 %50, i8* %51, i32 4)
  %53 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %54 = load i64, i64* @multiplanar, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %34
  %57 = load i32, i32* @V4L2_CAP_VIDEO_M2M_MPLANE, align 4
  br label %60

58:                                               ; preds = %34
  %59 = load i32, i32* @V4L2_CAP_VIDEO_M2M, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = or i32 %53, %61
  %63 = load %struct.video_device*, %struct.video_device** %10, align 8
  %64 = getelementptr inbounds %struct.video_device, %struct.video_device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.video_device*, %struct.video_device** %10, align 8
  %69 = load i32, i32* @VIDIOC_DECODER_CMD, align 4
  %70 = call i32 @v4l2_disable_ioctl(%struct.video_device* %68, i32 %69)
  %71 = load %struct.video_device*, %struct.video_device** %10, align 8
  %72 = load i32, i32* @VIDIOC_TRY_DECODER_CMD, align 4
  %73 = call i32 @v4l2_disable_ioctl(%struct.video_device* %71, i32 %72)
  br label %81

74:                                               ; preds = %60
  %75 = load %struct.video_device*, %struct.video_device** %10, align 8
  %76 = load i32, i32* @VIDIOC_ENCODER_CMD, align 4
  %77 = call i32 @v4l2_disable_ioctl(%struct.video_device* %75, i32 %76)
  %78 = load %struct.video_device*, %struct.video_device** %10, align 8
  %79 = load i32, i32* @VIDIOC_TRY_ENCODER_CMD, align 4
  %80 = call i32 @v4l2_disable_ioctl(%struct.video_device* %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.video_device*, %struct.video_device** %10, align 8
  %83 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %84 = call i32 @video_set_drvdata(%struct.video_device* %82, %struct.vicodec_dev* %83)
  %85 = load %struct.video_device*, %struct.video_device** %10, align 8
  %86 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %87 = call i32 @video_register_device(%struct.video_device* %85, i32 %86, i32 0)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %92 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %91, i32 0, i32 0
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load %struct.vicodec_dev_instance*, %struct.vicodec_dev_instance** %7, align 8
  %96 = getelementptr inbounds %struct.vicodec_dev_instance, %struct.vicodec_dev_instance* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @v4l2_m2m_release(i32 %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %108

100:                                              ; preds = %81
  %101 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %102 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %101, i32 0, i32 0
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.video_device*, %struct.video_device** %10, align 8
  %105 = getelementptr inbounds %struct.video_device, %struct.video_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @v4l2_info(i32* %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %103, i32 %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %100, %90, %26
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_disable_ioctl(%struct.video_device*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.vicodec_dev*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_m2m_release(i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
