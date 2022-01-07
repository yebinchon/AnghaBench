; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-dma.c_xvip_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_composite_device = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.xvip_dma = type { i32, i32, %struct.xvip_composite_device*, %struct.TYPE_17__, %struct.TYPE_20__*, %struct.TYPE_18__, i32, %struct.TYPE_19__, %struct.TYPE_15__, %struct.TYPE_16__*, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_18__*, i32*, i32*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32*, i32*, %struct.xvip_dma*, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@XVIP_DMA_DEF_FORMAT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@XVIP_DMA_DEF_WIDTH = common dso_local global i32 0, align 4
@XVIP_DMA_DEF_HEIGHT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@xvip_dma_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%pOFn %s %u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@VFL_DIR_TX = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@xvip_dma_ioctl_ops = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@xvip_dma_queue_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to initialize VB2 queue\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"port%u\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"no VDMA channel found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register video device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xvip_dma_init(%struct.xvip_composite_device* %0, %struct.xvip_dma* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xvip_composite_device*, align 8
  %7 = alloca %struct.xvip_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.xvip_composite_device* %0, %struct.xvip_composite_device** %6, align 8
  store %struct.xvip_dma* %1, %struct.xvip_dma** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %6, align 8
  %13 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %14 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %13, i32 0, i32 2
  store %struct.xvip_composite_device* %12, %struct.xvip_composite_device** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %17 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %19 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %18, i32 0, i32 6
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %22 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %21, i32 0, i32 12
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %26 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %25, i32 0, i32 11
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %29 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %28, i32 0, i32 10
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load i32, i32* @XVIP_DMA_DEF_FORMAT, align 4
  %32 = call %struct.TYPE_16__* @xvip_get_format_by_fourcc(i32 %31)
  %33 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %34 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %33, i32 0, i32 9
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %34, align 8
  %35 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %36 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %35, i32 0, i32 9
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %41 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 6
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %44 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %45 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %48 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %49 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @XVIP_DMA_DEF_WIDTH, align 4
  %52 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %53 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @XVIP_DMA_DEF_HEIGHT, align 4
  %56 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %57 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %60 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %64 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %63, i32 0, i32 9
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %70 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %73 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %77 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %82 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %4
  %88 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  br label %91

89:                                               ; preds = %4
  %90 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %94 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %97 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 10
  %99 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %100 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %99, i32 0, i32 7
  %101 = call i32 @media_entity_pads_init(i32* %98, i32 1, %struct.TYPE_19__* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %298

105:                                              ; preds = %91
  %106 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %107 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 9
  store i32* @xvip_dma_fops, i32** %108, align 8
  %109 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %6, align 8
  %110 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %109, i32 0, i32 1
  %111 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %112 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 8
  store i32* %110, i32** %113, align 8
  %114 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %115 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %114, i32 0, i32 5
  %116 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %117 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 7
  store %struct.TYPE_18__* %115, %struct.TYPE_18__** %118, align 8
  %119 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %120 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %6, align 8
  %126 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %124, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %129, i8* %134, i32 %135)
  %137 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %138 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %139 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 5
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %105
  %145 = load i32, i32* @VFL_DIR_RX, align 4
  br label %148

146:                                              ; preds = %105
  %147 = load i32, i32* @VFL_DIR_TX, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %151 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @video_device_release_empty, align 4
  %154 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %155 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 8
  %157 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %158 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 2
  store i32* @xvip_dma_ioctl_ops, i32** %159, align 8
  %160 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %161 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %160, i32 0, i32 6
  %162 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %163 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  store i32* %161, i32** %164, align 8
  %165 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %166 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %167 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %148
  %173 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %174 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %175 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %186

179:                                              ; preds = %148
  %180 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %181 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %182 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %179, %172
  %187 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %188 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %187, i32 0, i32 3
  %189 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %190 = call i32 @video_set_drvdata(%struct.TYPE_17__* %188, %struct.xvip_dma* %189)
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %193 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* @VB2_MMAP, align 4
  %196 = load i32, i32* @VB2_USERPTR, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @VB2_DMABUF, align 4
  %199 = or i32 %197, %198
  %200 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %201 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  %203 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %204 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %203, i32 0, i32 6
  %205 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %206 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 8
  store i32* %204, i32** %207, align 8
  %208 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %209 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %210 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 7
  store %struct.xvip_dma* %208, %struct.xvip_dma** %211, align 8
  %212 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %213 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 2
  store i32 4, i32* %214, align 8
  %215 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %216 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 6
  store i32* @xvip_dma_queue_qops, i32** %217, align 8
  %218 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %219 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 5
  store i32* @vb2_dma_contig_memops, i32** %220, align 8
  %221 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %222 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_EOF, align 4
  %223 = or i32 %221, %222
  %224 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %225 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 3
  store i32 %223, i32* %226, align 4
  %227 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %228 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %227, i32 0, i32 2
  %229 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %228, align 8
  %230 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %229, i32 0, i32 0
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %233 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %232, i32 0, i32 5
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 4
  store %struct.TYPE_12__* %231, %struct.TYPE_12__** %234, align 8
  %235 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %236 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %235, i32 0, i32 5
  %237 = call i32 @vb2_queue_init(%struct.TYPE_18__* %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %186
  %241 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %242 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %241, i32 0, i32 2
  %243 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %242, align 8
  %244 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %243, i32 0, i32 0
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = call i32 @dev_err(%struct.TYPE_12__* %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %298

247:                                              ; preds = %186
  %248 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %249 = load i32, i32* %9, align 4
  %250 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %248, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %249)
  %251 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %252 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %251, i32 0, i32 2
  %253 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %252, align 8
  %254 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %253, i32 0, i32 0
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %254, align 8
  %256 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %257 = call %struct.TYPE_20__* @dma_request_slave_channel(%struct.TYPE_12__* %255, i8* %256)
  %258 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %259 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %258, i32 0, i32 4
  store %struct.TYPE_20__* %257, %struct.TYPE_20__** %259, align 8
  %260 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %261 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %260, i32 0, i32 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %261, align 8
  %263 = icmp eq %struct.TYPE_20__* %262, null
  br i1 %263, label %264, label %273

264:                                              ; preds = %247
  %265 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %266 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %265, i32 0, i32 2
  %267 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %266, align 8
  %268 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %267, i32 0, i32 0
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = call i32 @dev_err(%struct.TYPE_12__* %269, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %271 = load i32, i32* @ENODEV, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %11, align 4
  br label %298

273:                                              ; preds = %247
  %274 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %275 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %274, i32 0, i32 4
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = shl i32 1, %280
  %282 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %283 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 4
  %284 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %285 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %284, i32 0, i32 3
  %286 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %287 = call i32 @video_register_device(%struct.TYPE_17__* %285, i32 %286, i32 -1)
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %11, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %273
  %291 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %292 = getelementptr inbounds %struct.xvip_dma, %struct.xvip_dma* %291, i32 0, i32 2
  %293 = load %struct.xvip_composite_device*, %struct.xvip_composite_device** %292, align 8
  %294 = getelementptr inbounds %struct.xvip_composite_device, %struct.xvip_composite_device* %293, i32 0, i32 0
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = call i32 @dev_err(%struct.TYPE_12__* %295, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %298

297:                                              ; preds = %273
  store i32 0, i32* %5, align 4
  br label %302

298:                                              ; preds = %290, %264, %240, %104
  %299 = load %struct.xvip_dma*, %struct.xvip_dma** %7, align 8
  %300 = call i32 @xvip_dma_cleanup(%struct.xvip_dma* %299)
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %5, align 4
  br label %302

302:                                              ; preds = %298, %297
  %303 = load i32, i32* %5, align 4
  ret i32 %303
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_16__* @xvip_get_format_by_fourcc(i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_17__*, %struct.xvip_dma*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_18__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_20__* @dma_request_slave_channel(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @xvip_dma_cleanup(%struct.xvip_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
