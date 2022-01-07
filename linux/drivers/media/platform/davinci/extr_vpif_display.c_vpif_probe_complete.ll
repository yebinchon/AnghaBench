; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_probe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_probe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.channel_obj**, i32, %struct.TYPE_6__*, i32* }
%struct.channel_obj = type { i32, %struct.video_device, %struct.common_obj*, %struct.TYPE_5__, %struct.TYPE_8__, i32, i64 }
%struct.video_device = type { i32, i32*, %struct.vb2_queue*, i32, i32*, i32*, i32*, i32, i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, %struct.channel_obj*, i8* }
%struct.common_obj = type { i32, i32, %struct.vb2_queue, %struct.TYPE_8__, i32*, i32*, i64, i64, i64, i64, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i64 }

@VPIF_DISPLAY_MAX_DEVICES = common dso_local global i32 0, align 4
@vpif_obj = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@VPIF_NUMOBJECTS = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i8* null, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@vpif_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vpif_display: vb2_queue_init() failed\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"channel=%p,channel->video_dev=%p\0A\00", align 1
@VPIF_DRIVER_NAME = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@vpif_fops = common dso_local global i32 0, align 4
@vpif_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_TX = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vpif_probe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_probe_complete() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.common_obj*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.channel_obj*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %195, %0
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @VPIF_DISPLAY_MAX_DEVICES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %198

13:                                               ; preds = %9
  %14 = load %struct.channel_obj**, %struct.channel_obj*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vpif_obj, i32 0, i32 0), align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %14, i64 %16
  %18 = load %struct.channel_obj*, %struct.channel_obj** %17, align 8
  store %struct.channel_obj* %18, %struct.channel_obj** %4, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %53, %13
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @VPIF_NUMOBJECTS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %25 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %24, i32 0, i32 2
  %26 = load %struct.common_obj*, %struct.common_obj** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %26, i64 %28
  store %struct.common_obj* %29, %struct.common_obj** %2, align 8
  %30 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %31 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %30, i32 0, i32 11
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %34 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %33, i32 0, i32 0
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %37 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %36, i32 0, i32 10
  store i32* null, i32** %37, align 8
  %38 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %39 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %41 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %43 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %45 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %47 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %49 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  %50 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %51 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %50, i32 0, i32 3
  %52 = call i32 @memset(%struct.TYPE_8__* %51, i32 0, i32 8)
  br label %53

53:                                               ; preds = %23
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %19

56:                                               ; preds = %19
  %57 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %58 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vpif_obj, i32 0, i32 2), align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vpif_obj, i32 0, i32 3), align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %68 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %72 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %74 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %73, i32 0, i32 4
  %75 = call i32 @memset(%struct.TYPE_8__* %74, i32 0, i32 8)
  %76 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %77 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %78 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %77, i32 0, i32 2
  %79 = load %struct.common_obj*, %struct.common_obj** %78, align 8
  %80 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %81 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %79, i64 %80
  %82 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i8* %76, i8** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vpif_obj, i32 0, i32 2), align 8
  %85 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %86 = call i32 @vpif_set_output(%struct.TYPE_6__* %84, %struct.channel_obj* %85, i32 0)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %69
  br label %199

