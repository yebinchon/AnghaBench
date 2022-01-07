; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.mtk_vcodec_ctx = type { i32, %struct.mtk_enc_params }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"V4L2_CID_MPEG_VIDEO_BITRATE val = %d\00", align 1
@MTK_ENCODE_PARAM_BITRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"V4L2_CID_MPEG_VIDEO_B_FRAMES val = %d\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE val = %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"V4L2_CID_MPEG_VIDEO_H264_MAX_QP val = %d\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"V4L2_CID_MPEG_VIDEO_HEADER_MODE val = %d\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE val = %d\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"V4L2_CID_MPEG_VIDEO_H264_PROFILE val = %d\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"V4L2_CID_MPEG_VIDEO_H264_LEVEL val = %d\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"V4L2_CID_MPEG_VIDEO_H264_I_PERIOD val = %d\00", align 1
@MTK_ENCODE_PARAM_INTRA_PERIOD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"V4L2_CID_MPEG_VIDEO_GOP_SIZE val = %d\00", align 1
@MTK_ENCODE_PARAM_GOP_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME\00", align 1
@MTK_ENCODE_PARAM_FORCE_INTRA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @vidioc_venc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_venc_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.mtk_enc_params*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %7 = call %struct.mtk_vcodec_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl* %6)
  store %struct.mtk_vcodec_ctx* %7, %struct.mtk_vcodec_ctx** %3, align 8
  %8 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %8, i32 0, i32 1
  store %struct.mtk_enc_params* %9, %struct.mtk_enc_params** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %137 [
    i32 138, label %13
    i32 137, label %28
    i32 135, label %38
    i32 131, label %48
    i32 129, label %58
    i32 128, label %68
    i32 130, label %78
    i32 132, label %88
    i32 133, label %98
    i32 134, label %113
    i32 136, label %128
  ]

13:                                               ; preds = %1
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @MTK_ENCODE_PARAM_BITRATE, align 4
  %24 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %140

28:                                               ; preds = %1
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  br label %140

38:                                               ; preds = %1
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  br label %140

48:                                               ; preds = %1
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %57 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  br label %140

58:                                               ; preds = %1
  %59 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %64 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %67 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  br label %140

68:                                               ; preds = %1
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %74 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  br label %140

78:                                               ; preds = %1
  %79 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  br label %140

88:                                               ; preds = %1
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %97 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %140

98:                                               ; preds = %1
  %99 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %100 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  %103 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %107 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @MTK_ENCODE_PARAM_INTRA_PERIOD, align 4
  %109 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %140

113:                                              ; preds = %1
  %114 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %115 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  %118 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %119 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %122 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @MTK_ENCODE_PARAM_GOP_SIZE, align 4
  %124 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %125 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %140

128:                                              ; preds = %1
  %129 = call i32 (i32, i8*, ...) @mtk_v4l2_debug(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %130 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %4, align 8
  %131 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  %132 = load i32, i32* @MTK_ENCODE_PARAM_FORCE_INTRA, align 4
  %133 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %140

137:                                              ; preds = %1
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %137, %128, %113, %98, %88, %78, %68, %58, %48, %38, %28, %13
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.mtk_vcodec_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl*) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
