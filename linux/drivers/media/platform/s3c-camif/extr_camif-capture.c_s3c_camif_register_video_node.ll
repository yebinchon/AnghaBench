; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_register_video_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_register_video_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_8__, i32, %struct.camif_vp* }
%struct.TYPE_8__ = type { i32 }
%struct.camif_vp = type { i64, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_7__*, i32, i32, i64, %struct.video_device, %struct.video_device }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.video_device = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32, %struct.camif_vp*, i32*, i32*, i32, i32, %struct.TYPE_8__*, i32*, i32* }
%struct.vb2_queue = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32, %struct.camif_vp*, i32*, i32*, i32, i32, %struct.TYPE_8__*, i32*, i32* }
%struct.v4l2_ctrl = type { %struct.camif_vp* }

@.str = private unnamed_addr constant [9 x i8] c"camif-%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"preview\00", align 1
@s3c_camif_fops = common dso_local global i32 0, align 4
@s3c_camif_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@s3c_camif_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@s3c_camif_video_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"registered %s as /dev/%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_camif_register_video_node(%struct.camif_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camif_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.camif_vp*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.v4l2_ctrl*, align 8
  %10 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %12 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %11, i32 0, i32 2
  %13 = load %struct.camif_vp*, %struct.camif_vp** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %13, i64 %15
  store %struct.camif_vp* %16, %struct.camif_vp** %6, align 8
  %17 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %18 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %17, i32 0, i32 8
  %19 = bitcast %struct.video_device* %18 to %struct.vb2_queue*
  store %struct.vb2_queue* %19, %struct.vb2_queue** %7, align 8
  %20 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %21 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %20, i32 0, i32 7
  store %struct.video_device* %21, %struct.video_device** %8, align 8
  %22 = load %struct.video_device*, %struct.video_device** %8, align 8
  %23 = call i32 @memset(%struct.video_device* %22, i32 0, i32 112)
  %24 = load %struct.video_device*, %struct.video_device** %8, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %28 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %33 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.video_device*, %struct.video_device** %8, align 8
  %35 = getelementptr inbounds %struct.video_device, %struct.video_device* %34, i32 0, i32 17
  store i32* @s3c_camif_fops, i32** %35, align 8
  %36 = load %struct.video_device*, %struct.video_device** %8, align 8
  %37 = getelementptr inbounds %struct.video_device, %struct.video_device* %36, i32 0, i32 16
  store i32* @s3c_camif_ioctl_ops, i32** %37, align 8
  %38 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %39 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %38, i32 0, i32 0
  %40 = load %struct.video_device*, %struct.video_device** %8, align 8
  %41 = getelementptr inbounds %struct.video_device, %struct.video_device* %40, i32 0, i32 15
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.video_device*, %struct.video_device** %8, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load i32, i32* @video_device_release_empty, align 4
  %45 = load %struct.video_device*, %struct.video_device** %8, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 14
  store i32 %44, i32* %46, align 4
  %47 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %48 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %47, i32 0, i32 1
  %49 = load %struct.video_device*, %struct.video_device** %8, align 8
  %50 = getelementptr inbounds %struct.video_device, %struct.video_device* %49, i32 0, i32 8
  store i32* %48, i32** %50, align 8
  %51 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %52 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %54 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %53, i32 0, i32 5
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %57 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %56, i32 0, i32 4
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %60 = bitcast %struct.vb2_queue* %59 to %struct.video_device*
  %61 = call i32 @memset(%struct.video_device* %60, i32 0, i32 112)
  %62 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %63 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %64 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @VB2_MMAP, align 4
  %66 = load i32, i32* @VB2_USERPTR, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %69 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %71 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %70, i32 0, i32 12
  store i32* @s3c_camif_qops, i32** %71, align 8
  %72 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %73 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %72, i32 0, i32 11
  store i32* @vb2_dma_contig_memops, i32** %73, align 8
  %74 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %75 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %74, i32 0, i32 2
  store i32 4, i32* %75, align 8
  %76 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %77 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %78 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %77, i32 0, i32 10
  store %struct.camif_vp* %76, %struct.camif_vp** %78, align 8
  %79 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %80 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %81 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  %82 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %83 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %87 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %86, i32 0, i32 8
  store i32* %85, i32** %87, align 8
  %88 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %89 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %93 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 8
  %94 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %95 = bitcast %struct.vb2_queue* %94 to %struct.video_device*
  %96 = call i32 @vb2_queue_init(%struct.video_device* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %2
  br label %182

100:                                              ; preds = %2
  %101 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %102 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %103 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.video_device*, %struct.video_device** %8, align 8
  %106 = getelementptr inbounds %struct.video_device, %struct.video_device* %105, i32 0, i32 4
  %107 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %108 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %107, i32 0, i32 2
  %109 = call i32 @media_entity_pads_init(i32* %106, i32 1, %struct.TYPE_10__* %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %182

113:                                              ; preds = %100
  %114 = load %struct.video_device*, %struct.video_device** %8, align 8
  %115 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %116 = call i32 @video_set_drvdata(%struct.video_device* %114, %struct.camif_vp* %115)
  %117 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %118 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %117, i32 0, i32 1
  %119 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %118, i32 1)
  %120 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %121 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %120, i32 0, i32 1
  %122 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %123 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_9__* %121, i32* @s3c_camif_video_ctrl_ops, i32 %122, i32 0, i32 1, i32 1, i32 0)
  store %struct.v4l2_ctrl* %123, %struct.v4l2_ctrl** %9, align 8
  %124 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %125 = icmp ne %struct.v4l2_ctrl* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %128 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %129 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %128, i32 0, i32 0
  store %struct.camif_vp* %127, %struct.camif_vp** %129, align 8
  br label %130