90:                                               ; preds = %69
  %91 = load i32, i32* @V4L2_STD_525_60, align 4
  %92 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %93 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %96 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = call i32 @memset(%struct.TYPE_8__* %97, i32 0, i32 8)
  %99 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %100 = call i32 @vpif_update_resolution(%struct.channel_obj* %99)
  %101 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %102 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %101, i32 0, i32 2
  store %struct.vb2_queue* %102, %struct.vb2_queue** %5, align 8
  %103 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %104 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %105 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @VB2_MMAP, align 4
  %107 = load i32, i32* @VB2_USERPTR, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @VB2_DMABUF, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %112 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %114 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %115 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %114, i32 0, i32 8
  store %struct.channel_obj* %113, %struct.channel_obj** %115, align 8
  %116 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %117 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %116, i32 0, i32 7
  store i32* @video_qops, i32** %117, align 8
  %118 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %119 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %118, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %119, align 8
  %120 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %121 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %120, i32 0, i32 1
  store i32 4, i32* %121, align 4
  %122 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %123 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %124 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %126 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  %127 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %128 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %127, i32 0, i32 0
  %129 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %130 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  %131 = load i32, i32* @vpif_dev, align 4
  %132 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %133 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %135 = call i32 @vb2_queue_init(%struct.vb2_queue* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %90
  %139 = call i32 @vpif_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %199

140:                                              ; preds = %90
  %141 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %142 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %141, i32 0, i32 1
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  %144 = load i32, i32* @debug, align 4
  %145 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %146 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %147 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %146, i32 0, i32 1
  %148 = call i32 @vpif_dbg(i32 1, i32 %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.channel_obj* %145, %struct.video_device* %147)
  %149 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %150 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %149, i32 0, i32 1
  store %struct.video_device* %150, %struct.video_device** %3, align 8
  %151 = load %struct.video_device*, %struct.video_device** %3, align 8
  %152 = getelementptr inbounds %struct.video_device, %struct.video_device* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @VPIF_DRIVER_NAME, align 4
  %155 = call i32 @strscpy(i32 %153, i32 %154, i32 4)
  %156 = load i32, i32* @video_device_release_empty, align 4
  %157 = load %struct.video_device*, %struct.video_device** %3, align 8
  %158 = getelementptr inbounds %struct.video_device, %struct.video_device* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  %159 = load %struct.video_device*, %struct.video_device** %3, align 8
  %160 = getelementptr inbounds %struct.video_device, %struct.video_device* %159, i32 0, i32 6
  store i32* @vpif_fops, i32** %160, align 8
  %161 = load %struct.video_device*, %struct.video_device** %3, align 8
  %162 = getelementptr inbounds %struct.video_device, %struct.video_device* %161, i32 0, i32 5
  store i32* @vpif_ioctl_ops, i32** %162, align 8
  %163 = load %struct.video_device*, %struct.video_device** %3, align 8
  %164 = getelementptr inbounds %struct.video_device, %struct.video_device* %163, i32 0, i32 4
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vpif_obj, i32 0, i32 1), i32** %164, align 8
  %165 = load i32, i32* @VFL_DIR_TX, align 4
  %166 = load %struct.video_device*, %struct.video_device** %3, align 8
  %167 = getelementptr inbounds %struct.video_device, %struct.video_device* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %169 = load %struct.video_device*, %struct.video_device** %3, align 8
  %170 = getelementptr inbounds %struct.video_device, %struct.video_device* %169, i32 0, i32 2
  store %struct.vb2_queue* %168, %struct.vb2_queue** %170, align 8
  %171 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %172 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %171, i32 0, i32 0
  %173 = load %struct.video_device*, %struct.video_device** %3, align 8
  %174 = getelementptr inbounds %struct.video_device, %struct.video_device* %173, i32 0, i32 1
  store i32* %172, i32** %174, align 8
  %175 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %176 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.video_device*, %struct.video_device** %3, align 8
  %179 = getelementptr inbounds %struct.video_device, %struct.video_device* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %181 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %180, i32 0, i32 1
  %182 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %183 = call i32 @video_set_drvdata(%struct.video_device* %181, %struct.channel_obj* %182)
  %184 = load %struct.video_device*, %struct.video_device** %3, align 8
  %185 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 3, i32 2
  %190 = call i32 @video_register_device(%struct.video_device* %184, i32 %185, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %140
  br label %199

194:                                              ; preds = %140
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %9

198:                                              ; preds = %9
  store i32 0, i32* %1, align 4
  br label %224

199:                                              ; preds = %193, %138, %89
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %219, %199
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %222

204:                                              ; preds = %200
  %205 = load %struct.channel_obj**, %struct.channel_obj*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @vpif_obj, i32 0, i32 0), align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %205, i64 %207
  %209 = load %struct.channel_obj*, %struct.channel_obj** %208, align 8
  store %struct.channel_obj* %209, %struct.channel_obj** %4, align 8
  %210 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %211 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %210, i32 0, i32 2
  %212 = load %struct.common_obj*, %struct.common_obj** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %212, i64 %214
  store %struct.common_obj* %215, %struct.common_obj** %2, align 8
  %216 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %217 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %216, i32 0, i32 1
  %218 = call i32 @video_unregister_device(%struct.video_device* %217)
  br label %219

219:                                              ; preds = %204
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %200

222:                                              ; preds = %200
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %1, align 4
  br label %224

224:                                              ; preds = %222, %198
  %225 = load i32, i32* %1, align 4
  ret i32 %225
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @vpif_set_output(%struct.TYPE_6__*, %struct.channel_obj*, i32) #1

declare dso_local i32 @vpif_update_resolution(%struct.channel_obj*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*, %struct.channel_obj*, %struct.video_device*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.channel_obj*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
