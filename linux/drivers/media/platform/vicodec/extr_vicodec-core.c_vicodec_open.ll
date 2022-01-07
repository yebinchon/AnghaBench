; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_pixfmt_info = type { i32, i32 }
%struct.file = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.video_device = type { i32 }
%struct.vicodec_dev = type { %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_13__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.video_device }
%struct.TYPE_13__ = type { i32, i32, %struct.video_device }
%struct.vicodec_ctx = type { i32, i32, %struct.TYPE_14__, i32*, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.v4l2_ctrl_handler, %struct.vicodec_dev* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.v4l2_fwht_pixfmt_info* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vicodec_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_GOP_SIZE = common dso_local global i32 0, align 4
@V4L2_CID_FWHT_I_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_FWHT_P_FRAME_QP = common dso_local global i32 0, align 4
@V4L2_CID_MIN_BUFFERS_FOR_OUTPUT = common dso_local global i32 0, align 4
@vicodec_ctrl_stateless_state = common dso_local global i32 0, align 4
@V4L2_M2M_SRC = common dso_local global i64 0, align 8
@pixfmt_stateless_fwht = common dso_local global %struct.v4l2_fwht_pixfmt_info zeroinitializer, align 4
@pixfmt_fwht = common dso_local global %struct.v4l2_fwht_pixfmt_info zeroinitializer, align 4
@V4L2_M2M_DST = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i32 0, align 4
@queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vicodec_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicodec_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.vicodec_dev*, align 8
  %7 = alloca %struct.vicodec_ctx*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %12 = call %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_get_pixfmt(i32 0)
  store %struct.v4l2_fwht_pixfmt_info* %12, %struct.v4l2_fwht_pixfmt_info** %4, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file* %13)
  store %struct.video_device* %14, %struct.video_device** %5, align 8
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call %struct.vicodec_dev* @video_drvdata(%struct.file* %15)
  store %struct.vicodec_dev* %16, %struct.vicodec_dev** %6, align 8
  store %struct.vicodec_ctx* null, %struct.vicodec_ctx** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.video_device*, %struct.video_device** %5, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mutex_lock_interruptible(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ERESTARTSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %359

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.vicodec_ctx* @kzalloc(i32 64, i32 %26)
  store %struct.vicodec_ctx* %27, %struct.vicodec_ctx** %7, align 8
  %28 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %29 = icmp ne %struct.vicodec_ctx* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %353

33:                                               ; preds = %25
  %34 = load %struct.video_device*, %struct.video_device** %5, align 8
  %35 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %36 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = icmp eq %struct.video_device* %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.video_device*, %struct.video_device** %5, align 8
  %44 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %45 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = icmp eq %struct.video_device* %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %50 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %53, i32 0, i32 2
  %55 = load %struct.file*, %struct.file** %3, align 8
  %56 = call %struct.video_device* @video_devdata(%struct.file* %55)
  %57 = call i32 @v4l2_fh_init(%struct.TYPE_14__* %54, %struct.video_device* %56)
  %58 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %58, i32 0, i32 2
  %60 = load %struct.file*, %struct.file** %3, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %63 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %63, i32 0, i32 7
  store %struct.vicodec_dev* %62, %struct.vicodec_dev** %64, align 8
  %65 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %66 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %65, i32 0, i32 6
  store %struct.v4l2_ctrl_handler* %66, %struct.v4l2_ctrl_handler** %8, align 8
  %67 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %68 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %67, i32 5)
  %69 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %70 = load i32, i32* @V4L2_CID_MPEG_VIDEO_GOP_SIZE, align 4
  %71 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %69, i32* @vicodec_ctrl_ops, i32 %70, i32 1, i32 16, i32 1, i32 10)
  %72 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %73 = load i32, i32* @V4L2_CID_FWHT_I_FRAME_QP, align 4
  %74 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %72, i32* @vicodec_ctrl_ops, i32 %73, i32 1, i32 31, i32 1, i32 20)
  %75 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %76 = load i32, i32* @V4L2_CID_FWHT_P_FRAME_QP, align 4
  %77 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %75, i32* @vicodec_ctrl_ops, i32 %76, i32 1, i32 31, i32 1, i32 20)
  %78 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %52
  %83 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %84 = load i32, i32* @V4L2_CID_MIN_BUFFERS_FOR_OUTPUT, align 4
  %85 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %83, i32* @vicodec_ctrl_ops, i32 %84, i32 1, i32 1, i32 1, i32 1)
  br label %86

