; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_au_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_vb2_au_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.delta_ctx = type { i64, %struct.TYPE_3__, i32, i32, %struct.delta_dec*, %struct.delta_streaminfo, %struct.delta_streaminfo, %struct.delta_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.delta_dec = type opaque
%struct.delta_streaminfo = type { i32, i32, i32, i32 }
%struct.delta_dev = type { i32 }
%struct.delta_au = type { i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32 }

@DELTA_STATE_WF_FORMAT = common dso_local global i64 0, align 8
@DELTA_STATE_WF_STREAMINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"%s failed to start streaming, no stream header buffer enqueued\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@decode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s failed to start streaming, header decoding failed (%d)\0A\00", align 1
@get_streaminfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"%s failed to start streaming, valid stream header not yet decoded\0A\00", align 1
@DELTA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@get_frameinfo = common dso_local global i32 0, align 4
@DELTA_FLAG_FRAMEINFO = common dso_local global i32 0, align 4
@DELTA_STATE_READY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"%s %s => %s\0A\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @delta_vb2_au_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_vb2_au_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.delta_ctx*, align 8
  %7 = alloca %struct.delta_dev*, align 8
  %8 = alloca %struct.delta_dec*, align 8
  %9 = alloca %struct.delta_au*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vb2_v4l2_buffer*, align 8
  %12 = alloca %struct.delta_streaminfo*, align 8
  %13 = alloca %struct.delta_frameinfo*, align 8
  %14 = alloca [100 x i8], align 16
  %15 = alloca [100 x i8], align 16
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %17 = call %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.delta_ctx* %17, %struct.delta_ctx** %6, align 8
  %18 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %18, i32 0, i32 7
  %20 = load %struct.delta_dev*, %struct.delta_dev** %19, align 8
  store %struct.delta_dev* %20, %struct.delta_dev** %7, align 8
  %21 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %21, i32 0, i32 4
  %23 = load %struct.delta_dec*, %struct.delta_dec** %22, align 8
  store %struct.delta_dec* %23, %struct.delta_dec** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.vb2_v4l2_buffer* null, %struct.vb2_v4l2_buffer** %11, align 8
  %24 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %24, i32 0, i32 6
  store %struct.delta_streaminfo* %25, %struct.delta_streaminfo** %12, align 8
  %26 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %26, i32 0, i32 5
  %28 = bitcast %struct.delta_streaminfo* %27 to %struct.delta_frameinfo*
  store %struct.delta_frameinfo* %28, %struct.delta_frameinfo** %13, align 8
  %29 = bitcast [100 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 100, i1 false)
  %30 = bitcast [100 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 100, i1 false)
  %31 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DELTA_STATE_WF_FORMAT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DELTA_STATE_WF_STREAMINFO, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %209

43:                                               ; preds = %36, %2
  %44 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DELTA_STATE_WF_FORMAT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %51 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.delta_streaminfo, %struct.delta_streaminfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @delta_open_decoder(%struct.delta_ctx* %50, i32 %54, i32 %58, %struct.delta_dec** %8)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %188

63:                                               ; preds = %49
  %64 = load %struct.delta_dec*, %struct.delta_dec** %8, align 8
  %65 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %65, i32 0, i32 4
  store %struct.delta_dec* %64, %struct.delta_dec** %66, align 8
  %67 = load i64, i64* @DELTA_STATE_WF_STREAMINFO, align 8
  %68 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %43
  %71 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %74)
  store %struct.vb2_v4l2_buffer* %75, %struct.vb2_v4l2_buffer** %11, align 8
  %76 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %11, align 8
  %77 = icmp ne %struct.vb2_v4l2_buffer* %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %70
  %79 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  %80 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %188

88:                                               ; preds = %70
  %89 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %11, align 8
  %90 = call %struct.delta_streaminfo* @to_au(%struct.vb2_v4l2_buffer* %89)
  %91 = bitcast %struct.delta_streaminfo* %90 to %struct.delta_au*
  store %struct.delta_au* %91, %struct.delta_au** %9, align 8
  %92 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %11, align 8
  %93 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %92, i32 0, i32 0
  %94 = call i32 @vb2_get_plane_payload(%struct.TYPE_4__* %93, i32 0)
  %95 = load %struct.delta_au*, %struct.delta_au** %9, align 8
  %96 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %11, align 8
  %98 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.delta_au*, %struct.delta_au** %9, align 8
  %102 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %104 = load %struct.delta_au*, %struct.delta_au** %9, align 8
  %105 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @delta_push_dts(%struct.delta_ctx* %103, i32 %106)
  %108 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %109 = load %struct.delta_au*, %struct.delta_au** %9, align 8
  %110 = bitcast %struct.delta_au* %109 to %struct.delta_streaminfo*
  %111 = call i32 @dump_au(%struct.delta_ctx* %108, %struct.delta_streaminfo* %110)
  %112 = load %struct.delta_dec*, %struct.delta_dec** %8, align 8
  %113 = load i32, i32* @decode, align 4
  %114 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %115 = load %struct.delta_au*, %struct.delta_au** %9, align 8
  %116 = bitcast %struct.delta_au* %115 to %struct.delta_streaminfo*
  %117 = call i32 @call_dec_op(%struct.delta_dec* %112, i32 %113, %struct.delta_ctx* %114, %struct.delta_streaminfo* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %88
  %121 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  %122 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %125 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %123, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %127)
  br label %188

