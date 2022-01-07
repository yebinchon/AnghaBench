; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.jpu_ctx = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.jpu_q_data, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.jpu_q_data = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.jpu_buffer = type { i64 }

@JPU_JPEG_422 = common dso_local global i64 0, align 8
@JPU_JPEG_420 = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"incompatible or corrupted JPEG data\0A\00", align 1
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @jpu_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpu_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.jpu_ctx*, align 8
  %5 = alloca %struct.jpu_buffer*, align 8
  %6 = alloca %struct.jpu_q_data*, align 8
  %7 = alloca %struct.jpu_q_data, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %14 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %13)
  store %struct.vb2_v4l2_buffer* %14, %struct.vb2_v4l2_buffer** %3, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = call %struct.jpu_ctx* @vb2_get_drv_priv(%struct.TYPE_7__* %17)
  store %struct.jpu_ctx* %18, %struct.jpu_ctx** %4, align 8
  %19 = load %struct.jpu_ctx*, %struct.jpu_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %88, label %23

23:                                               ; preds = %1
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %23
  %32 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %33 = call %struct.jpu_buffer* @vb2_to_jpu_buffer(%struct.vb2_v4l2_buffer* %32)
  store %struct.jpu_buffer* %33, %struct.jpu_buffer** %5, align 8
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %35 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %34, i32 0)
  store i8* %35, i8** %8, align 8
  %36 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %37 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %36, i32 0)
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @jpu_parse_hdr(i8* %38, i64 %39, i32* %10, i32* %11)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @JPU_JPEG_422, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @JPU_JPEG_420, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %102

49:                                               ; preds = %44, %31
  %50 = load %struct.jpu_ctx*, %struct.jpu_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %50, i32 0, i32 2
  store %struct.jpu_q_data* %51, %struct.jpu_q_data** %6, align 8
  %52 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %53 = bitcast %struct.jpu_q_data* %7 to i8*
  %54 = bitcast %struct.jpu_q_data* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 12, i1 false)
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %7, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %7, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.jpu_ctx*, %struct.jpu_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %7, i32 0, i32 1
  %63 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %7, i32 0, i32 0
  %64 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %65 = call i32 @__jpu_try_fmt(%struct.jpu_ctx* %61, i32* %62, %struct.TYPE_8__* %63, i32 %64)
  %66 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %7, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %70 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %49
  %75 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %7, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %79 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74, %49
  br label %102

84:                                               ; preds = %74
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.jpu_buffer*, %struct.jpu_buffer** %5, align 8
  %87 = getelementptr inbounds %struct.jpu_buffer, %struct.jpu_buffer* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %23, %1
  %89 = load %struct.jpu_ctx*, %struct.jpu_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.jpu_ctx*, %struct.jpu_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %100 = call i32 @v4l2_m2m_buf_queue(i64 %98, %struct.vb2_v4l2_buffer* %99)
  br label %101

101:                                              ; preds = %94, %88
  br label %112

102:                                              ; preds = %83, %48
  %103 = load %struct.jpu_ctx*, %struct.jpu_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %110 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %111 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %109, i32 %110)
  br label %112

112:                                              ; preds = %102, %101
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.jpu_ctx* @vb2_get_drv_priv(%struct.TYPE_7__*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.jpu_buffer* @vb2_to_jpu_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i8* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @jpu_parse_hdr(i8*, i64, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__jpu_try_fmt(%struct.jpu_ctx*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_queue(i64, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