86:                                               ; preds = %82, %52
  %87 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %88 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %93 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %92, i32* @vicodec_ctrl_stateless_state, i32* null)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %96 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  %103 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %104 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %103)
  %105 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %106 = call i32 @kfree(%struct.vicodec_ctx* %105)
  br label %353

107:                                              ; preds = %94
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %109 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %110 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %108, %struct.v4l2_ctrl_handler** %111, align 8
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %113 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %112)
  %114 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %115 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %4, align 8
  %120 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %121 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %120, i32 0, i32 5
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load i64, i64* @V4L2_M2M_SRC, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  store %struct.v4l2_fwht_pixfmt_info* %119, %struct.v4l2_fwht_pixfmt_info** %125, align 8
  br label %146

126:                                              ; preds = %107
  %127 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %128 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %133 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %132, i32 0, i32 5
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load i64, i64* @V4L2_M2M_SRC, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 5
  store %struct.v4l2_fwht_pixfmt_info* @pixfmt_stateless_fwht, %struct.v4l2_fwht_pixfmt_info** %137, align 8
  br label %145

138:                                              ; preds = %126
  %139 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %140 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %139, i32 0, i32 5
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i64, i64* @V4L2_M2M_SRC, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 5
  store %struct.v4l2_fwht_pixfmt_info* @pixfmt_fwht, %struct.v4l2_fwht_pixfmt_info** %144, align 8
  br label %145

145:                                              ; preds = %138, %131
  br label %146

146:                                              ; preds = %145, %118
  %147 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %148 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %147, i32 0, i32 5
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load i64, i64* @V4L2_M2M_SRC, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  store i32 1280, i32* %152, align 8
  %153 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %154 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %153, i32 0, i32 5
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = load i64, i64* @V4L2_M2M_SRC, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i32 720, i32* %158, align 4
  %159 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %159, i32 0, i32 5
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i64, i64* @V4L2_M2M_SRC, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  store i32 1280, i32* %164, align 8
  %165 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %166 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %165, i32 0, i32 5
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = load i64, i64* @V4L2_M2M_SRC, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  store i32 720, i32* %170, align 4
  %171 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %4, align 8
  %172 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 921600, %173
  %175 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %4, align 8
  %176 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %174, %177
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* @pixfmt_fwht, i32 0, i32 0), align 4
  %180 = mul nsw i32 921600, %179
  %181 = load i32, i32* getelementptr inbounds (%struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* @pixfmt_fwht, i32 0, i32 1), align 4
  %182 = sdiv i32 %180, %181
  store i32 %182, i32* %10, align 4
  %183 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %184 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %146
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %190 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %189, i32 0, i32 5
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = load i64, i64* @V4L2_M2M_SRC, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  store i32 %188, i32* %194, align 8
  br label %220

195:                                              ; preds = %146
  %196 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %197 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %203 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %202, i32 0, i32 5
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load i64, i64* @V4L2_M2M_SRC, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  store i32 %201, i32* %207, align 8
  br label %219

208:                                              ; preds = %195
  %209 = load i32, i32* %10, align 4
  %210 = zext i32 %209 to i64
  %211 = add i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %214 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %213, i32 0, i32 5
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = load i64, i64* @V4L2_M2M_SRC, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  store i32 %212, i32* %218, align 8
  br label %219

219:                                              ; preds = %208, %200
  br label %220

220:                                              ; preds = %219, %187
  %221 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %222 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %221, i32 0, i32 5
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = load i64, i64* @V4L2_M2M_DST, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i64 %224
  %226 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %227 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %226, i32 0, i32 5
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = load i64, i64* @V4L2_M2M_SRC, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %229
  %231 = bitcast %struct.TYPE_11__* %225 to i8*
  %232 = bitcast %struct.TYPE_11__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 %232, i64 32, i1 false)
  %233 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %234 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %254

