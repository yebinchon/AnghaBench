; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_ctrls_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_ctrls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { %struct.TYPE_9__, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.device = type { i32 }

@V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_TOP_BOTTOM = common dso_local global i32 0, align 4
@hva_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_ASPECT = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_MAIN = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_HIGH = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_4_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_4_0 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_ENTROPY_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CAVLC = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_8X8_TRANSFORM = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_MIN_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_MAX_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_VUI_SAR_ENABLE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_1x1 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_VUI_SAR_IDC = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_SEI_FRAME_PACKING = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s controls setup failed (%d)\0A\00", align 1
@HVA_DEFAULT_FRAME_NUM = common dso_local global i32 0, align 4
@HVA_DEFAULT_FRAME_DEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_ctx*)* @hva_ctrls_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_ctrls_setup(%struct.hva_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hva_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %3, align 8
  %8 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %9 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @V4L2_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE_TOP_BOTTOM, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %11, i32 0, i32 1
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %12, i32 15)
  %14 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE_MODE, align 4
  %17 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %18 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %19 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %15, i32* @hva_ctrl_ops, i32 %16, i32 %17, i32 0, i32 %18)
  %20 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %23 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %21, i32* @hva_ctrl_ops, i32 %22, i32 1, i32 60, i32 1, i32 16)
  %24 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %27 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %25, i32* @hva_ctrl_ops, i32 %26, i32 1000, i32 60000000, i32 1000, i32 20000000)
  %28 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* @V4L2_CID_MPEG_VIDEO_ASPECT, align 4
  %34 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %37 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %32, i32* @hva_ctrl_ops, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MAIN, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = xor i32 %48, -1
  store i32 %49, i32* %5, align 4
  %50 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  %53 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_STEREO_HIGH, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %56 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %51, i32* @hva_ctrl_ops, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %60 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_2, align 4
  %61 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  %62 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %58, i32* @hva_ctrl_ops, i32 %59, i32 %60, i32 0, i32 %61)
  %63 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_ENTROPY_MODE, align 4
  %66 = load i32, i32* @V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC, align 4
  %67 = load i32, i32* @V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CAVLC, align 4
  %68 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %64, i32* @hva_ctrl_ops, i32 %65, i32 %66, i32 0, i32 %67)
  %69 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE, align 4
  %72 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %70, i32* @hva_ctrl_ops, i32 %71, i32 1, i32 10000, i32 1, i32 3000)
  %73 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_8X8_TRANSFORM, align 4
  %76 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %74, i32* @hva_ctrl_ops, i32 %75, i32 0, i32 1, i32 1, i32 0)
  %77 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %77, i32 0, i32 1
  %79 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MIN_QP, align 4
  %80 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %78, i32* @hva_ctrl_ops, i32 %79, i32 0, i32 51, i32 1, i32 5)
  %81 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %81, i32 0, i32 1
  %83 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MAX_QP, align 4
  %84 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %82, i32* @hva_ctrl_ops, i32 %83, i32 0, i32 51, i32 1, i32 51)
  %85 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %85, i32 0, i32 1
  %87 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_VUI_SAR_ENABLE, align 4
  %88 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %86, i32* @hva_ctrl_ops, i32 %87, i32 0, i32 1, i32 1, i32 1)
  %89 = load i32, i32* @V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_1x1, align 4
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  store i32 %91, i32* %5, align 4
  %92 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_VUI_SAR_IDC, align 4
  %95 = load i32, i32* @V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_1x1, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @V4L2_MPEG_VIDEO_H264_VUI_SAR_IDC_1x1, align 4
  %98 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %93, i32* @hva_ctrl_ops, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %99, i32 0, i32 1
  %101 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SEI_FRAME_PACKING, align 4
  %102 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %100, i32* @hva_ctrl_ops, i32 %101, i32 0, i32 1, i32 1, i32 0)
  %103 = load i32, i32* %6, align 4
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  store i32 %105, i32* %5, align 4
  %106 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %106, i32 0, i32 1
  %108 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %107, i32* @hva_ctrl_ops, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %114 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %1
  %119 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %120 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %7, align 4
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %125 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @dev_dbg(%struct.device* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %129, i32 0, i32 1
  %131 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %130)
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %147

133:                                              ; preds = %1
  %134 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %134, i32 0, i32 1
  %136 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__* %135)
  %137 = load i32, i32* @HVA_DEFAULT_FRAME_NUM, align 4
  %138 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* @HVA_DEFAULT_FRAME_DEN, align 4
  %143 = load %struct.hva_ctx*, %struct.hva_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 4
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %133, %118
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
