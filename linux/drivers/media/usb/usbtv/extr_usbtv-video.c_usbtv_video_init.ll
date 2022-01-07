; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_video_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-video.c_usbtv_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtv = type { %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.TYPE_10__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32*, i32*, %struct.usbtv*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_11__*, i32, i32*, i32*, i32, %struct.TYPE_12__*, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@usbtv_vb2_ops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not initialize videobuf2 queue\0A\00", align 1
@usbtv_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@usbtv_release = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not register v4l2 device\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"usbtv\00", align 1
@video_device_release_empty = common dso_local global i32 0, align 4
@usbtv_fops = common dso_local global i32 0, align 4
@usbtv_ioctl_ops = common dso_local global i32 0, align 4
@USBTV_TV_STD = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not register video device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbtv_video_init(%struct.usbtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca i32, align 4
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  %5 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %6 = load i32, i32* @V4L2_STD_525_60, align 4
  %7 = call i32 @usbtv_configure_for_norm(%struct.usbtv* %5, i32 %6)
  %8 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %9 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %8, i32 0, i32 8
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %12 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %11, i32 0, i32 5
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %15 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %14, i32 0, i32 6
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %18 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %17, i32 0, i32 7
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %21 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %22 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 7
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @VB2_MMAP, align 4
  %25 = load i32, i32* @VB2_USERPTR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @VB2_READ, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %30 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %33 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %34 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 6
  store %struct.usbtv* %32, %struct.usbtv** %35, align 8
  %36 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %37 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32 4, i32* %38, align 4
  %39 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %40 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  store i32* @usbtv_vb2_ops, i32** %41, align 8
  %42 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %43 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  store i32* @vb2_vmalloc_memops, i32** %44, align 8
  %45 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %46 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %47 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %50 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %49, i32 0, i32 6
  %51 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %52 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store i32* %50, i32** %53, align 8
  %54 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %55 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %54, i32 0, i32 0
  %56 = call i32 @vb2_queue_init(%struct.TYPE_11__* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %1
  %60 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %61 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %195

65:                                               ; preds = %1
  %66 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %67 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %66, i32 0, i32 1
  %68 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_13__* %67, i32 4)
  %69 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %70 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %69, i32 0, i32 1
  %71 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %72 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %70, i32* @usbtv_ctrl_ops, i32 %71, i32 0, i32 1023, i32 1, i32 464)
  %73 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %74 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %73, i32 0, i32 1
  %75 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %76 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %74, i32* @usbtv_ctrl_ops, i32 %75, i32 0, i32 1023, i32 1, i32 448)
  %77 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %78 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %77, i32 0, i32 1
  %79 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %80 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %78, i32* @usbtv_ctrl_ops, i32 %79, i32 0, i32 1023, i32 1, i32 512)
  %81 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %82 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %81, i32 0, i32 1
  %83 = load i32, i32* @V4L2_CID_HUE, align 4
  %84 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %82, i32* @usbtv_ctrl_ops, i32 %83, i32 -3583, i32 3583, i32 1, i32 0)
  %85 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %86 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %85, i32 0, i32 1
  %87 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %88 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %86, i32* @usbtv_ctrl_ops, i32 %87, i32 0, i32 255, i32 1, i32 96)
  %89 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %90 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %65
  %96 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %97 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_warn(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %187

100:                                              ; preds = %65
  %101 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %102 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %101, i32 0, i32 1
  %103 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %104 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %105, align 8
  %106 = load i32, i32* @usbtv_release, align 4
  %107 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %108 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %111 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %114 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %113, i32 0, i32 2
  %115 = call i32 @v4l2_device_register(i32 %112, %struct.TYPE_12__* %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %100
  %119 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %120 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @dev_warn(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %186

123:                                              ; preds = %100
  %124 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %125 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @strscpy(i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %129 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %130 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %129, i32 0, i32 2
  %131 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %132 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 7
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %133, align 8
  %134 = load i32, i32* @video_device_release_empty, align 4
  %135 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %136 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 6
  store i32 %134, i32* %137, align 8
  %138 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %139 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 5
  store i32* @usbtv_fops, i32** %140, align 8
  %141 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %142 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  store i32* @usbtv_ioctl_ops, i32** %143, align 8
  %144 = load i32, i32* @USBTV_TV_STD, align 4
  %145 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %146 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 8
  %148 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %149 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %148, i32 0, i32 0
  %150 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %151 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %152, align 8
  %153 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %154 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %153, i32 0, i32 5
  %155 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %156 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  store i32* %154, i32** %157, align 8
  %158 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %159 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %164 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %167 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %166, i32 0, i32 4
  %168 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %169 = call i32 @video_set_drvdata(%struct.TYPE_10__* %167, %struct.usbtv* %168)
  %170 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %171 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %170, i32 0, i32 4
  %172 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %173 = call i32 @video_register_device(%struct.TYPE_10__* %171, i32 %172, i32 -1)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %123
  %177 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %178 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dev_warn(i32 %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %182

181:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %195

182:                                              ; preds = %176
  %183 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %184 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %183, i32 0, i32 2
  %185 = call i32 @v4l2_device_unregister(%struct.TYPE_12__* %184)
  br label %186

186:                                              ; preds = %182, %118
  br label %187

187:                                              ; preds = %186, %95
  %188 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %189 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %188, i32 0, i32 1
  %190 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_13__* %189)
  %191 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %192 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %191, i32 0, i32 0
  %193 = call i32 @vb2_queue_release(%struct.TYPE_11__* %192)
  %194 = load i32, i32* %4, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %187, %181, %59
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @usbtv_configure_for_norm(%struct.usbtv*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_13__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_10__*, %struct.usbtv*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_13__*) #1

declare dso_local i32 @vb2_queue_release(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
