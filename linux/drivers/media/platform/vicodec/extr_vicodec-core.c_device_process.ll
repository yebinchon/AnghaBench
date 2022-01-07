; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_device_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_device_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { i32, %struct.v4l2_fwht_state, i64, i64, %struct.TYPE_6__, i32, %struct.vicodec_dev* }
%struct.v4l2_fwht_state = type { %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.vicodec_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.vb2_buffer }
%struct.vb2_buffer = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.media_request* }
%struct.media_request = type { i32 }
%struct.vb2_queue = type { %struct.vb2_buffer** }
%struct.vicodec_q_data = type { i32, i32 }

@FWHT_FL_I_FRAME = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Acquiring kernel pointers to buffers failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_PFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_ctx*, %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer*)* @device_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_process(%struct.vicodec_ctx* %0, %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vicodec_ctx*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vicodec_dev*, align 8
  %9 = alloca %struct.v4l2_fwht_state*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.media_request*, align 8
  %14 = alloca %struct.vb2_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vb2_queue*, align 8
  %17 = alloca %struct.vicodec_q_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.vicodec_q_data*, align 8
  %20 = alloca i32, align 4
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %5, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %6, align 8
  store %struct.vb2_v4l2_buffer* %2, %struct.vb2_v4l2_buffer** %7, align 8
  %21 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %21, i32 0, i32 6
  %23 = load %struct.vicodec_dev*, %struct.vicodec_dev** %22, align 8
  store %struct.vicodec_dev* %23, %struct.vicodec_dev** %8, align 8
  %24 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %24, i32 0, i32 1
  store %struct.v4l2_fwht_state* %25, %struct.v4l2_fwht_state** %9, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30, %3
  %36 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %36, i32 0, i32 1
  %38 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %37, i32 0)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %10, align 8
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %10, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %131

49:                                               ; preds = %44
  %50 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.media_request*, %struct.media_request** %53, align 8
  store %struct.media_request* %54, %struct.media_request** %13, align 8
  %55 = load %struct.media_request*, %struct.media_request** %13, align 8
  %56 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %56, i32 0, i32 5
  %58 = call i32 @v4l2_ctrl_request_setup(%struct.media_request* %55, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %251

63:                                               ; preds = %49
  %64 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %65 = call i32 @update_state_from_header(%struct.vicodec_ctx* %64)
  %66 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %66, i32 0, i32 1
  %68 = call i32 @vb2_get_plane_payload(%struct.vb2_buffer* %67, i32 0)
  %69 = call i32 @htonl(i32 %68)
  %70 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ntohl(i32 %78)
  %80 = load i32, i32* @FWHT_FL_I_FRAME, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %125, label %83

83:                                               ; preds = %63
  %84 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %89 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %87, i32 %88)
  store %struct.vb2_queue* %89, %struct.vb2_queue** %16, align 8
  %90 = load %struct.vb2_queue*, %struct.vb2_queue** %16, align 8
  %91 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @vb2_find_timestamp(%struct.vb2_queue* %90, i32 %94, i32 0)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %251

101:                                              ; preds = %83
  %102 = load %struct.vb2_queue*, %struct.vb2_queue** %16, align 8
  %103 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %102, i32 0, i32 0
  %104 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %104, i64 %106
  %108 = load %struct.vb2_buffer*, %struct.vb2_buffer** %107, align 8
  store %struct.vb2_buffer* %108, %struct.vb2_buffer** %14, align 8
  %109 = load %struct.vb2_buffer*, %struct.vb2_buffer** %14, align 8
  %110 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VB2_BUF_STATE_ERROR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %114, %101
  %118 = load %struct.vb2_buffer*, %struct.vb2_buffer** %14, align 8
  %119 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %118, i32 0)
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32* %120, i32** %124, align 8
  br label %130

125:                                              ; preds = %63
  %126 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %127 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %125, %117
  br label %131

131:                                              ; preds = %130, %44
  %132 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %133 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %132, i32 0, i32 1
  %134 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %133, i32 0)
  %135 = bitcast i8* %134 to i32*
  store i32* %135, i32** %11, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32*, i32** %11, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.vicodec_dev*, %struct.vicodec_dev** %8, align 8
  %143 = getelementptr inbounds %struct.vicodec_dev, %struct.vicodec_dev* %142, i32 0, i32 0
  %144 = call i32 @v4l2_err(i32* %143, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %145 = load i32, i32* @EFAULT, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %251

147:                                              ; preds = %138
  %148 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %149 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %147
  %153 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %154 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %155 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %153, i32 %154)
  store %struct.vicodec_q_data* %155, %struct.vicodec_q_data** %17, align 8
  %156 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %17, align 8
  %157 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %9, align 8
  %160 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %9, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @v4l2_fwht_encode(%struct.v4l2_fwht_state* %161, i32* %162, i32* %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %152
  %168 = load i32, i32* %18, align 4
  store i32 %168, i32* %4, align 4
  br label %251

169:                                              ; preds = %152
  %170 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %171 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %170, i32 0, i32 1
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %171, i32 0, i32 %172)
  br label %249

174:                                              ; preds = %147
  %175 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %176 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ntohl(i32 %179)
  store i32 %180, i32* %20, align 4
  %181 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %182 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %183 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %181, i32 %182)
  store %struct.vicodec_q_data* %183, %struct.vicodec_q_data** %19, align 8
  %184 = load i32, i32* %20, align 4
  %185 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %186 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ugt i32 %184, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %174
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %251

192:                                              ; preds = %174
  %193 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %19, align 8
  %194 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %9, align 8
  %197 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %9, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 @v4l2_fwht_decode(%struct.v4l2_fwht_state* %198, i32* %199, i32* %200)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %192
  %205 = load i32, i32* %12, align 4
  store i32 %205, i32* %4, align 4
  br label %251

206:                                              ; preds = %192
  %207 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %208 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %206
  %212 = load i32*, i32** %11, align 8
  %213 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %214 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %218 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %217, i32 0, i32 1
  %219 = call i32 @copy_cap_to_ref(i32* %212, i32 %216, %struct.v4l2_fwht_state* %218)
  br label %220

220:                                              ; preds = %211, %206
  %221 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %222 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %221, i32 0, i32 1
  %223 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %19, align 8
  %224 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %222, i32 0, i32 %225)
  %227 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %5, align 8
  %228 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @ntohl(i32 %231)
  %233 = load i32, i32* @FWHT_FL_I_FRAME, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %220
  %237 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %238 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %239 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %248

242:                                              ; preds = %220
  %243 = load i32, i32* @V4L2_BUF_FLAG_PFRAME, align 4
  %244 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %245 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %242, %236
  br label %249

249:                                              ; preds = %248, %169
  %250 = load i32, i32* %12, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %249, %204, %189, %167, %141, %98, %61
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i8* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @v4l2_ctrl_request_setup(%struct.media_request*, i32*) #1

declare dso_local i32 @update_state_from_header(%struct.vicodec_ctx*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i32 @vb2_find_timestamp(%struct.vb2_queue*, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i32 @v4l2_fwht_encode(%struct.v4l2_fwht_state*, i32*, i32*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i32 @v4l2_fwht_decode(%struct.v4l2_fwht_state*, i32*, i32*) #1

declare dso_local i32 @copy_cap_to_ref(i32*, i32, %struct.v4l2_fwht_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
