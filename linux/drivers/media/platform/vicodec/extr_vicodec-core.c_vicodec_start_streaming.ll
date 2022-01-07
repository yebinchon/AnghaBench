; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vicodec_ctx = type { i32, i32, i64, i64, i32*, %struct.v4l2_fwht_state }
%struct.v4l2_fwht_state = type { i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.vicodec_q_data = type { i32, i32, i32, i32, i64, %struct.v4l2_fwht_pixfmt_info* }
%struct.v4l2_fwht_pixfmt_info = type { i32, i32, i64, i32, i32, i32 }

@V4L2_PIX_FMT_FWHT = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_FWHT_STATELESS = common dso_local global i64 0, align 8
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @vicodec_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicodec_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vicodec_ctx*, align 8
  %7 = alloca %struct.vicodec_q_data*, align 8
  %8 = alloca %struct.v4l2_fwht_state*, align 8
  %9 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %15 = call %struct.vicodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.vicodec_ctx* %15, %struct.vicodec_ctx** %6, align 8
  %16 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %16, i32 %19)
  store %struct.vicodec_q_data* %20, %struct.vicodec_q_data** %7, align 8
  %21 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %21, i32 0, i32 5
  store %struct.v4l2_fwht_state* %22, %struct.v4l2_fwht_state** %8, align 8
  %23 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %24 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %23, i32 0, i32 5
  %25 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %24, align 8
  store %struct.v4l2_fwht_pixfmt_info* %25, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %26 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %27 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %30 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %28, %31
  store i32 %32, i32* %10, align 4
  store i32* null, i32** %13, align 8
  %33 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %35, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %41 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %43 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %2
  %51 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %54 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58, %50
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %58
  store i32 0, i32* %3, align 4
  br label %284

75:                                               ; preds = %69, %63
  %76 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %77 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @V4L2_PIX_FMT_FWHT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %83 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @V4L2_PIX_FMT_FWHT_STATELESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81, %75
  %88 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %89 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %90 = call i32 @vicodec_return_bufs(%struct.vb2_queue* %88, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %284

93:                                               ; preds = %81
  %94 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %95 = call i32 @total_frame_size(%struct.vicodec_q_data* %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %98 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %100 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %103 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 4
  %104 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %105 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %108 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %110 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %113 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %115 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %118 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %120 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %123 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = mul i32 %121, %124
  %126 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %127 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %129 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %93
  %133 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %134 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %137 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  store i32 0, i32* %3, align 4
  br label %284

138:                                              ; preds = %93
  %139 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %7, align 8
  %140 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %143 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = mul i32 %141, %144
  %146 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %147 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i8* @kvmalloc(i32 %148, i32 %149)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %153 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  store i32* %151, i32** %154, align 8
  %155 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %156 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %160 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  store i32* %158, i32** %161, align 8
  %162 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %163 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = call i8* @kvmalloc(i32 %164, i32 %165)
  %167 = bitcast i8* %166 to i32*
  store i32* %167, i32** %13, align 8
  %168 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %169 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %138
  %174 = load i32*, i32** %13, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %189, label %176

176:                                              ; preds = %173, %138
  %177 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %178 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @kvfree(i32* %180)
  %182 = load i32*, i32** %13, align 8
  %183 = call i32 @kvfree(i32* %182)
  %184 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %185 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %186 = call i32 @vicodec_return_bufs(%struct.vb2_queue* %184, i32 %185)
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %3, align 4
  br label %284

189:                                              ; preds = %173
  %190 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %191 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %217

194:                                              ; preds = %189
  %195 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %196 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %199 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ugt i32 %197, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %204 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %207 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %202, %194
  %209 = load i32*, i32** %13, align 8
  %210 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %211 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %6, align 8
  %214 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @memcpy(i32* %209, i32* %212, i32 %215)
  br label %217

217:                                              ; preds = %208, %189
  %218 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %219 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @kvfree(i32* %220)
  %222 = load i32*, i32** %13, align 8
  %223 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %224 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %223, i32 0, i32 5
  store i32* %222, i32** %224, align 8
  %225 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %226 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %227, 3
  br i1 %228, label %229, label %239

229:                                              ; preds = %217
  %230 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %231 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 2
  store i32* null, i32** %232, align 8
  %233 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %234 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  store i32* null, i32** %235, align 8
  %236 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %237 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  store i32* null, i32** %238, align 8
  store i32 0, i32* %3, align 4
  br label %284

239:                                              ; preds = %217
  %240 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %241 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %248 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 2
  store i32* %246, i32** %249, align 8
  %250 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %251 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %11, align 4
  %256 = udiv i32 %254, %255
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %260 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 1
  store i32* %258, i32** %261, align 8
  %262 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %9, align 8
  %263 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 4
  br i1 %265, label %266, label %279

266:                                              ; preds = %239
  %267 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %268 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = udiv i32 %271, %272
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %270, i64 %274
  %276 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %277 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  store i32* %275, i32** %278, align 8
  br label %283

279:                                              ; preds = %239
  %280 = load %struct.v4l2_fwht_state*, %struct.v4l2_fwht_state** %8, align 8
  %281 = getelementptr inbounds %struct.v4l2_fwht_state, %struct.v4l2_fwht_state* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  store i32* null, i32** %282, align 8
  br label %283

283:                                              ; preds = %279, %266
  store i32 0, i32* %3, align 4
  br label %284

284:                                              ; preds = %283, %229, %176, %132, %87, %74
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local %struct.vicodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @vicodec_return_bufs(%struct.vb2_queue*, i32) #1

declare dso_local i32 @total_frame_size(%struct.vicodec_q_data*) #1

declare dso_local i8* @kvmalloc(i32, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
