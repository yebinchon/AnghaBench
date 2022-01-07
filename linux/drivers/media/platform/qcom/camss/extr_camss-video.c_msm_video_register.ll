; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_msm_video_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_msm_video_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camss_video = type { i32, %struct.vb2_queue, i32, %struct.TYPE_2__*, i8*, i8*, %struct.video_device, %struct.media_pad }
%struct.vb2_queue = type { i32, i32, i32*, i32, i32, i32, i32*, i32*, %struct.camss_video* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.video_device = type { i32, i32, i32, i32*, %struct.vb2_queue*, i32, %struct.v4l2_device*, i32, i32*, i32* }
%struct.media_pad = type { i32 }
%struct.v4l2_device = type { i32 }

@vb2_dma_sg_memops = common dso_local global i32 0, align 4
@msm_video_vb2_q_ops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to init vb2 queue: %d\0A\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to init video entity: %d\0A\00", align 1
@CAMSS_8x16 = common dso_local global i64 0, align 8
@formats_pix_8x16 = common dso_local global i8* null, align 8
@formats_rdi_8x16 = common dso_local global i8* null, align 8
@CAMSS_8x96 = common dso_local global i64 0, align 8
@formats_pix_8x96 = common dso_local global i8* null, align 8
@formats_rdi_8x96 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to init format: %d\0A\00", align 1
@msm_vid_fops = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@msm_vid_ioctl_ops = common dso_local global i32 0, align 4
@msm_video_release = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to register video device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_video_register(%struct.camss_video* %0, %struct.v4l2_device* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.camss_video*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.media_pad*, align 8
  %11 = alloca %struct.video_device*, align 8
  %12 = alloca %struct.vb2_queue*, align 8
  %13 = alloca i32, align 4
  store %struct.camss_video* %0, %struct.camss_video** %6, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %15 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %14, i32 0, i32 7
  store %struct.media_pad* %15, %struct.media_pad** %10, align 8
  %16 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %17 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %16, i32 0, i32 6
  store %struct.video_device* %17, %struct.video_device** %11, align 8
  %18 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %19 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %18, i32 0, i32 0
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %22 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %21, i32 0, i32 1
  store %struct.vb2_queue* %22, %struct.vb2_queue** %12, align 8
  %23 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 8
  store %struct.camss_video* %23, %struct.camss_video** %25, align 8
  %26 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %27 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %26, i32 0, i32 7
  store i32* @vb2_dma_sg_memops, i32** %27, align 8
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 6
  store i32* @msm_video_vb2_q_ops, i32** %29, align 8
  %30 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @VB2_DMABUF, align 4
  %34 = load i32, i32* @VB2_MMAP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @VB2_READ, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %39 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %42 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %44 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %43, i32 0, i32 1
  store i32 4, i32* %44, align 4
  %45 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %46 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %51 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %53 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %52, i32 0, i32 0
  %54 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %55 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %57 = call i32 @vb2_queue_init(%struct.vb2_queue* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %4
  %61 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %219

66:                                               ; preds = %4
  %67 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %68 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %69 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.video_device*, %struct.video_device** %11, align 8
  %71 = getelementptr inbounds %struct.video_device, %struct.video_device* %70, i32 0, i32 1
  %72 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %73 = call i32 @media_entity_pads_init(i32* %71, i32 1, %struct.media_pad* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %215

82:                                               ; preds = %66
  %83 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %84 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %83, i32 0, i32 2
  %85 = call i32 @mutex_init(i32* %84)
  %86 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %87 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CAMSS_8x16, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i8*, i8** @formats_pix_8x16, align 8
  %98 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %99 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** @formats_pix_8x16, align 8
  %101 = call i8* @ARRAY_SIZE(i8* %100)
  %102 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %103 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  br label %112

104:                                              ; preds = %93
  %105 = load i8*, i8** @formats_rdi_8x16, align 8
  %106 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %107 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @formats_rdi_8x16, align 8
  %109 = call i8* @ARRAY_SIZE(i8* %108)
  %110 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %111 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %104, %96
  br label %143

113:                                              ; preds = %82
  %114 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %115 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @CAMSS_8x96, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load i8*, i8** @formats_pix_8x96, align 8
  %126 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %127 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @formats_pix_8x96, align 8
  %129 = call i8* @ARRAY_SIZE(i8* %128)
  %130 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %131 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  br label %140

132:                                              ; preds = %121
  %133 = load i8*, i8** @formats_rdi_8x96, align 8
  %134 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %135 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @formats_rdi_8x96, align 8
  %137 = call i8* @ARRAY_SIZE(i8* %136)
  %138 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %139 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %132, %124
  br label %142

141:                                              ; preds = %113
  br label %208

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %112
  %144 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %145 = call i32 @msm_video_init_format(%struct.camss_video* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %150 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @dev_err(i32 %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %208

154:                                              ; preds = %143
  %155 = load %struct.video_device*, %struct.video_device** %11, align 8
  %156 = getelementptr inbounds %struct.video_device, %struct.video_device* %155, i32 0, i32 9
  store i32* @msm_vid_fops, i32** %156, align 8
  %157 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  %158 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.video_device*, %struct.video_device** %11, align 8
  %163 = getelementptr inbounds %struct.video_device, %struct.video_device* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.video_device*, %struct.video_device** %11, align 8
  %165 = getelementptr inbounds %struct.video_device, %struct.video_device* %164, i32 0, i32 8
  store i32* @msm_vid_ioctl_ops, i32** %165, align 8
  %166 = load i32, i32* @msm_video_release, align 4
  %167 = load %struct.video_device*, %struct.video_device** %11, align 8
  %168 = getelementptr inbounds %struct.video_device, %struct.video_device* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 8
  %169 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %170 = load %struct.video_device*, %struct.video_device** %11, align 8
  %171 = getelementptr inbounds %struct.video_device, %struct.video_device* %170, i32 0, i32 6
  store %struct.v4l2_device* %169, %struct.v4l2_device** %171, align 8
  %172 = load i32, i32* @VFL_DIR_RX, align 4
  %173 = load %struct.video_device*, %struct.video_device** %11, align 8
  %174 = getelementptr inbounds %struct.video_device, %struct.video_device* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  %175 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %176 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %175, i32 0, i32 1
  %177 = load %struct.video_device*, %struct.video_device** %11, align 8
  %178 = getelementptr inbounds %struct.video_device, %struct.video_device* %177, i32 0, i32 4
  store %struct.vb2_queue* %176, %struct.vb2_queue** %178, align 8
  %179 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %180 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %179, i32 0, i32 2
  %181 = load %struct.video_device*, %struct.video_device** %11, align 8
  %182 = getelementptr inbounds %struct.video_device, %struct.video_device* %181, i32 0, i32 3
  store i32* %180, i32** %182, align 8
  %183 = load %struct.video_device*, %struct.video_device** %11, align 8
  %184 = getelementptr inbounds %struct.video_device, %struct.video_device* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 @strscpy(i32 %185, i8* %186, i32 4)
  %188 = load %struct.video_device*, %struct.video_device** %11, align 8
  %189 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %190 = call i32 @video_register_device(%struct.video_device* %188, i32 %189, i32 -1)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %154
  %194 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %195 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @dev_err(i32 %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  br label %208

199:                                              ; preds = %154
  %200 = load %struct.video_device*, %struct.video_device** %11, align 8
  %201 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %202 = call i32 @video_set_drvdata(%struct.video_device* %200, %struct.camss_video* %201)
  %203 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %204 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %203, i32 0, i32 3
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = call i32 @atomic_inc(i32* %206)
  store i32 0, i32* %5, align 4
  br label %224

208:                                              ; preds = %193, %148, %141
  %209 = load %struct.video_device*, %struct.video_device** %11, align 8
  %210 = getelementptr inbounds %struct.video_device, %struct.video_device* %209, i32 0, i32 1
  %211 = call i32 @media_entity_cleanup(i32* %210)
  %212 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %213 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %212, i32 0, i32 2
  %214 = call i32 @mutex_destroy(i32* %213)
  br label %215

215:                                              ; preds = %208, %76
  %216 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %217 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %216, i32 0, i32 1
  %218 = call i32 @vb2_queue_release(%struct.vb2_queue* %217)
  br label %219

219:                                              ; preds = %215, %60
  %220 = load %struct.camss_video*, %struct.camss_video** %6, align 8
  %221 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %220, i32 0, i32 0
  %222 = call i32 @mutex_destroy(i32* %221)
  %223 = load i32, i32* %13, align 4
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %219, %199
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.media_pad*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @msm_video_init_format(%struct.camss_video*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.camss_video*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @vb2_queue_release(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
