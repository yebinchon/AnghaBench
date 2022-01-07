; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_ipc_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mjpeg-dec.c_delta_mjpeg_ipc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_au = type { i32, i32 }
%struct.delta_mjpeg_ctx = type { %struct.delta_frame*, i32, i32, %struct.TYPE_4__* }
%struct.delta_frame = type { i32, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.jpeg_decode_return_params_t* }
%struct.jpeg_decode_return_params_t = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.jpeg_decode_params_t = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i8*, i8* }
%struct.delta_ipc_param = type { i32, %struct.jpeg_decode_return_params_t* }

@JPEG_DISP_AUX_EN = common dso_local global i32 0, align 4
@JPEG_ADDITIONAL_FLAG_420MB = common dso_local global i32 0, align 4
@JPEG_HDEC_1 = common dso_local global i32 0, align 4
@JPEG_VDEC_1 = common dso_local global i32 0, align 4
@JPEG_NORMAL_DECODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@JPEG_DECODER_NO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s  dumping command %s\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@DELTA_FRAME_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*, %struct.delta_au*)* @delta_mjpeg_ipc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_mjpeg_ipc_decode(%struct.delta_ctx* %0, %struct.delta_au* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_au*, align 8
  %6 = alloca %struct.delta_dev*, align 8
  %7 = alloca %struct.delta_mjpeg_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.jpeg_decode_params_t*, align 8
  %10 = alloca %struct.jpeg_decode_return_params_t*, align 8
  %11 = alloca %struct.delta_frame*, align 8
  %12 = alloca %struct.delta_ipc_param, align 8
  %13 = alloca %struct.delta_ipc_param, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store %struct.delta_au* %1, %struct.delta_au** %5, align 8
  %14 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %14, i32 0, i32 2
  %16 = load %struct.delta_dev*, %struct.delta_dev** %15, align 8
  store %struct.delta_dev* %16, %struct.delta_dev** %6, align 8
  %17 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %18 = call %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx* %17)
  store %struct.delta_mjpeg_ctx* %18, %struct.delta_mjpeg_ctx** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.jpeg_decode_return_params_t*, %struct.jpeg_decode_return_params_t** %22, align 8
  %24 = bitcast %struct.jpeg_decode_return_params_t* %23 to %struct.jpeg_decode_params_t*
  store %struct.jpeg_decode_params_t* %24, %struct.jpeg_decode_params_t** %9, align 8
  %25 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.jpeg_decode_return_params_t*, %struct.jpeg_decode_return_params_t** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_decode_return_params_t, %struct.jpeg_decode_return_params_t* %29, i64 72
  store %struct.jpeg_decode_return_params_t* %30, %struct.jpeg_decode_return_params_t** %10, align 8
  %31 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %32 = call i32 @delta_get_free_frame(%struct.delta_ctx* %31, %struct.delta_frame** %11)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %187

