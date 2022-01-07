; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_video_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { i64, i32, %struct.tw5864_h264_frame*, %struct.TYPE_7__*, i32, %struct.TYPE_9__*, i32, i64, i64 }
%struct.tw5864_h264_frame = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.tw5864_dev* }

@H264_BUF_CNT = common dso_local global i32 0, align 4
@H264_VLC_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"dma alloc fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@H264_MV_BUF_SIZE = common dso_local global i32 0, align 4
@TW5864_INDIR_VD_108_POL = common dso_local global i32 0, align 4
@TW5864_INDIR_VD_108_POL_BOTH = common dso_local global i32 0, align 4
@TW5864_INDIR_CLK0_SEL = common dso_local global i32 0, align 4
@TW5864_INDIR_DDRA_DLL_DQS_SEL0 = common dso_local global i32 0, align 4
@TW5864_INDIR_DDRA_DLL_DQS_SEL1 = common dso_local global i32 0, align 4
@TW5864_INDIR_DDRA_DLL_CLK90_SEL = common dso_local global i32 0, align 4
@TW5864_INDIR_DDRB_DLL_DQS_SEL0 = common dso_local global i32 0, align 4
@TW5864_INDIR_DDRB_DLL_DQS_SEL1 = common dso_local global i32 0, align 4
@TW5864_INDIR_DDRB_DLL_CLK90_SEL = common dso_local global i32 0, align 4
@TW5864_INDIR_RESET = common dso_local global i32 0, align 4
@TW5864_INDIR_RESET_VD = common dso_local global i32 0, align 4
@TW5864_INDIR_RESET_DLL = common dso_local global i32 0, align 4
@TW5864_INDIR_RESET_MUX_CORE = common dso_local global i32 0, align 4
@TW5864_FULL_HALF_MODE_SEL = common dso_local global i32 0, align 4
@TW5864_INDIR_PV_VD_CK_POL = common dso_local global i32 0, align 4
@TW5864_VLC_STREAM_BASE_ADDR = common dso_local global i32 0, align 4
@TW5864_MV_STREAM_BASE_ADDR = common dso_local global i32 0, align 4
@TW5864_SEN_EN_CH = common dso_local global i32 0, align 4
@TW5864_H264EN_CH_EN = common dso_local global i32 0, align 4
@TW5864_H264EN_BUS0_MAP = common dso_local global i32 0, align 4
@TW5864_H264EN_BUS1_MAP = common dso_local global i32 0, align 4
@TW5864_H264EN_BUS2_MAP = common dso_local global i32 0, align 4
@TW5864_H264EN_BUS3_MAP = common dso_local global i32 0, align 4
@TW5864_ENC_BUF_PTR_REC1 = common dso_local global i32 0, align 4
@TW5864_PCI_INTTM_SCALE = common dso_local global i32 0, align 4
@TW5864_INTERLACING = common dso_local global i32 0, align 4
@TW5864_DI_EN = common dso_local global i32 0, align 4
@TW5864_MASTER_ENB_REG = common dso_local global i32 0, align 4
@TW5864_PCI_VLC_INTR_ENB = common dso_local global i32 0, align 4
@TW5864_PCI_INTR_CTL = common dso_local global i32 0, align 4
@TW5864_TIMER_INTR_ENB = common dso_local global i32 0, align 4
@TW5864_PCI_MAST_ENB = common dso_local global i32 0, align 4
@TW5864_MVD_VLC_MAST_ENB = common dso_local global i32 0, align 4
@TW5864_INTR_VLC_DONE = common dso_local global i32 0, align 4
@TW5864_INTR_TIMER = common dso_local global i32 0, align 4
@tw5864_handle_frame_task = common dso_local global i32 0, align 4
@TW5864_INPUTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw5864_video_init(%struct.tw5864_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw5864_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tw5864_h264_frame*, align 8
  store %struct.tw5864_dev* %0, %struct.tw5864_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %96, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @H264_BUF_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %99

16:                                               ; preds = %12
  %17 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %17, i32 0, i32 2
  %19 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %19, i64 %21
  store %struct.tw5864_h264_frame* %22, %struct.tw5864_h264_frame** %11, align 8
  %23 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %24 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* @H264_VLC_BUF_SIZE, align 4
  %28 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %29 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @GFP_DMA32, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @dma_alloc_coherent(i32* %26, i32 %27, i32* %30, i32 %33)
  %35 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %36 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %39 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %16
  %44 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %45 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %44, i32 0, i32 3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %284

51:                                               ; preds = %16
  %52 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %53 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %52, i32 0, i32 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* @H264_MV_BUF_SIZE, align 4
  %57 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %58 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* @GFP_DMA32, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @dma_alloc_coherent(i32* %55, i32 %56, i32* %59, i32 %62)
  %64 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %65 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  %67 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %68 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %94, label %72

72:                                               ; preds = %51
  %73 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %74 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %81 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %80, i32 0, i32 3
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* @H264_VLC_BUF_SIZE, align 4
  %85 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %86 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %11, align 8
  %90 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dma_free_coherent(i32* %83, i32 %84, i8* %88, i32 %92)
  br label %284

94:                                               ; preds = %51
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %12

99:                                               ; preds = %12
  %100 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %101 = call i32 @tw5864_encoder_tables_upload(%struct.tw5864_dev* %100)
  %102 = load i32, i32* @TW5864_INDIR_VD_108_POL, align 4
  %103 = load i32, i32* @TW5864_INDIR_VD_108_POL_BOTH, align 4
  %104 = call i32 @tw_indir_writeb(i32 %102, i32 %103)
  %105 = load i32, i32* @TW5864_INDIR_CLK0_SEL, align 4
  %106 = call i32 @tw_indir_writeb(i32 %105, i32 0)
  %107 = load i32, i32* @TW5864_INDIR_DDRA_DLL_DQS_SEL0, align 4
  %108 = call i32 @tw_indir_writeb(i32 %107, i32 2)
  %109 = load i32, i32* @TW5864_INDIR_DDRA_DLL_DQS_SEL1, align 4
  %110 = call i32 @tw_indir_writeb(i32 %109, i32 2)
  %111 = load i32, i32* @TW5864_INDIR_DDRA_DLL_CLK90_SEL, align 4
  %112 = call i32 @tw_indir_writeb(i32 %111, i32 2)
  %113 = load i32, i32* @TW5864_INDIR_DDRB_DLL_DQS_SEL0, align 4
  %114 = call i32 @tw_indir_writeb(i32 %113, i32 2)
  %115 = load i32, i32* @TW5864_INDIR_DDRB_DLL_DQS_SEL1, align 4
  %116 = call i32 @tw_indir_writeb(i32 %115, i32 2)
  %117 = load i32, i32* @TW5864_INDIR_DDRB_DLL_CLK90_SEL, align 4
  %118 = call i32 @tw_indir_writeb(i32 %117, i32 2)
  %119 = load i32, i32* @TW5864_INDIR_RESET, align 4
  %120 = call i32 @tw_indir_writeb(i32 %119, i32 0)
  %121 = load i32, i32* @TW5864_INDIR_RESET, align 4
  %122 = load i32, i32* @TW5864_INDIR_RESET_VD, align 4
  %123 = load i32, i32* @TW5864_INDIR_RESET_DLL, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @TW5864_INDIR_RESET_MUX_CORE, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @tw_indir_writeb(i32 %121, i32 %126)
  %128 = call i32 @msleep(i32 20)
  %129 = load i32, i32* @TW5864_FULL_HALF_MODE_SEL, align 4
  %130 = call i32 @tw_writel(i32 %129, i32 0)
  %131 = load i32, i32* @TW5864_INDIR_PV_VD_CK_POL, align 4
  %132 = call i32 @TW5864_INDIR_PV_VD_CK_POL_VD(i32 0)
  %133 = call i32 @TW5864_INDIR_PV_VD_CK_POL_VD(i32 1)
  %134 = or i32 %132, %133
  %135 = call i32 @TW5864_INDIR_PV_VD_CK_POL_VD(i32 2)
  %136 = or i32 %134, %135
  %137 = call i32 @TW5864_INDIR_PV_VD_CK_POL_VD(i32 3)
  %138 = or i32 %136, %137
  %139 = call i32 @tw_indir_writeb(i32 %131, i32 %138)
  %140 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %141 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %140, i32 0, i32 6
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @spin_lock_irqsave(i32* %141, i64 %142)
  %144 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %145 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %144, i32 0, i32 8
  store i64 0, i64* %145, align 8
  %146 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %147 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %146, i32 0, i32 7
  store i64 0, i64* %147, align 8
  %148 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %149 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* @TW5864_VLC_STREAM_BASE_ADDR, align 4
  %151 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %152 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %151, i32 0, i32 2
  %153 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %152, align 8
  %154 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %155 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %153, i64 %156
  %158 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @tw_writel(i32 %150, i32 %160)
  %162 = load i32, i32* @TW5864_MV_STREAM_BASE_ADDR, align 4
  %163 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %164 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %163, i32 0, i32 2
  %165 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %164, align 8
  %166 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %167 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %165, i64 %168
  %170 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @tw_writel(i32 %162, i32 %172)
  %174 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %175 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %174, i32 0, i32 6
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load i32, i32* @TW5864_SEN_EN_CH, align 4
  %179 = call i32 @tw_writel(i32 %178, i32 15)
  %180 = load i32, i32* @TW5864_H264EN_CH_EN, align 4
  %181 = call i32 @tw_writel(i32 %180, i32 15)
  %182 = load i32, i32* @TW5864_H264EN_BUS0_MAP, align 4
  %183 = call i32 @tw_writel(i32 %182, i32 0)
  %184 = load i32, i32* @TW5864_H264EN_BUS1_MAP, align 4
  %185 = call i32 @tw_writel(i32 %184, i32 4369)
  %186 = load i32, i32* @TW5864_H264EN_BUS2_MAP, align 4
  %187 = call i32 @tw_writel(i32 %186, i32 8738)
  %188 = load i32, i32* @TW5864_H264EN_BUS3_MAP, align 4
  %189 = call i32 @tw_writel(i32 %188, i32 13107)
  %190 = load i32, i32* @TW5864_ENC_BUF_PTR_REC1, align 4
  %191 = call i32 @tw_writel(i32 %190, i32 255)
  %192 = load i32, i32* @TW5864_PCI_INTTM_SCALE, align 4
  %193 = call i32 @tw_writel(i32 %192, i32 0)
  %194 = load i32, i32* @TW5864_INTERLACING, align 4
  %195 = load i32, i32* @TW5864_DI_EN, align 4
  %196 = call i32 @tw_writel(i32 %194, i32 %195)
  %197 = load i32, i32* @TW5864_MASTER_ENB_REG, align 4
  %198 = load i32, i32* @TW5864_PCI_VLC_INTR_ENB, align 4
  %199 = call i32 @tw_writel(i32 %197, i32 %198)
  %200 = load i32, i32* @TW5864_PCI_INTR_CTL, align 4
  %201 = load i32, i32* @TW5864_TIMER_INTR_ENB, align 4
  %202 = load i32, i32* @TW5864_PCI_MAST_ENB, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @TW5864_MVD_VLC_MAST_ENB, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @tw_writel(i32 %200, i32 %205)
  %207 = load i32, i32* @TW5864_INTR_VLC_DONE, align 4
  %208 = load i32, i32* @TW5864_INTR_TIMER, align 4
  %209 = or i32 %207, %208
  %210 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %211 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  %214 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %215 = call i32 @tw5864_irqmask_apply(%struct.tw5864_dev* %214)
  %216 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %217 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %216, i32 0, i32 4
  %218 = load i32, i32* @tw5864_handle_frame_task, align 4
  %219 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %220 = ptrtoint %struct.tw5864_dev* %219 to i64
  %221 = call i32 @tasklet_init(i32* %217, i32 %218, i64 %220)
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %260, %99
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @TW5864_INPUTS, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %263

226:                                              ; preds = %222
  %227 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %228 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %229 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %228, i32 0, i32 5
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  store %struct.tw5864_dev* %227, %struct.tw5864_dev** %234, align 8
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %237 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %236, i32 0, i32 5
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  store i32 %235, i32* %242, align 8
  %243 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %244 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %243, i32 0, i32 5
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i64 %247
  %249 = load i32*, i32** %5, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @tw5864_video_input_init(%struct.TYPE_9__* %248, i32 %253)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %226
  br label %264

258:                                              ; preds = %226
  %259 = load i32, i32* %6, align 4
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %258
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  br label %222

263:                                              ; preds = %222
  store i32 0, i32* %3, align 4
  br label %343

264:                                              ; preds = %257
  %265 = load i32, i32* %10, align 4
  store i32 %265, i32* %6, align 4
  br label %266

266:                                              ; preds = %277, %264
  %267 = load i32, i32* %6, align 4
  %268 = icmp sge i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %266
  %270 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %271 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %270, i32 0, i32 5
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i64 %274
  %276 = call i32 @tw5864_video_input_fini(%struct.TYPE_9__* %275)
  br label %277

277:                                              ; preds = %269
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %6, align 4
  br label %266

280:                                              ; preds = %266
  %281 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %282 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %281, i32 0, i32 4
  %283 = call i32 @tasklet_kill(i32* %282)
  br label %284

284:                                              ; preds = %280, %72, %43
  %285 = load i32, i32* %9, align 4
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %338, %284
  %287 = load i32, i32* %6, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %341

289:                                              ; preds = %286
  %290 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %291 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %290, i32 0, i32 3
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32, i32* @H264_VLC_BUF_SIZE, align 4
  %295 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %296 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %295, i32 0, i32 2
  %297 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %296, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %297, i64 %299
  %301 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %305 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %304, i32 0, i32 2
  %306 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %305, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %306, i64 %308
  %310 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @dma_free_coherent(i32* %293, i32 %294, i8* %303, i32 %312)
  %314 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %315 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %314, i32 0, i32 3
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = load i32, i32* @H264_MV_BUF_SIZE, align 4
  %319 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %320 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %319, i32 0, i32 2
  %321 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %321, i64 %323
  %325 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  %328 = load %struct.tw5864_dev*, %struct.tw5864_dev** %4, align 8
  %329 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %328, i32 0, i32 2
  %330 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %330, i64 %332
  %334 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @dma_free_coherent(i32* %317, i32 %318, i8* %327, i32 %336)
  br label %338

338:                                              ; preds = %289
  %339 = load i32, i32* %6, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %6, align 4
  br label %286

341:                                              ; preds = %286
  %342 = load i32, i32* %7, align 4
  store i32 %342, i32* %3, align 4
  br label %343

343:                                              ; preds = %341, %263
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @tw5864_encoder_tables_upload(%struct.tw5864_dev*) #1

declare dso_local i32 @tw_indir_writeb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @TW5864_INDIR_PV_VD_CK_POL_VD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tw5864_irqmask_apply(%struct.tw5864_dev*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @tw5864_video_input_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @tw5864_video_input_fini(%struct.TYPE_9__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
