; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_video_input_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_video_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.v4l2_ctrl_handler*, %struct.TYPE_12__*, i32*, i32* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32*, i64, %struct.tw5864_input*, i32*, i32*, i32, i32 }
%struct.tw5864_input = type { i32, i32, i32, i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__, %struct.tw5864_dev*, i32, i32, i32, %struct.v4l2_ctrl_handler }
%struct.tw5864_dev = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@tw5864_video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@tw5864_video_template = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@tw5864_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@MAX_GOP_SIZE = common dso_local global i32 0, align 4
@GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_MIN_QP = common dso_local global i32 0, align 4
@QP_VALUE = common dso_local global i32 0, align 4
@V4L2_CID_DETECT_MD_MODE = common dso_local global i32 0, align 4
@V4L2_DETECT_MD_MODE_THRESHOLD_GRID = common dso_local global i32 0, align 4
@V4L2_DETECT_MD_MODE_DISABLED = common dso_local global i32 0, align 4
@V4L2_CID_DETECT_MD_GLOBAL_THRESHOLD = common dso_local global i32 0, align 4
@tw5864_md_thresholds = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Registered video device %s\0A\00", align 1
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@STD_NTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw5864_input*, i32)* @tw5864_video_input_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_video_input_init(%struct.tw5864_input* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw5864_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tw5864_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.tw5864_input* %0, %struct.tw5864_input** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %10 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %9, i32 0, i32 8
  %11 = load %struct.tw5864_dev*, %struct.tw5864_dev** %10, align 8
  store %struct.tw5864_dev* %11, %struct.tw5864_dev** %6, align 8
  %12 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %13 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %12, i32 0, i32 12
  store %struct.v4l2_ctrl_handler* %13, %struct.v4l2_ctrl_handler** %8, align 8
  %14 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %15 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %14, i32 0, i32 3
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %18 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %17, i32 0, i32 11
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %21 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %20, i32 0, i32 10
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %24 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %25 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 10
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %28 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %29 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 9
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @VB2_MMAP, align 4
  %32 = load i32, i32* @VB2_READ, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VB2_DMABUF, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %37 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %40 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 8
  store i32* @tw5864_video_qops, i32** %41, align 8
  %42 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %43 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 7
  store i32* @vb2_dma_contig_memops, i32** %44, align 8
  %45 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %46 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %47 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 6
  store %struct.tw5864_input* %45, %struct.tw5864_input** %48, align 8
  %49 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %50 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %53 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i32 4, i32* %54, align 4
  %55 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %56 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %55, i32 0, i32 3
  %57 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %58 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  store i32* %56, i32** %59, align 8
  %60 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %61 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i32 2, i32* %62, align 8
  %63 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %64 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %63, i32 0, i32 8
  %65 = load %struct.tw5864_dev*, %struct.tw5864_dev** %64, align 8
  %66 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %70 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  store i32* %68, i32** %71, align 8
  %72 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %73 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %72, i32 0, i32 4
  %74 = call i32 @vb2_queue_init(%struct.TYPE_12__* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %2
  br label %202

78:                                               ; preds = %2
  %79 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %80 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %79, i32 0, i32 7
  %81 = bitcast %struct.TYPE_11__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 bitcast (%struct.TYPE_11__* @tw5864_video_template to i8*), i64 32, i1 false)
  %82 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %83 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %82, i32 0, i32 8
  %84 = load %struct.tw5864_dev*, %struct.tw5864_dev** %83, align 8
  %85 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %84, i32 0, i32 1
  %86 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %87 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  store i32* %85, i32** %88, align 8
  %89 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %90 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %89, i32 0, i32 3
  %91 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %92 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i32* %90, i32** %93, align 8
  %94 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %95 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %94, i32 0, i32 4
  %96 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %97 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %98, align 8
  %99 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %100 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %99, i32 0, i32 7
  %101 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %102 = call i32 @video_set_drvdata(%struct.TYPE_11__* %100, %struct.tw5864_input* %101)
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %104 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %103, i32 6)
  %105 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %106 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %107 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %105, i32* @tw5864_ctrl_ops, i32 %106, i32 -128, i32 127, i32 1, i32 0)
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %109 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %110 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %108, i32* @tw5864_ctrl_ops, i32 %109, i32 0, i32 255, i32 1, i32 100)
  %111 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %112 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %113 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %111, i32* @tw5864_ctrl_ops, i32 %112, i32 0, i32 255, i32 1, i32 128)
  %114 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %115 = load i32, i32* @V4L2_CID_HUE, align 4
  %116 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %114, i32* @tw5864_ctrl_ops, i32 %115, i32 -128, i32 127, i32 1, i32 0)
  %117 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %118 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %119 = load i32, i32* @MAX_GOP_SIZE, align 4
  %120 = load i32, i32* @GOP_SIZE, align 4
  %121 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %117, i32* @tw5864_ctrl_ops, i32 %118, i32 1, i32 %119, i32 1, i32 %120)
  %122 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %123 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_MIN_QP, align 4
  %124 = load i32, i32* @QP_VALUE, align 4
  %125 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %122, i32* @tw5864_ctrl_ops, i32 %123, i32 28, i32 51, i32 1, i32 %124)
  %126 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %127 = load i32, i32* @V4L2_CID_DETECT_MD_MODE, align 4
  %128 = load i32, i32* @V4L2_DETECT_MD_MODE_THRESHOLD_GRID, align 4
  %129 = load i32, i32* @V4L2_DETECT_MD_MODE_DISABLED, align 4
  %130 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %126, i32* @tw5864_ctrl_ops, i32 %127, i32 %128, i32 0, i32 %129)
  %131 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %132 = load i32, i32* @V4L2_CID_DETECT_MD_GLOBAL_THRESHOLD, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tw5864_md_thresholds, i32 0, i32 0), align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tw5864_md_thresholds, i32 0, i32 1), align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tw5864_md_thresholds, i32 0, i32 2), align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tw5864_md_thresholds, i32 0, i32 3), align 4
  %137 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %131, i32* @tw5864_ctrl_ops, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %139 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %138, %struct.TYPE_13__* @tw5864_md_thresholds, i32* null)
  %140 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %141 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %140, i32 0, i32 9
  store i32 %139, i32* %141, align 8
  %142 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %143 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %78
  %147 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %148 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %7, align 4
  br label %196

