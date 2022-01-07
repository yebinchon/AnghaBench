; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32*, i32, %struct.solo_dev*, i32*, i32*, i32 }
%struct.solo_dev = type { i32, %struct.TYPE_12__*, %struct.TYPE_14__, i32, %struct.TYPE_11__*, %struct.TYPE_13__, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@solo_v4l2_template = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@solo_motion_trace_ctrl = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@solo_video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_KSWAPD_RECLAIM = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s (%i)\00", align 1
@SOLO6X10_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Display as /dev/video%d with %d inputs (%d extended)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_v4l2_init(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 10
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %12 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %11, i32 0, i32 9
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %15 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %14, i32 0, i32 6
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %18 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %17, i32 0, i32 8
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = call %struct.TYPE_12__* (...) @video_device_alloc()
  %21 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %22 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %21, i32 0, i32 1
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %22, align 8
  %23 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %24 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %212

30:                                               ; preds = %2
  %31 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %32 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = bitcast %struct.TYPE_12__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.TYPE_12__* @solo_v4l2_template to i8*), i64 40, i1 false)
  %35 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %36 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %35, i32 0, i32 7
  %37 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %38 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 5
  store i32* %36, i32** %40, align 8
  %41 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %42 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %41, i32 0, i32 5
  %43 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %44 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %46, align 8
  %47 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %48 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %47, i32 0, i32 6
  %49 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %50 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  store i32* %48, i32** %52, align 8
  %53 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %54 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %53, i32 0, i32 2
  %55 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_14__* %54, i32 1)
  %56 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %57 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %56, i32 0, i32 2
  %58 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_14__* %57, i32* @solo_motion_trace_ctrl, i32* null)
  %59 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %60 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %30
  %65 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %66 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %6, align 4
  br label %201

69:                                               ; preds = %30
  %70 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %71 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %70, i32 0, i32 2
  %72 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %73 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %75, align 8
  %76 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %77 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %80 = call i32 @video_set_drvdata(%struct.TYPE_12__* %78, %struct.solo_dev* %79)
  %81 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %82 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %83 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 9
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @VB2_MMAP, align 4
  %86 = load i32, i32* @VB2_USERPTR, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @VB2_READ, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %91 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %94 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 8
  store i32* @solo_video_qops, i32** %95, align 8
  %96 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %97 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 7
  store i32* @vb2_dma_contig_memops, i32** %98, align 8
  %99 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %100 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %101 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 6
  store %struct.solo_dev* %99, %struct.solo_dev** %102, align 8
  %103 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %104 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %105 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @__GFP_DMA32, align 4
  %108 = load i32, i32* @__GFP_KSWAPD_RECLAIM, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %111 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %114 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i32 4, i32* %115, align 8
  %116 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %117 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %116, i32 0, i32 6
  %118 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %119 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  store i32* %117, i32** %120, align 8
  %121 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %122 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %121, i32 0, i32 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %126 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  store i32* %124, i32** %127, align 8
  %128 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %129 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %128, i32 0, i32 5
  %130 = call i32 @vb2_queue_init(%struct.TYPE_13__* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %69
  br label %201

134:                                              ; preds = %69
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %151, %134
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %138 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @solo_v4l2_set_ch(%struct.solo_dev* %142, i32 %143)
  br label %145

145:                                              ; preds = %149, %141
  %146 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %147 = call i64 @erase_off(%struct.solo_dev* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %145

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %135

154:                                              ; preds = %135
  %155 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %156 = call i32 @solo_v4l2_set_ch(%struct.solo_dev* %155, i32 0)
  br label %157

157:                                              ; preds = %161, %154
  %158 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %159 = call i64 @erase_off(%struct.solo_dev* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %157

162:                                              ; preds = %157
  %163 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %164 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @video_register_device(%struct.TYPE_12__* %165, i32 %166, i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %162
  br label %201

172:                                              ; preds = %162
  %173 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %174 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %173, i32 0, i32 1
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** @SOLO6X10_NAME, align 8
  %179 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %180 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %179, i32 0, i32 1
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @snprintf(i32 %177, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %178, i32 %183)
  %185 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %186 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %185, i32 0, i32 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %190 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %189, i32 0, i32 1
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %195 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %198 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @dev_info(i32* %188, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %196, i32 %199)
  store i32 0, i32* %3, align 4
  br label %212

201:                                              ; preds = %171, %133, %64
  %202 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %203 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %202, i32 0, i32 1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = call i32 @video_device_release(%struct.TYPE_12__* %204)
  %206 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %207 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %206, i32 0, i32 2
  %208 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_14__* %207)
  %209 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %210 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %209, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %210, align 8
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %201, %172, %27
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_12__* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_12__*, %struct.solo_dev*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_13__*) #1

declare dso_local i32 @solo_v4l2_set_ch(%struct.solo_dev*, i32) #1

declare dso_local i64 @erase_off(%struct.solo_dev*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @video_device_release(%struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
