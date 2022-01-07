; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_video_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_video_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.video_device = type { i32, %struct.vb2_queue*, i32*, i32, %struct.v4l2_ctrl_handler*, i32* }
%struct.vb2_queue = type { i32, i32, i32, i32*, i32*, i32, i32*, i32*, %struct.cx25821_channel*, i32, i32 }
%struct.cx25821_channel = type { i32, i32, i64, %struct.vb2_queue, %struct.TYPE_6__, %struct.TYPE_8__*, i8*, i32, %struct.TYPE_5__*, %struct.v4l2_ctrl_handler, %struct.video_device }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.cx25821_channel* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.cx25821_dev = type { i32, i8*, i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.cx25821_channel*, i32 }
%struct.TYPE_7__ = type { i32 }

@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@MAX_VID_CAP_CHANNEL_NUM = common dso_local global i32 0, align 4
@SRAM_CH08 = common dso_local global i32 0, align 4
@cx25821_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@SRAM_CH09 = common dso_local global i32 0, align 4
@cx25821_sram_channels = common dso_local global %struct.TYPE_8__* null, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@PIXEL_FRMT_411 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_Y41P = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@VB2_WRITE = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@cx25821_video_qops = common dso_local global i32 0, align 4
@vb2_dma_sg_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@cx25821_video_out_device = common dso_local global %struct.video_device zeroinitializer, align 8
@cx25821_video_device = common dso_local global %struct.video_device zeroinitializer, align 8
@VFL_DIR_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s #%d\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32* null, align 8
@PCI_INT_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_video_register(%struct.cx25821_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx25821_channel*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  %11 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %13 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %14, i32 0, i32 8
  %16 = call i32 @spin_lock_init(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %263, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAX_VID_CAP_CHANNEL_NUM, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %266

22:                                               ; preds = %17
  %23 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %23, i32 0, i32 7
  %25 = load %struct.cx25821_channel*, %struct.cx25821_channel** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %25, i64 %27
  store %struct.cx25821_channel* %28, %struct.cx25821_channel** %6, align 8
  %29 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %30 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %29, i32 0, i32 10
  store %struct.video_device* %30, %struct.video_device** %7, align 8
  %31 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %32 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %31, i32 0, i32 9
  store %struct.v4l2_ctrl_handler* %32, %struct.v4l2_ctrl_handler** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SRAM_CH08, align 4
  %35 = icmp sgt i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SRAM_CH08, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %263

41:                                               ; preds = %22
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %41
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %46 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %45, i32 4)
  %47 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %48 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %49 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %47, i32* @cx25821_ctrl_ops, i32 %48, i32 0, i32 10000, i32 1, i32 6200)
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %51 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %52 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %50, i32* @cx25821_ctrl_ops, i32 %51, i32 0, i32 10000, i32 1, i32 5000)
  %53 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %54 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %55 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %53, i32* @cx25821_ctrl_ops, i32 %54, i32 0, i32 10000, i32 1, i32 5000)
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %57 = load i32, i32* @V4L2_CID_HUE, align 4
  %58 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %56, i32* @cx25821_ctrl_ops, i32 %57, i32 0, i32 10000, i32 1, i32 5000)
  %59 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %44
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  br label %269

67:                                               ; preds = %44
  %68 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %69 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %269

73:                                               ; preds = %67
  br label %90

74:                                               ; preds = %41
  %75 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %76 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %75, i32 0, i32 6
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SRAM_CH09, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %81
  %83 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %84 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %83, i32 0, i32 8
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %84, align 8
  %85 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %86 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %87 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %86, i32 0, i32 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store %struct.cx25821_channel* %85, %struct.cx25821_channel** %89, align 8
  br label %90

90:                                               ; preds = %74, %73
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cx25821_sram_channels, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %96 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %95, i32 0, i32 5
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %96, align 8
  %97 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %98 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %97, i32 0, i32 0
  store i32 720, i32* %98, align 8
  %99 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %100 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %101 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 8
  %102 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %103 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @V4L2_STD_625_50, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %110 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %109, i32 0, i32 1
  store i32 576, i32* %110, align 4
  br label %114

111:                                              ; preds = %90
  %112 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %113 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %112, i32 0, i32 1
  store i32 480, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %116 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PIXEL_FRMT_411, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i32, i32* @V4L2_PIX_FMT_Y41P, align 4
  %122 = call i8* @cx25821_format_by_fourcc(i32 %121)
  %123 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %124 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  br label %130

125:                                              ; preds = %114
  %126 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %127 = call i8* @cx25821_format_by_fourcc(i32 %126)
  %128 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %129 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %132 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %131, i32 0, i32 5
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cx_write(i32 %135, i32 -1)
  %137 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %138 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = call i32 @INIT_LIST_HEAD(i32* %139)
  %141 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %142 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %141, i32 0, i32 3
  store %struct.vb2_queue* %142, %struct.vb2_queue** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %130
  %146 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  br label %149

147:                                              ; preds = %130
  %148 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %152 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @VB2_MMAP, align 4
  %154 = load i32, i32* @VB2_USERPTR, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @VB2_DMABUF, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %159 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i32, i32* @VB2_WRITE, align 4
  br label %166

