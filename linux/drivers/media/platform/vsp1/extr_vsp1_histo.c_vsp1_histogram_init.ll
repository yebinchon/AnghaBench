; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_vsp1_histogram_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_vsp1_histogram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { i32, i32 }
%struct.vsp1_histogram = type { i32*, i32, i64, %struct.TYPE_9__, %struct.TYPE_10__, i32, %struct.TYPE_8__, %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, i32*, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32*, %struct.vsp1_histogram*, i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.vsp1_entity_operations* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_11__ = type { i32 }
%struct.vsp1_entity_operations = type { i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@histo_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_STATISTICS = common dso_local global i32 0, align 4
@histo_v4l2_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s histo\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@histo_v4l2_ioctl_ops = common dso_local global i32 0, align 4
@V4L2_CAP_META_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_META_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@histo_video_queue_qops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_COPY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to initialize vb2 queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register video device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_histogram_init(%struct.vsp1_device* %0, %struct.vsp1_histogram* %1, i32 %2, i8* %3, %struct.vsp1_entity_operations* %4, i32* %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vsp1_device*, align 8
  %12 = alloca %struct.vsp1_histogram*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.vsp1_entity_operations*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %11, align 8
  store %struct.vsp1_histogram* %1, %struct.vsp1_histogram** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store %struct.vsp1_entity_operations* %4, %struct.vsp1_entity_operations** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load i32*, i32** %16, align 8
  %22 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %23 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* %17, align 4
  %25 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %26 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %18, align 8
  %28 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %29 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %19, align 4
  %31 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %32 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %34 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %35 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @VFL_DIR_RX, align 4
  %38 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %39 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 9
  store i32 %37, i32* %40, align 4
  %41 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %42 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %41, i32 0, i32 5
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %45 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %44, i32 0, i32 10
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %48 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %47, i32 0, i32 9
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %51 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %50, i32 0, i32 8
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.vsp1_entity_operations*, %struct.vsp1_entity_operations** %15, align 8
  %54 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %55 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store %struct.vsp1_entity_operations* %53, %struct.vsp1_entity_operations** %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %59 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.vsp1_device*, %struct.vsp1_device** %11, align 8
  %62 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %63 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %62, i32 0, i32 6
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_STATISTICS, align 4
  %66 = call i32 @vsp1_entity_init(%struct.vsp1_device* %61, %struct.TYPE_8__* %63, i8* %64, i32 2, i32* @histo_ops, i32 %65)
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %9
  %70 = load i32, i32* %20, align 4
  store i32 %70, i32* %10, align 4
  br label %194

71:                                               ; preds = %9
  %72 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %73 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 8
  %75 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %76 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %75, i32 0, i32 7
  %77 = call i32 @media_entity_pads_init(i32* %74, i32 1, %struct.TYPE_11__* %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %20, align 4
  store i32 %81, i32* %10, align 4
  br label %194

82:                                               ; preds = %71
  %83 = load %struct.vsp1_device*, %struct.vsp1_device** %11, align 8
  %84 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %83, i32 0, i32 1
  %85 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %86 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 7
  store i32* %84, i32** %87, align 8
  %88 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %89 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 6
  store i32* @histo_v4l2_fops, i32** %90, align 8
  %91 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %92 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %96 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @snprintf(i32 %94, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %102 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %103 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @video_device_release_empty, align 4
  %106 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %107 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 8
  %109 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %110 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  store i32* @histo_v4l2_ioctl_ops, i32** %111, align 8
  %112 = load i32, i32* @V4L2_CAP_META_CAPTURE, align 4
  %113 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %116 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %119 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %118, i32 0, i32 3
  %120 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %121 = call i32 @video_set_drvdata(%struct.TYPE_9__* %119, %struct.vsp1_histogram* %120)
  %122 = load i32, i32* @V4L2_BUF_TYPE_META_CAPTURE, align 4
  %123 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %124 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 8
  store i32 %122, i32* %125, align 8
  %126 = load i32, i32* @VB2_MMAP, align 4
  %127 = load i32, i32* @VB2_USERPTR, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @VB2_DMABUF, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %132 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %135 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %134, i32 0, i32 5
  %136 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %137 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 7
  store i32* %135, i32** %138, align 8
  %139 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %140 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %141 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 6
  store %struct.vsp1_histogram* %139, %struct.vsp1_histogram** %142, align 8
  %143 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %144 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 4, i32* %145, align 4
  %146 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %147 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 5
  store i32* @histo_video_queue_qops, i32** %148, align 8
  %149 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %150 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  store i32* @vb2_vmalloc_memops, i32** %151, align 8
  %152 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_COPY, align 4
  %153 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %154 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load %struct.vsp1_device*, %struct.vsp1_device** %11, align 8
  %157 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %160 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %163 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %162, i32 0, i32 4
  %164 = call i32 @vb2_queue_init(%struct.TYPE_10__* %163)
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %20, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %82
  %168 = load %struct.vsp1_device*, %struct.vsp1_device** %11, align 8
  %169 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %190

172:                                              ; preds = %82
  %173 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %174 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %173, i32 0, i32 4
  %175 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %176 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %177, align 8
  %178 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %179 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %178, i32 0, i32 3
  %180 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %181 = call i32 @video_register_device(%struct.TYPE_9__* %179, i32 %180, i32 -1)
  store i32 %181, i32* %20, align 4
  %182 = load i32, i32* %20, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %172
  %185 = load %struct.vsp1_device*, %struct.vsp1_device** %11, align 8
  %186 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dev_err(i32 %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %190

189:                                              ; preds = %172
  store i32 0, i32* %10, align 4
  br label %194

190:                                              ; preds = %184, %167
  %191 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %12, align 8
  %192 = call i32 @vsp1_histogram_cleanup(%struct.vsp1_histogram* %191)
  %193 = load i32, i32* %20, align 4
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %190, %189, %80, %69
  %195 = load i32, i32* %10, align 4
  ret i32 %195
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_8__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_9__*, %struct.vsp1_histogram*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vsp1_histogram_cleanup(%struct.vsp1_histogram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