150:                                              ; preds = %78
  %151 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %152 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %153 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %151, %struct.v4l2_ctrl_handler** %154, align 8
  %155 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %156 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %155)
  %157 = load i32, i32* @QP_VALUE, align 4
  %158 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %159 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @GOP_SIZE, align 4
  %161 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %162 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %164 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %163, i32 0, i32 2
  store i32 1, i32* %164, align 8
  %165 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %166 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %165, i32 0, i32 7
  %167 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @video_register_device(%struct.TYPE_11__* %166, i32 %167, i32 %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %150
  br label %196

173:                                              ; preds = %150
  %174 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %175 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %174, i32 0, i32 8
  %176 = load %struct.tw5864_dev*, %struct.tw5864_dev** %175, align 8
  %177 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %176, i32 0, i32 0
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %181 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %180, i32 0, i32 7
  %182 = call i32 @video_device_node_name(%struct.TYPE_11__* %181)
  %183 = call i32 @dev_info(i32* %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %185 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %186 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @STD_NTSC, align 4
  %188 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %189 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @TW5864_INDIR_VIN_E(i32 %190)
  %192 = call i32 @tw_indir_writeb(i32 %191, i32 7)
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @TW5864_INDIR_VIN_F(i32 %193)
  %195 = call i32 @tw_indir_writeb(i32 %194, i32 255)
  store i32 0, i32* %3, align 4
  br label %207

196:                                              ; preds = %172, %146
  %197 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %198 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %197)
  %199 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %200 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %199, i32 0, i32 4
  %201 = call i32 @vb2_queue_release(%struct.TYPE_12__* %200)
  br label %202

202:                                              ; preds = %196, %77
  %203 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %204 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %203, i32 0, i32 3
  %205 = call i32 @mutex_destroy(i32* %204)
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %202, %173
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_11__*, %struct.tw5864_input*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_11__*) #1

declare dso_local i32 @tw_indir_writeb(i32, i32) #1

declare dso_local i32 @TW5864_INDIR_VIN_E(i32) #1

declare dso_local i32 @TW5864_INDIR_VIN_F(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @vb2_queue_release(%struct.TYPE_12__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
