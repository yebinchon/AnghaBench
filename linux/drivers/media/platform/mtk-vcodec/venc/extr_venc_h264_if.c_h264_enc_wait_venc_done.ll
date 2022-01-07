; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_wait_venc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_wait_venc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { i64 }
%struct.mtk_vcodec_ctx = type { i32 }

@MTK_INST_IRQ_RECEIVED = common dso_local global i32 0, align 4
@WAIT_INTR_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"irq_status %x <-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_h264_inst*)* @h264_enc_wait_venc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_enc_wait_venc_done(%struct.venc_h264_inst* %0) #0 {
  %2 = alloca %struct.venc_h264_inst*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  store %struct.venc_h264_inst* %0, %struct.venc_h264_inst** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %6 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.mtk_vcodec_ctx*
  store %struct.mtk_vcodec_ctx* %8, %struct.mtk_vcodec_ctx** %4, align 8
  %9 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %10 = load i32, i32* @MTK_INST_IRQ_RECEIVED, align 4
  %11 = load i32, i32* @WAIT_INTR_TIMEOUT_MS, align 4
  %12 = call i32 @mtk_vcodec_wait_for_done_ctx(%struct.mtk_vcodec_ctx* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mtk_vcodec_debug(%struct.venc_h264_inst* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(%struct.mtk_vcodec_ctx*, i32, i32) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_h264_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
