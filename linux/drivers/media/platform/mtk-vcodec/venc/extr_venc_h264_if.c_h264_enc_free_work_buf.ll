; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_free_work_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_free_work_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { i32, i32, i32* }

@VENC_H264_VPU_WORK_BUF_MAX = common dso_local global i32 0, align 4
@VENC_H264_VPU_WORK_BUF_SKIP_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venc_h264_inst*)* @h264_enc_free_work_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h264_enc_free_work_buf(%struct.venc_h264_inst* %0) #0 {
  %2 = alloca %struct.venc_h264_inst*, align 8
  %3 = alloca i32, align 4
  store %struct.venc_h264_inst* %0, %struct.venc_h264_inst** %2, align 8
  %4 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %5 = call i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VENC_H264_VPU_WORK_BUF_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @VENC_H264_VPU_WORK_BUF_SKIP_FRAME, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %16 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %19 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @mtk_vcodec_mem_free(i32 %17, i32* %23)
  br label %25

25:                                               ; preds = %14, %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %31 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %34 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %33, i32 0, i32 0
  %35 = call i32 @mtk_vcodec_mem_free(i32 %32, i32* %34)
  %36 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %37 = call i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst* %36)
  ret void
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst*) #1

declare dso_local i32 @mtk_vcodec_mem_free(i32, i32*) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
