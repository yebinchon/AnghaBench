; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_mtk_vcodec_dec_ctrls_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_mtk_vcodec_dec_ctrls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@mtk_vcodec_dec_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MIN_BUFFERS_FOR_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_VP9_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_VP9_PROFILE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Adding control failed %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_vcodec_dec_ctrls_setup(%struct.mtk_vcodec_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %3, align 8
  %5 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %5, i32 0, i32 0
  %7 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %6, i32 1)
  %8 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* @V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, align 4
  %11 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_5__* %9, i32* @mtk_vcodec_dec_ctrl_ops, i32 %10, i32 0, i32 32, i32 1, i32 1)
  store %struct.v4l2_ctrl* %11, %struct.v4l2_ctrl** %4, align 8
  %12 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* @V4L2_CID_MPEG_VIDEO_VP9_PROFILE, align 4
  %20 = load i32, i32* @V4L2_MPEG_VIDEO_VP9_PROFILE_0, align 4
  %21 = load i32, i32* @V4L2_MPEG_VIDEO_VP9_PROFILE_0, align 4
  %22 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_5__* %18, i32* @mtk_vcodec_dec_ctrl_ops, i32 %19, i32 %20, i32 0, i32 %21)
  %23 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %1
  %29 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %1
  %39 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %39, i32 0, i32 0
  %41 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_5__* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_5__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
