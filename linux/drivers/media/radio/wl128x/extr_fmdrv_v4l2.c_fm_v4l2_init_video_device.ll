; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_init_video_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_v4l2.c_fm_v4l2_init_video_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.fmdev = type { i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.v4l2_ctrl = type { i32 }

@FM_DRV_NAME = common dso_local global i32 0, align 4
@gradio_dev = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@fm_viddev_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not register video device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"(fmdev): Can't init ctrl handler\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@fm_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@FM_RX_VOLUME_MIN = common dso_local global i32 0, align 4
@FM_RX_VOLUME_MAX = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_PREEMPHASIS = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_75_uS = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_POWER_LEVEL = common dso_local global i32 0, align 4
@FM_PWR_LVL_LOW = common dso_local global i32 0, align 4
@FM_PWR_LVL_HIGH = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_ANTENNA_CAPACITOR = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_v4l2_init_video_device(%struct.fmdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %9 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FM_DRV_NAME, align 4
  %13 = call i32 @strscpy(i32 %11, i32 %12, i32 4)
  %14 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %15 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %14, i32 0, i32 1
  %16 = call i32 @v4l2_device_register(i32* null, %struct.TYPE_9__* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %2
  %22 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %23 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_8__* @gradio_dev to i8*), i8* align 8 bitcast (%struct.TYPE_8__* @fm_viddev_template to i8*), i64 24, i1 false)
  %25 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %26 = call i32 @video_set_drvdata(%struct.TYPE_8__* @gradio_dev, %struct.fmdev* %25)
  %27 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %28 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %27, i32 0, i32 3
  store i32* %28, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gradio_dev, i32 0, i32 2), align 8
  %29 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %30 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %29, i32 0, i32 1
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gradio_dev, i32 0, i32 1), align 8
  %31 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @video_register_device(%struct.TYPE_8__* @gradio_dev, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %37 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %36, i32 0, i32 1
  %38 = call i32 @v4l2_device_unregister(%struct.TYPE_9__* %37)
  %39 = call i32 @fmerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %108

42:                                               ; preds = %21
  %43 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %44 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %43, i32 0, i32 2
  store %struct.TYPE_8__* @gradio_dev, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %46 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %45, i32 0, i32 0
  %47 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %48 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32* %46, i32** %50, align 8
  %51 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %52 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %51, i32 0, i32 0
  %53 = call i32 @v4l2_ctrl_handler_init(i32* %52, i32 5)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %42
  %57 = call i32 @fmerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %59 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %58, i32 0, i32 0
  %60 = call i32 @v4l2_ctrl_handler_free(i32* %59)
  %61 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %62 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @video_unregister_device(%struct.TYPE_8__* %63)
  %65 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %66 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %65, i32 0, i32 1
  %67 = call i32 @v4l2_device_unregister(%struct.TYPE_9__* %66)
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %108

70:                                               ; preds = %42
  %71 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %72 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %71, i32 0, i32 0
  %73 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %74 = load i32, i32* @FM_RX_VOLUME_MIN, align 4
  %75 = load i32, i32* @FM_RX_VOLUME_MAX, align 4
  %76 = load i32, i32* @FM_RX_VOLUME_MAX, align 4
  %77 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(i32* %72, i32* @fm_ctrl_ops, i32 %73, i32 %74, i32 %75, i32 1, i32 %76)
  %78 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %79 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %78, i32 0, i32 0
  %80 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %81 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(i32* %79, i32* @fm_ctrl_ops, i32 %80, i32 0, i32 1, i32 1, i32 1)
  %82 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %83 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %82, i32 0, i32 0
  %84 = load i32, i32* @V4L2_CID_TUNE_PREEMPHASIS, align 4
  %85 = load i32, i32* @V4L2_PREEMPHASIS_75_uS, align 4
  %86 = load i32, i32* @V4L2_PREEMPHASIS_75_uS, align 4
  %87 = call i32 @v4l2_ctrl_new_std_menu(i32* %83, i32* @fm_ctrl_ops, i32 %84, i32 %85, i32 0, i32 %86)
  %88 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %89 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %88, i32 0, i32 0
  %90 = load i32, i32* @V4L2_CID_TUNE_POWER_LEVEL, align 4
  %91 = load i32, i32* @FM_PWR_LVL_LOW, align 4
  %92 = load i32, i32* @FM_PWR_LVL_HIGH, align 4
  %93 = load i32, i32* @FM_PWR_LVL_HIGH, align 4
  %94 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(i32* %89, i32* @fm_ctrl_ops, i32 %90, i32 %91, i32 %92, i32 1, i32 %93)
  %95 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %96 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %95, i32 0, i32 0
  %97 = load i32, i32* @V4L2_CID_TUNE_ANTENNA_CAPACITOR, align 4
  %98 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(i32* %96, i32* @fm_ctrl_ops, i32 %97, i32 0, i32 255, i32 1, i32 255)
  store %struct.v4l2_ctrl* %98, %struct.v4l2_ctrl** %6, align 8
  %99 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %100 = icmp ne %struct.v4l2_ctrl* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %70
  %102 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %70
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %56, %35, %19
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @mutex_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.fmdev*) #1

declare dso_local i64 @video_register_device(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @video_unregister_device(%struct.TYPE_8__*) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
