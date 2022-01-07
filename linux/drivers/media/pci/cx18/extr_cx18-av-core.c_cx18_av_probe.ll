; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_5__, %struct.cx18_av_state }
%struct.TYPE_5__ = type { i8* }
%struct.cx18_av_state = type { i32, i32, %struct.TYPE_6__, i32, %struct.v4l2_subdev, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__*, i32, i32 }

@CXADEC_CHIP_CTRL = common dso_local global i32 0, align 4
@CX18_AV_COMPOSITE7 = common dso_local global i32 0, align 4
@CX18_AV_AUDIO8 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@cx18_av_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s %03x\00", align 1
@CX18_HW_418_AV = common dso_local global i32 0, align 4
@cx18_av_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@cx18_av_audio_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BASS = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_TREBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_probe(%struct.cx18* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_av_state*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  %8 = load %struct.cx18*, %struct.cx18** %3, align 8
  %9 = getelementptr inbounds %struct.cx18, %struct.cx18* %8, i32 0, i32 1
  store %struct.cx18_av_state* %9, %struct.cx18_av_state** %4, align 8
  %10 = load %struct.cx18*, %struct.cx18** %3, align 8
  %11 = load i32, i32* @CXADEC_CHIP_CTRL, align 4
  %12 = call i32 @cx18_av_read4(%struct.cx18* %10, i32 %11)
  %13 = and i32 %12, 65535
  %14 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %15 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @CX18_AV_COMPOSITE7, align 4
  %17 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %18 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @CX18_AV_AUDIO8, align 4
  %20 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %21 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %23 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %22, i32 0, i32 1
  store i32 48000, i32* %23, align 4
  %24 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %25 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %26 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %28 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %30 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 10, %31
  %33 = sub nsw i64 %32, 2
  %34 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %35 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %34, i32 0, i32 6
  store i64 %33, i64* %35, align 8
  %36 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %37 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %36, i32 0, i32 4
  store %struct.v4l2_subdev* %37, %struct.v4l2_subdev** %5, align 8
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %39 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %38, i32* @cx18_av_ops)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %41 = load %struct.cx18*, %struct.cx18** %3, align 8
  %42 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %40, %struct.cx18* %41)
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cx18*, %struct.cx18** %3, align 8
  %47 = getelementptr inbounds %struct.cx18, %struct.cx18* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %51 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 4
  %54 = call i32 @snprintf(i32 %45, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %53)
  %55 = load i32, i32* @CX18_HW_418_AV, align 4
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %59 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %58, i32 0, i32 2
  %60 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %59, i32 9)
  %61 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %62 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %61, i32 0, i32 2
  %63 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %64 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %62, i32* @cx18_av_ctrl_ops, i32 %63, i32 0, i32 255, i32 1, i32 128)
  %65 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %66 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %65, i32 0, i32 2
  %67 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %68 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %66, i32* @cx18_av_ctrl_ops, i32 %67, i32 0, i32 127, i32 1, i32 64)
  %69 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %70 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %69, i32 0, i32 2
  %71 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %72 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %70, i32* @cx18_av_ctrl_ops, i32 %71, i32 0, i32 127, i32 1, i32 64)
  %73 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %74 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %73, i32 0, i32 2
  %75 = load i32, i32* @V4L2_CID_HUE, align 4
  %76 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %74, i32* @cx18_av_ctrl_ops, i32 %75, i32 -128, i32 127, i32 1, i32 0)
  %77 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %78 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %77, i32 0, i32 2
  %79 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %80 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %78, i32* @cx18_av_audio_ctrl_ops, i32 %79, i32 0, i32 65535, i32 655, i32 0)
  %81 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %82 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %84 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %83, i32 0, i32 2
  %85 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %86 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %84, i32* @cx18_av_audio_ctrl_ops, i32 %85, i32 0, i32 1, i32 1, i32 0)
  %87 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %88 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %87, i32 0, i32 2
  %89 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %90 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %88, i32* @cx18_av_audio_ctrl_ops, i32 %89, i32 0, i32 65535, i32 655, i32 32768)
  %91 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %92 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %91, i32 0, i32 2
  %93 = load i32, i32* @V4L2_CID_AUDIO_BASS, align 4
  %94 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %92, i32* @cx18_av_audio_ctrl_ops, i32 %93, i32 0, i32 65535, i32 655, i32 32768)
  %95 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %96 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %95, i32 0, i32 2
  %97 = load i32, i32* @V4L2_CID_AUDIO_TREBLE, align 4
  %98 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %96, i32* @cx18_av_audio_ctrl_ops, i32 %97, i32 0, i32 65535, i32 655, i32 32768)
  %99 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %100 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %99, i32 0, i32 2
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %101, i32 0, i32 0
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  %103 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %104 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %1
  %109 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %110 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %7, align 4
  %113 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %114 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %113, i32 0, i32 2
  %115 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %114)
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  br label %133

117:                                              ; preds = %1
  %118 = load %struct.cx18*, %struct.cx18** %3, align 8
  %119 = getelementptr inbounds %struct.cx18, %struct.cx18* %118, i32 0, i32 0
  %120 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %121 = call i32 @v4l2_device_register_subdev(%struct.TYPE_5__* %119, %struct.v4l2_subdev* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.cx18_av_state*, %struct.cx18_av_state** %4, align 8
  %126 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %125, i32 0, i32 2
  %127 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %126)
  br label %131

128:                                              ; preds = %117
  %129 = load %struct.cx18*, %struct.cx18** %3, align 8
  %130 = call i32 @cx18_av_init(%struct.cx18* %129)
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %108
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.cx18*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.TYPE_5__*, %struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_init(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