129:                                              ; preds = %88
  %130 = load %struct.delta_dec*, %struct.delta_dec** %8, align 8
  %131 = load i32, i32* @get_streaminfo, align 4
  %132 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %133 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %12, align 8
  %134 = call i32 @call_dec_op(%struct.delta_dec* %130, i32 %131, %struct.delta_ctx* %132, %struct.delta_streaminfo* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  %139 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %142 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dev_dbg_ratelimited(i32 %140, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  br label %188

145:                                              ; preds = %129
  %146 = load i32, i32* @DELTA_FLAG_STREAMINFO, align 4
  %147 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %148 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.delta_dec*, %struct.delta_dec** %8, align 8
  %152 = load i32, i32* @get_frameinfo, align 4
  %153 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %154 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %13, align 8
  %155 = bitcast %struct.delta_frameinfo* %154 to %struct.delta_streaminfo*
  %156 = call i32 @call_dec_op(%struct.delta_dec* %151, i32 %152, %struct.delta_ctx* %153, %struct.delta_streaminfo* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %145
  br label %188

160:                                              ; preds = %145
  %161 = load i32, i32* @DELTA_FLAG_FRAMEINFO, align 4
  %162 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %163 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i64, i64* @DELTA_STATE_READY, align 8
  %167 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %168 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  %170 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %173 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %12, align 8
  %176 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %177 = call i32 @delta_streaminfo_str(%struct.delta_streaminfo* %175, i8* %176, i32 100)
  %178 = load %struct.delta_frameinfo*, %struct.delta_frameinfo** %13, align 8
  %179 = bitcast %struct.delta_frameinfo* %178 to %struct.delta_streaminfo*
  %180 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %181 = call i32 @delta_frameinfo_str(%struct.delta_streaminfo* %179, i8* %180, i32 100)
  %182 = call i32 @dev_dbg(i32 %171, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %177, i32 %181)
  %183 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %184 = load %struct.delta_au*, %struct.delta_au** %9, align 8
  %185 = bitcast %struct.delta_au* %184 to %struct.delta_streaminfo*
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @delta_au_done(%struct.delta_ctx* %183, %struct.delta_streaminfo* %185, i32 %186)
  store i32 0, i32* %3, align 4
  br label %209

188:                                              ; preds = %159, %137, %120, %78, %62
  %189 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %11, align 8
  %190 = icmp ne %struct.vb2_v4l2_buffer* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %11, align 8
  %193 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %194 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %192, i32 %193)
  br label %195

195:                                              ; preds = %191, %188
  br label %196

196:                                              ; preds = %203, %195
  %197 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %198 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %200)
  store %struct.vb2_v4l2_buffer* %201, %struct.vb2_v4l2_buffer** %11, align 8
  %202 = icmp ne %struct.vb2_v4l2_buffer* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %11, align 8
  %205 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %206 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %204, i32 %205)
  br label %196

207:                                              ; preds = %196
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %160, %42
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.delta_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @delta_open_decoder(%struct.delta_ctx*, i32, i32, %struct.delta_dec**) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.delta_streaminfo* @to_au(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @vb2_get_plane_payload(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @delta_push_dts(%struct.delta_ctx*, i32) #1

declare dso_local i32 @dump_au(%struct.delta_ctx*, %struct.delta_streaminfo*) #1

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*, %struct.delta_streaminfo*) #1

declare dso_local i32 @dev_dbg_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @delta_streaminfo_str(%struct.delta_streaminfo*, i8*, i32) #1

declare dso_local i32 @delta_frameinfo_str(%struct.delta_streaminfo*, i8*, i32) #1

declare dso_local i32 @delta_au_done(%struct.delta_ctx*, %struct.delta_streaminfo*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
