; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { i32, i32, i32, i64, i32, %struct.TYPE_12__, i64, i64, i32, i32, i64, i64, i64, %struct.vb2_v4l2_buffer*, %struct.vicodec_dev* }
%struct.TYPE_12__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.media_request* }
%struct.media_request = type { i32 }
%struct.vicodec_dev = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vicodec_q_data = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@vicodec_eos_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vicodec_ctx*, align 8
  %4 = alloca %struct.vicodec_dev*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vicodec_q_data*, align 8
  %8 = alloca %struct.vicodec_q_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.media_request*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.vicodec_ctx*
  store %struct.vicodec_ctx* %12, %struct.vicodec_ctx** %3, align 8
  %13 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %13, i32 0, i32 14
  %15 = load %struct.vicodec_dev*, %struct.vicodec_dev** %14, align 8
  store %struct.vicodec_dev* %15, %struct.vicodec_dev** %4, align 8
  %16 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %19)
  store %struct.vb2_v4l2_buffer* %20, %struct.vb2_v4l2_buffer** %5, align 8
  %21 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %24)
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %6, align 8
  %26 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.media_request*, %struct.media_request** %29, align 8
  store %struct.media_request* %30, %struct.media_request** %10, align 8
  %31 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %32 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %33 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %31, i32 %32)
  store %struct.vicodec_q_data* %33, %struct.vicodec_q_data** %7, align 8
  %34 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %35 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %36 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %34, i32 %35)
  store %struct.vicodec_q_data* %36, %struct.vicodec_q_data** %8, align 8
  %37 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %41 = call i64 @device_process(%struct.vicodec_ctx* %38, %struct.vb2_v4l2_buffer* %39, %struct.vb2_v4l2_buffer* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %44, i32* %9, align 4
  br label %53

45:                                               ; preds = %1
  %46 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %8, align 8
  %47 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = sext i32 %48 to i64
  %51 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %45, %43
  %54 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %61 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %62 = call i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer* %60, %struct.vb2_v4l2_buffer* %61, i32 0)
  %63 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_lock(i32 %65)
  %67 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %53
  %72 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %73 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %73, i32 0, i32 13
  %75 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %74, align 8
  %76 = icmp eq %struct.vb2_v4l2_buffer* %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %79 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %83, i32 0, i32 5
  %85 = call i32 @v4l2_event_queue_fh(%struct.TYPE_12__* %84, i32* @vicodec_eos_event)
  %86 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %77, %71, %53
  %91 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95, %90
  %101 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %102 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = sext i32 %103 to i64
  %106 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %107 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %111)
  store %struct.vb2_v4l2_buffer* %112, %struct.vb2_v4l2_buffer** %5, align 8
  %113 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %113, i32 %114)
  br label %145

116:                                              ; preds = %95
  %117 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %118 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %117, i32 0, i32 1
  %119 = call i64 @vb2_get_plane_payload(%struct.TYPE_11__* %118, i32 0)
  %120 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %116
  %125 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %126 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = sext i32 %127 to i64
  %130 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %131 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %135)
  store %struct.vb2_v4l2_buffer* %136, %struct.vb2_v4l2_buffer** %5, align 8
  %137 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %137, i32 %138)
  %140 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %140, i32 0, i32 3
  store i64 0, i64* %141, align 8
  %142 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %143 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %124, %116
  br label %145

145:                                              ; preds = %144, %100
  %146 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %146, i32 %147)
  %149 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %149, i32 0, i32 12
  store i64 0, i64* %150, align 8
  %151 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %152 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %151, i32 0, i32 11
  store i64 0, i64* %152, align 8
  %153 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %154 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %153, i32 0, i32 10
  store i64 0, i64* %154, align 8
  %155 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %156 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %155, i32 0, i32 4
  store i32 0, i32* %156, align 8
  %157 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @spin_unlock(i32 %159)
  %161 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %162 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %145
  %166 = load %struct.media_request*, %struct.media_request** %10, align 8
  %167 = icmp ne %struct.media_request* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.media_request*, %struct.media_request** %10, align 8
  %170 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %171 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %170, i32 0, i32 8
  %172 = call i32 @v4l2_ctrl_request_complete(%struct.media_request* %169, i32* %171)
  br label %173

173:                                              ; preds = %168, %165, %145
  %174 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %175 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %173
  %179 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %180 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %184 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @v4l2_m2m_job_finish(i32 %182, i32 %186)
  br label %214

188:                                              ; preds = %173
  %189 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %190 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %195 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %199 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @v4l2_m2m_job_finish(i32 %197, i32 %201)
  br label %213

203:                                              ; preds = %188
  %204 = load %struct.vicodec_dev*, %struct.vicodec_dev** %4, align 8
  %205 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %209 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @v4l2_m2m_job_finish(i32 %207, i32 %211)
  br label %213

213:                                              ; preds = %203, %193
  br label %214

214:                                              ; preds = %213, %178
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i64 @device_process(%struct.vicodec_ctx*, %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @v4l2_m2m_buf_copy_metadata(%struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @v4l2_event_queue_fh(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @v4l2_ctrl_request_complete(%struct.media_request*, i32*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