164:                                              ; preds = %149
  %165 = load i32, i32* @VB2_READ, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %169 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* @GFP_DMA32, align 4
  %173 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %174 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  %175 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %176 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %175, i32 0, i32 1
  store i32 2, i32* %176, align 4
  %177 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %178 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %179 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %178, i32 0, i32 8
  store %struct.cx25821_channel* %177, %struct.cx25821_channel** %179, align 8
  %180 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %181 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %180, i32 0, i32 2
  store i32 4, i32* %181, align 8
  %182 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %183 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %182, i32 0, i32 7
  store i32* @cx25821_video_qops, i32** %183, align 8
  %184 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %185 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %184, i32 0, i32 6
  store i32* @vb2_dma_sg_memops, i32** %185, align 8
  %186 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %187 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %188 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %187, i32 0, i32 5
  store i32 %186, i32* %188, align 8
  %189 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %190 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %189, i32 0, i32 3
  %191 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %192 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %191, i32 0, i32 4
  store i32* %190, i32** %192, align 8
  %193 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %194 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %193, i32 0, i32 5
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %198 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %197, i32 0, i32 3
  store i32* %196, i32** %198, align 8
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %166
  %202 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %203 = call i32 @vb2_queue_init(%struct.vb2_queue* %202)
  store i32 %203, i32* %4, align 4
  %204 = load i32, i32* %4, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %269

207:                                              ; preds = %201
  br label %208

208:                                              ; preds = %207, %166
  %209 = load %struct.video_device*, %struct.video_device** %7, align 8
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = bitcast %struct.video_device* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 8 bitcast (%struct.video_device* @cx25821_video_out_device to i8*), i64 48, i1 false)
  br label %216

214:                                              ; preds = %208
  %215 = bitcast %struct.video_device* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %215, i8* align 8 bitcast (%struct.video_device* @cx25821_video_device to i8*), i64 48, i1 false)
  br label %216

216:                                              ; preds = %214, %212
  %217 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %218 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %217, i32 0, i32 4
  %219 = load %struct.video_device*, %struct.video_device** %7, align 8
  %220 = getelementptr inbounds %struct.video_device, %struct.video_device* %219, i32 0, i32 5
  store i32* %218, i32** %220, align 8
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %216
  %224 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %225 = load %struct.video_device*, %struct.video_device** %7, align 8
  %226 = getelementptr inbounds %struct.video_device, %struct.video_device* %225, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %224, %struct.v4l2_ctrl_handler** %226, align 8
  br label %231

227:                                              ; preds = %216
  %228 = load i32, i32* @VFL_DIR_TX, align 4
  %229 = load %struct.video_device*, %struct.video_device** %7, align 8
  %230 = getelementptr inbounds %struct.video_device, %struct.video_device* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %227, %223
  %232 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %233 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %232, i32 0, i32 3
  %234 = load %struct.video_device*, %struct.video_device** %7, align 8
  %235 = getelementptr inbounds %struct.video_device, %struct.video_device* %234, i32 0, i32 2
  store i32* %233, i32** %235, align 8
  %236 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %237 = load %struct.video_device*, %struct.video_device** %7, align 8
  %238 = getelementptr inbounds %struct.video_device, %struct.video_device* %237, i32 0, i32 1
  store %struct.vb2_queue* %236, %struct.vb2_queue** %238, align 8
  %239 = load %struct.video_device*, %struct.video_device** %7, align 8
  %240 = getelementptr inbounds %struct.video_device, %struct.video_device* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %243 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = call i32 @snprintf(i32 %241, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %244, i32 %245)
  %247 = load %struct.video_device*, %struct.video_device** %7, align 8
  %248 = load %struct.cx25821_channel*, %struct.cx25821_channel** %6, align 8
  %249 = call i32 @video_set_drvdata(%struct.video_device* %247, %struct.cx25821_channel* %248)
  %250 = load %struct.video_device*, %struct.video_device** %7, align 8
  %251 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %252 = load i32*, i32** @video_nr, align 8
  %253 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %254 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @video_register_device(%struct.video_device* %250, i32 %251, i32 %257)
  store i32 %258, i32* %4, align 4
  %259 = load i32, i32* %4, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %231
  br label %269

262:                                              ; preds = %231
  br label %263

263:                                              ; preds = %262, %40
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %5, align 4
  br label %17

266:                                              ; preds = %17
  %267 = load i32, i32* @PCI_INT_MSK, align 4
  %268 = call i32 @cx_set(i32 %267, i32 255)
  store i32 0, i32* %2, align 4
  br label %280

269:                                              ; preds = %261, %206, %72, %63
  br label %270

270:                                              ; preds = %273, %269
  %271 = load i32, i32* %5, align 4
  %272 = icmp sge i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %275 = load i32, i32* %5, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %5, align 4
  %277 = call i32 @cx25821_video_unregister(%struct.cx25821_dev* %274, i32 %275)
  br label %270

278:                                              ; preds = %270
  %279 = load i32, i32* %4, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %278, %266
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i8* @cx25821_format_by_fourcc(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.cx25821_channel*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx25821_video_unregister(%struct.cx25821_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
