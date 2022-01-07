; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_mtk_vcodec_enc_ctrls_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_mtk_vcodec_enc_ctrls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.mtk_vcodec_ctx = type { %struct.v4l2_ctrl_handler }
%struct.v4l2_ctrl_handler = type { i32 }

@mtk_vcodec_enc_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@MTK_MAX_CTRLS_HINT = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_BITRATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_B_FRAMES = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_MAX_QP = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_I_PERIOD = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_HEADER_MODE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_HIGH = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_4_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_LEVEL_4_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Init control handler fail %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_vcodec_enc_ctrls_setup(%struct.mtk_vcodec_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %3, align 8
  store %struct.v4l2_ctrl_ops* @mtk_vcodec_enc_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %6 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %6, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %7, %struct.v4l2_ctrl_handler** %5, align 8
  %8 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %9 = load i32, i32* @MTK_MAX_CTRLS_HINT, align 4
  %10 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %8, i32 %9)
  %11 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %12 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %13 = load i32, i32* @V4L2_CID_MPEG_VIDEO_BITRATE, align 4
  %14 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_ops* %12, i32 %13, i32 1, i32 4000000, i32 1, i32 4000000)
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %16 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %17 = load i32, i32* @V4L2_CID_MPEG_VIDEO_B_FRAMES, align 4
  %18 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %15, %struct.v4l2_ctrl_ops* %16, i32 %17, i32 0, i32 2, i32 1, i32 0)
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %20 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %21 = load i32, i32* @V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE, align 4
  %22 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %19, %struct.v4l2_ctrl_ops* %20, i32 %21, i32 0, i32 1, i32 1, i32 1)
  %23 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %24 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %25 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MAX_QP, align 4
  %26 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %23, %struct.v4l2_ctrl_ops* %24, i32 %25, i32 0, i32 51, i32 1, i32 51)
  %27 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %28 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %29 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_I_PERIOD, align 4
  %30 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %27, %struct.v4l2_ctrl_ops* %28, i32 %29, i32 0, i32 65535, i32 1, i32 0)
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %32 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %33 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %34 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %31, %struct.v4l2_ctrl_ops* %32, i32 %33, i32 0, i32 65535, i32 1, i32 0)
  %35 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %36 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %37 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE, align 4
  %38 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %35, %struct.v4l2_ctrl_ops* %36, i32 %37, i32 0, i32 1, i32 1, i32 0)
  %39 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %40 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %41 = load i32, i32* @V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME, align 4
  %42 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %39, %struct.v4l2_ctrl_ops* %40, i32 %41, i32 0, i32 0, i32 0, i32 0)
  %43 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %44 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %45 = load i32, i32* @V4L2_CID_MPEG_VIDEO_HEADER_MODE, align 4
  %46 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME, align 4
  %47 = load i32, i32* @V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE, align 4
  %48 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %43, %struct.v4l2_ctrl_ops* %44, i32 %45, i32 %46, i32 0, i32 %47)
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %50 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %51 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  %52 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %53 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %54 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %49, %struct.v4l2_ctrl_ops* %50, i32 %51, i32 %52, i32 0, i32 %53)
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %56 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %57 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %58 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_2, align 4
  %59 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  %60 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %55, %struct.v4l2_ctrl_ops* %56, i32 %57, i32 %58, i32 0, i32 %59)
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %1
  %66 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %1
  %74 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %74, i32 0, i32 0
  %76 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
