; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_free_work_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_free_work_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vp8_inst = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@VENC_VP8_VPU_WORK_BUF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venc_vp8_inst*)* @vp8_enc_free_work_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp8_enc_free_work_buf(%struct.venc_vp8_inst* %0) #0 {
  %2 = alloca %struct.venc_vp8_inst*, align 8
  %3 = alloca i32, align 4
  store %struct.venc_vp8_inst* %0, %struct.venc_vp8_inst** %2, align 8
  %4 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %2, align 8
  %5 = call i32 @mtk_vcodec_debug_enter(%struct.venc_vp8_inst* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VENC_VP8_VPU_WORK_BUF_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %2, align 8
  %12 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %32

21:                                               ; preds = %10
  %22 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %2, align 8
  %23 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %2, align 8
  %26 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = call i32 @mtk_vcodec_mem_free(i32 %24, %struct.TYPE_2__* %30)
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %2, align 8
  %37 = call i32 @mtk_vcodec_debug_leave(%struct.venc_vp8_inst* %36)
  ret void
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_vp8_inst*) #1

declare dso_local i32 @mtk_vcodec_mem_free(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_vp8_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