37:                                               ; preds = %2
  %38 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %39 = bitcast %struct.jpeg_decode_params_t* %38 to %struct.jpeg_decode_return_params_t*
  %40 = call i32 @memset(%struct.jpeg_decode_return_params_t* %39, i32 0, i32 72)
  %41 = load %struct.delta_au*, %struct.delta_au** %5, align 8
  %42 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %47 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load %struct.delta_au*, %struct.delta_au** %5, align 8
  %49 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.delta_au*, %struct.delta_au** %5, align 8
  %52 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %59 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @JPEG_DISP_AUX_EN, align 4
  %61 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %62 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @JPEG_ADDITIONAL_FLAG_420MB, align 4
  %64 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %65 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @JPEG_HDEC_1, align 4
  %67 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %68 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @JPEG_VDEC_1, align 4
  %70 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %71 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @JPEG_NORMAL_DECODE, align 4
  %73 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %74 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %76 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 4, i32* %77, align 8
  %78 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %79 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %83 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i8* %81, i8** %84, align 8
  %85 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %86 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %89 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %93 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %91, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %87, %97
  %99 = inttoptr i64 %98 to i8*
  %100 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %101 = getelementptr inbounds %struct.jpeg_decode_params_t, %struct.jpeg_decode_params_t* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %104 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %110 = bitcast %struct.jpeg_decode_params_t* %109 to %struct.jpeg_decode_return_params_t*
  %111 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %112 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ipc_decode_param_str(%struct.jpeg_decode_return_params_t* %110, i32 %113, i32 4)
  %115 = call i32 @dev_vdbg(i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %114)
  %116 = load %struct.jpeg_decode_return_params_t*, %struct.jpeg_decode_return_params_t** %10, align 8
  %117 = call i32 @memset(%struct.jpeg_decode_return_params_t* %116, i32 0, i32 72)
  %118 = load i32, i32* @JPEG_DECODER_NO_ERROR, align 4
  %119 = load %struct.jpeg_decode_return_params_t*, %struct.jpeg_decode_return_params_t** %10, align 8
  %120 = getelementptr inbounds %struct.jpeg_decode_return_params_t, %struct.jpeg_decode_return_params_t* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %12, i32 0, i32 0
  store i32 72, i32* %121, align 8
  %122 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %123 = bitcast %struct.jpeg_decode_params_t* %122 to %struct.jpeg_decode_return_params_t*
  %124 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %12, i32 0, i32 1
  store %struct.jpeg_decode_return_params_t* %123, %struct.jpeg_decode_return_params_t** %124, align 8
  %125 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %13, i32 0, i32 0
  store i32 72, i32* %125, align 8
  %126 = load %struct.jpeg_decode_return_params_t*, %struct.jpeg_decode_return_params_t** %10, align 8
  %127 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %13, i32 0, i32 1
  store %struct.jpeg_decode_return_params_t* %126, %struct.jpeg_decode_return_params_t** %127, align 8
  %128 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %129 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @delta_ipc_decode(i32 %130, %struct.delta_ipc_param* %12, %struct.delta_ipc_param* %13)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %37
  %135 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %136 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %139 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %142 = bitcast %struct.jpeg_decode_params_t* %141 to %struct.jpeg_decode_return_params_t*
  %143 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %144 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ipc_decode_param_str(%struct.jpeg_decode_return_params_t* %142, i32 %145, i32 4)
  %147 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %146)
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %3, align 4
  br label %187

149:                                              ; preds = %37
  %150 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %151 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %155 = load %struct.jpeg_decode_return_params_t*, %struct.jpeg_decode_return_params_t** %10, align 8
  %156 = call i64 @delta_mjpeg_check_status(%struct.delta_ctx* %154, %struct.jpeg_decode_return_params_t* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %149
  %159 = load %struct.delta_dev*, %struct.delta_dev** %6, align 8
  %160 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %163 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.jpeg_decode_params_t*, %struct.jpeg_decode_params_t** %9, align 8
  %166 = bitcast %struct.jpeg_decode_params_t* %165 to %struct.jpeg_decode_return_params_t*
  %167 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %168 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @ipc_decode_param_str(%struct.jpeg_decode_return_params_t* %166, i32 %169, i32 4)
  %171 = call i32 @dev_err(i32 %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %170)
  br label %172

172:                                              ; preds = %158, %149
  %173 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %174 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %175 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %177 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %178 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @DELTA_FRAME_DEC, align 4
  %180 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %181 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %185 = load %struct.delta_mjpeg_ctx*, %struct.delta_mjpeg_ctx** %7, align 8
  %186 = getelementptr inbounds %struct.delta_mjpeg_ctx, %struct.delta_mjpeg_ctx* %185, i32 0, i32 0
  store %struct.delta_frame* %184, %struct.delta_frame** %186, align 8
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %172, %134, %35
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.delta_mjpeg_ctx* @to_ctx(%struct.delta_ctx*) #1

declare dso_local i32 @delta_get_free_frame(%struct.delta_ctx*, %struct.delta_frame**) #1

declare dso_local i32 @memset(%struct.jpeg_decode_return_params_t*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ipc_decode_param_str(%struct.jpeg_decode_return_params_t*, i32, i32) #1

declare dso_local i32 @delta_ipc_decode(i32, %struct.delta_ipc_param*, %struct.delta_ipc_param*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i64 @delta_mjpeg_check_status(%struct.delta_ctx*, %struct.jpeg_decode_return_params_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
