; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_encode_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.venc_frm_buf = type { i32 }
%struct.mtk_vcodec_mem = type { i32 }

@H264_BS_MODE_FRAME = common dso_local global i32 0, align 4
@VEN_IPI_MSG_ENC_STATE_SKIP = common dso_local global i64 0, align 8
@VENC_H264_VPU_WORK_BUF_SKIP_FRAME = common dso_local global i64 0, align 8
@MTK_VENC_IRQ_STATUS_FRM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"irq_status=%d failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@VENC_PIC_BITSTREAM_BYTE_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"frm %d bs_size %d key_frm %d <-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_h264_inst*, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, i32*)* @h264_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_encode_frame(%struct.venc_h264_inst* %0, %struct.venc_frm_buf* %1, %struct.mtk_vcodec_mem* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.venc_h264_inst*, align 8
  %7 = alloca %struct.venc_frm_buf*, align 8
  %8 = alloca %struct.mtk_vcodec_mem*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.venc_h264_inst* %0, %struct.venc_h264_inst** %6, align 8
  store %struct.venc_frm_buf* %1, %struct.venc_frm_buf** %7, align 8
  store %struct.mtk_vcodec_mem* %2, %struct.mtk_vcodec_mem** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %13 = call i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst* %12)
  %14 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %15 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %14, i32 0, i32 0
  %16 = load i32, i32* @H264_BS_MODE_FRAME, align 4
  %17 = load %struct.venc_frm_buf*, %struct.venc_frm_buf** %7, align 8
  %18 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @vpu_enc_encode(%struct.TYPE_4__* %15, i32 %16, %struct.venc_frm_buf* %17, %struct.mtk_vcodec_mem* %18, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %89

25:                                               ; preds = %4
  %26 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %27 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VEN_IPI_MSG_ENC_STATE_SKIP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %34 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %39 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %42 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @VENC_H264_VPU_WORK_BUF_SKIP_FRAME, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %40, i32 %47, i32 %49)
  %51 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %52 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %89

56:                                               ; preds = %25
  %57 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %58 = call i32 @h264_enc_wait_venc_done(%struct.venc_h264_inst* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MTK_VENC_IRQ_STATUS_FRM, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @mtk_vcodec_err(%struct.venc_h264_inst* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %89

68:                                               ; preds = %56
  %69 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %70 = load i32, i32* @VENC_PIC_BITSTREAM_BYTE_CNT, align 4
  %71 = call i32 @h264_read_reg(%struct.venc_h264_inst* %69, i32 %70)
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %74 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %78 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %79 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %6, align 8
  %84 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mtk_vcodec_debug(%struct.venc_h264_inst* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %82, i32 %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %68, %62, %32, %23
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst*) #1

declare dso_local i32 @vpu_enc_encode(%struct.TYPE_4__*, i32, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @h264_enc_wait_venc_done(%struct.venc_h264_inst*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_h264_inst*, i8*, i32) #1

declare dso_local i32 @h264_read_reg(%struct.venc_h264_inst*, i32) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_h264_inst*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