237:                                              ; preds = %220
  %238 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %239 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %238, i32 0, i32 5
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = load i64, i64* @V4L2_M2M_DST, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 5
  store %struct.v4l2_fwht_pixfmt_info* @pixfmt_fwht, %struct.v4l2_fwht_pixfmt_info** %243, align 8
  %244 = load i32, i32* %10, align 4
  %245 = zext i32 %244 to i64
  %246 = add i64 %245, 4
  %247 = trunc i64 %246 to i32
  %248 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %249 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %248, i32 0, i32 5
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = load i64, i64* @V4L2_M2M_DST, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 4
  store i32 %247, i32* %253, align 8
  br label %269

254:                                              ; preds = %220
  %255 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %4, align 8
  %256 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %257 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %256, i32 0, i32 5
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = load i64, i64* @V4L2_M2M_DST, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 5
  store %struct.v4l2_fwht_pixfmt_info* %255, %struct.v4l2_fwht_pixfmt_info** %261, align 8
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %264 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %263, i32 0, i32 5
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %264, align 8
  %266 = load i64, i64* @V4L2_M2M_DST, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 4
  store i32 %262, i32* %268, align 8
  br label %269

269:                                              ; preds = %254, %237
  %270 = load i32, i32* @V4L2_COLORSPACE_REC709, align 4
  %271 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %272 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  store i32 %270, i32* %273, align 8
  %274 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %275 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %293

278:                                              ; preds = %269
  %279 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %280 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %284 = call i8* @v4l2_m2m_ctx_init(i32 %282, %struct.vicodec_ctx* %283, i32* @queue_init)
  %285 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %286 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  store i8* %284, i8** %287, align 8
  %288 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %289 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  %291 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %292 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %291, i32 0, i32 3
  store i32* %290, i32** %292, align 8
  br label %329

293:                                              ; preds = %269
  %294 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %295 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %293
  %299 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %300 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %304 = call i8* @v4l2_m2m_ctx_init(i32 %302, %struct.vicodec_ctx* %303, i32* @queue_init)
  %305 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %306 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  store i8* %304, i8** %307, align 8
  %308 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %309 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %312 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %311, i32 0, i32 3
  store i32* %310, i32** %312, align 8
  br label %328

313:                                              ; preds = %293
  %314 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %315 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %319 = call i8* @v4l2_m2m_ctx_init(i32 %317, %struct.vicodec_ctx* %318, i32* @queue_init)
  %320 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %321 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  store i8* %319, i8** %322, align 8
  %323 = load %struct.vicodec_dev*, %struct.vicodec_dev** %6, align 8
  %324 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  %326 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %327 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %326, i32 0, i32 3
  store i32* %325, i32** %327, align 8
  br label %328

328:                                              ; preds = %313, %298
  br label %329

329:                                              ; preds = %328, %278
  %330 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %331 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = call i64 @IS_ERR(i8* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %329
  %337 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %338 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @PTR_ERR(i8* %340)
  store i32 %341, i32* %11, align 4
  %342 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %343 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %342)
  %344 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %345 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %344, i32 0, i32 2
  %346 = call i32 @v4l2_fh_exit(%struct.TYPE_14__* %345)
  %347 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %348 = call i32 @kfree(%struct.vicodec_ctx* %347)
  br label %353

349:                                              ; preds = %329
  %350 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %7, align 8
  %351 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %350, i32 0, i32 2
  %352 = call i32 @v4l2_fh_add(%struct.TYPE_14__* %351)
  br label %353

353:                                              ; preds = %349, %336, %99, %30
  %354 = load %struct.video_device*, %struct.video_device** %5, align 8
  %355 = getelementptr inbounds %struct.video_device, %struct.video_device* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @mutex_unlock(i32 %356)
  %358 = load i32, i32* %11, align 4
  store i32 %358, i32* %2, align 4
  br label %359

359:                                              ; preds = %353, %22
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_get_pixfmt(i32) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.vicodec_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32) #1

declare dso_local %struct.vicodec_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.TYPE_14__*, %struct.video_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @kfree(%struct.vicodec_ctx*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @v4l2_m2m_ctx_init(i32, %struct.vicodec_ctx*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_14__*) #1

declare dso_local i32 @v4l2_fh_add(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
