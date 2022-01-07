; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_wait_dec_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_wait_dec_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { %struct.mtk_vcodec_ctx* }
%struct.mtk_vcodec_ctx = type { i32 }

@MTK_INST_IRQ_RECEIVED = common dso_local global i32 0, align 4
@WAIT_INTR_TIMEOUT_MS = common dso_local global i32 0, align 4
@MTK_VDEC_IRQ_STATUS_DEC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_vp9_inst*)* @vp9_wait_dec_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_wait_dec_end(%struct.vdec_vp9_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdec_vp9_inst*, align 8
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  store %struct.vdec_vp9_inst* %0, %struct.vdec_vp9_inst** %3, align 8
  %5 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %6 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %5, i32 0, i32 0
  %7 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  store %struct.mtk_vcodec_ctx* %7, %struct.mtk_vcodec_ctx** %4, align 8
  %8 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %9 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %8, i32 0, i32 0
  %10 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %9, align 8
  %11 = load i32, i32* @MTK_INST_IRQ_RECEIVED, align 4
  %12 = load i32, i32* @WAIT_INTR_TIMEOUT_MS, align 4
  %13 = call i32 @mtk_vcodec_wait_for_done_ctx(%struct.mtk_vcodec_ctx* %10, i32 %11, i32 %12)
  %14 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MTK_VDEC_IRQ_STATUS_DEC_SUCCESS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @mtk_vcodec_wait_for_done_ctx(%struct.mtk_vcodec_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
