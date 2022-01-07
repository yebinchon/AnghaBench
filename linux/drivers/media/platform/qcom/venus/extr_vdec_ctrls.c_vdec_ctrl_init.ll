; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec_ctrls.c_vdec_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec_ctrls.c_vdec_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@vdec_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_SIMPLE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_LEVEL_5 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_LEVEL_0 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_MULTIVIEW_HIGH = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_MAIN = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_HIGH = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_5_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_1_0 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_VP8_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_VP8_PROFILE_3 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_VP8_PROFILE_0 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER = common dso_local global i32 0, align 4
@V4L2_CID_MIN_BUFFERS_FOR_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdec_ctrl_init(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %6 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %7 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %6, i32 0, i32 0
  %8 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %7, i32 7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %142

13:                                               ; preds = %1
  %14 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 0
  %16 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE, align 4
  %17 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY, align 4
  %18 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_SIMPLE, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_SIMPLE, align 4
  %25 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_5__* %15, i32* @vdec_ctrl_ops, i32 %16, i32 %17, i32 %23, i32 %24)
  store %struct.v4l2_ctrl* %25, %struct.v4l2_ctrl** %4, align 8
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %27 = icmp ne %struct.v4l2_ctrl* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %13
  %29 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %13
  %35 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %36 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %35, i32 0, i32 0
  %37 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL, align 4
  %38 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_5, align 4
  %39 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_0, align 4
  %40 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_5__* %36, i32* @vdec_ctrl_ops, i32 %37, i32 %38, i32 0, i32 %39)
  store %struct.v4l2_ctrl* %40, %struct.v4l2_ctrl** %4, align 8
  %41 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %42 = icmp ne %struct.v4l2_ctrl* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %51 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %50, i32 0, i32 0
  %52 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  %53 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MULTIVIEW_HIGH, align 4
  %54 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MAIN, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MULTIVIEW_HIGH, align 4
  %69 = shl i32 1, %68
  %70 = or i32 %67, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %73 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_5__* %51, i32* @vdec_ctrl_ops, i32 %52, i32 %53, i32 %71, i32 %72)
  store %struct.v4l2_ctrl* %73, %struct.v4l2_ctrl** %4, align 8
  %74 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %75 = icmp ne %struct.v4l2_ctrl* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %49
  %77 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %78 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %49
  %83 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %84 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %83, i32 0, i32 0
  %85 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %86 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_5_1, align 4
  %87 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_1_0, align 4
  %88 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_5__* %84, i32* @vdec_ctrl_ops, i32 %85, i32 %86, i32 0, i32 %87)
  store %struct.v4l2_ctrl* %88, %struct.v4l2_ctrl** %4, align 8
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %90 = icmp ne %struct.v4l2_ctrl* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %82
  %92 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %93 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %82
  %98 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %99 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %98, i32 0, i32 0
  %100 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VP8_PROFILE, align 4
  %101 = load i32, i32* @V4L2_MPEG_VIDEO_VP8_PROFILE_3, align 4
  %102 = load i32, i32* @V4L2_MPEG_VIDEO_VP8_PROFILE_0, align 4
  %103 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_5__* %99, i32* @vdec_ctrl_ops, i32 %100, i32 %101, i32 0, i32 %102)
  store %struct.v4l2_ctrl* %103, %struct.v4l2_ctrl** %4, align 8
  %104 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %105 = icmp ne %struct.v4l2_ctrl* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %108 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %109 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %97
  %113 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %114 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %113, i32 0, i32 0
  %115 = load i32, i32* @V4L2_CID_MPEG_VIDEO_DECODER_MPEG4_DEBLOCK_FILTER, align 4
  %116 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_5__* %114, i32* @vdec_ctrl_ops, i32 %115, i32 0, i32 1, i32 1, i32 0)
  %117 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %118 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %117, i32 0, i32 0
  %119 = load i32, i32* @V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, align 4
  %120 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_5__* %118, i32* @vdec_ctrl_ops, i32 %119, i32 1, i32 32, i32 1, i32 1)
  store %struct.v4l2_ctrl* %120, %struct.v4l2_ctrl** %4, align 8
  %121 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %122 = icmp ne %struct.v4l2_ctrl* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %125 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %126 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %112
  %130 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %131 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %138 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %137, i32 0, i32 0
  %139 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__* %138)
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %142

141:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %136, %11
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_5__*, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
