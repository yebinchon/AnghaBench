; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_encode_pps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_encode_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { i32 }
%struct.mtk_vcodec_mem = type { i32 }

@H264_BS_MODE_PPS = common dso_local global i32 0, align 4
@MTK_VENC_IRQ_STATUS_PPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"expect irq status %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VENC_PIC_BITSTREAM_BYTE_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"bs size %d <-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_h264_inst*, %struct.mtk_vcodec_mem*, i32*)* @h264_encode_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_encode_pps(%struct.venc_h264_inst* %0, %struct.mtk_vcodec_mem* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_h264_inst*, align 8
  %6 = alloca %struct.mtk_vcodec_mem*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.venc_h264_inst* %0, %struct.venc_h264_inst** %5, align 8
  store %struct.mtk_vcodec_mem* %1, %struct.mtk_vcodec_mem** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %11 = call i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst* %10)
  %12 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %13 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %12, i32 0, i32 0
  %14 = load i32, i32* @H264_BS_MODE_PPS, align 4
  %15 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @vpu_enc_encode(i32* %13, i32 %14, i32* null, %struct.mtk_vcodec_mem* %15, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %24 = call i32 @h264_enc_wait_venc_done(%struct.venc_h264_inst* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MTK_VENC_IRQ_STATUS_PPS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %30 = load i32, i32* @MTK_VENC_IRQ_STATUS_PPS, align 4
  %31 = call i32 @mtk_vcodec_err(%struct.venc_h264_inst* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %22
  %35 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %36 = load i32, i32* @VENC_PIC_BITSTREAM_BYTE_CNT, align 4
  %37 = call i32 @h264_read_reg(%struct.venc_h264_inst* %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mtk_vcodec_debug(%struct.venc_h264_inst* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %28, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst*) #1

declare dso_local i32 @vpu_enc_encode(i32*, i32, i32*, %struct.mtk_vcodec_mem*, i32*) #1

declare dso_local i32 @h264_enc_wait_venc_done(%struct.venc_h264_inst*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_h264_inst*, i8*, i32) #1

declare dso_local i32 @h264_read_reg(%struct.venc_h264_inst*, i32) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_h264_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