130:                                              ; preds = %126, %113
  %131 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %132 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %131, i32 0, i32 1
  %133 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %134 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_9__* %132, i32* @s3c_camif_video_ctrl_ops, i32 %133, i32 0, i32 1, i32 1, i32 0)
  store %struct.v4l2_ctrl* %134, %struct.v4l2_ctrl** %9, align 8
  %135 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %136 = icmp ne %struct.v4l2_ctrl* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %139 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %140 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %139, i32 0, i32 0
  store %struct.camif_vp* %138, %struct.camif_vp** %140, align 8
  br label %141

141:                                              ; preds = %137, %130
  %142 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %143 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %178

149:                                              ; preds = %141
  %150 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %151 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %150, i32 0, i32 1
  %152 = load %struct.video_device*, %struct.video_device** %8, align 8
  %153 = getelementptr inbounds %struct.video_device, %struct.video_device* %152, i32 0, i32 6
  store %struct.TYPE_9__* %151, %struct.TYPE_9__** %153, align 8
  %154 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %155 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.video_device*, %struct.video_device** %8, align 8
  %158 = getelementptr inbounds %struct.video_device, %struct.video_device* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.video_device*, %struct.video_device** %8, align 8
  %160 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %161 = call i32 @video_register_device(%struct.video_device* %159, i32 %160, i32 -1)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %149
  br label %174

165:                                              ; preds = %149
  %166 = load %struct.camif_dev*, %struct.camif_dev** %4, align 8
  %167 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %166, i32 0, i32 0
  %168 = load %struct.video_device*, %struct.video_device** %8, align 8
  %169 = getelementptr inbounds %struct.video_device, %struct.video_device* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.video_device*, %struct.video_device** %8, align 8
  %172 = call i32 @video_device_node_name(%struct.video_device* %171)
  %173 = call i32 @v4l2_info(%struct.TYPE_8__* %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %172)
  store i32 0, i32* %3, align 4
  br label %186

174:                                              ; preds = %164
  %175 = load %struct.camif_vp*, %struct.camif_vp** %6, align 8
  %176 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %175, i32 0, i32 1
  %177 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %176)
  br label %178

178:                                              ; preds = %174, %148
  %179 = load %struct.video_device*, %struct.video_device** %8, align 8
  %180 = getelementptr inbounds %struct.video_device, %struct.video_device* %179, i32 0, i32 4
  %181 = call i32 @media_entity_cleanup(i32* %180)
  br label %182

182:                                              ; preds = %178, %112, %99
  %183 = load %struct.video_device*, %struct.video_device** %8, align 8
  %184 = call i32 @video_device_release(%struct.video_device* %183)
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %165
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @memset(%struct.video_device*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.video_device*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.camif_vp*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
