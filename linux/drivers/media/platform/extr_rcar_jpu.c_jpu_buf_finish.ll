; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_buf_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_buf_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i64 }
%struct.jpu_buffer = type { i64 }
%struct.jpu_ctx = type { i32, %struct.jpu_q_data }
%struct.jpu_q_data = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i64 0, align 8
@jpeg_hdrs = common dso_local global i32* null, align 8
@JPU_JPEG_HDR_SIZE = common dso_local global i32 0, align 4
@JPU_JPEG_HEIGHT_OFFSET = common dso_local global i32 0, align 4
@JPU_JPEG_WIDTH_OFFSET = common dso_local global i32 0, align 4
@JPU_JPEG_SUBS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @jpu_buf_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpu_buf_finish(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.jpu_buffer*, align 8
  %5 = alloca %struct.jpu_ctx*, align 8
  %6 = alloca %struct.jpu_q_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %3, align 8
  %11 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %12 = call %struct.jpu_buffer* @vb2_to_jpu_buffer(%struct.vb2_v4l2_buffer* %11)
  store %struct.jpu_buffer* %12, %struct.jpu_buffer** %4, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = call %struct.jpu_ctx* @vb2_get_drv_priv(%struct.TYPE_7__* %15)
  store %struct.jpu_ctx* %16, %struct.jpu_ctx** %5, align 8
  %17 = load %struct.jpu_ctx*, %struct.jpu_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %17, i32 0, i32 1
  store %struct.jpu_q_data* %18, %struct.jpu_q_data** %6, align 8
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %25 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VB2_BUF_STATE_DONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load %struct.jpu_ctx*, %struct.jpu_ctx** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.TYPE_8__* @jpu_get_q_data(%struct.jpu_ctx* %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = sext i32 %34 to i64
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %29, %1
  %40 = load %struct.jpu_ctx*, %struct.jpu_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.jpu_ctx, %struct.jpu_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %46 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VB2_BUF_STATE_DONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %44, %39
  br label %94

55:                                               ; preds = %50
  %56 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %57 = call i32* @vb2_plane_vaddr(%struct.vb2_buffer* %56, i32 0)
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** @jpeg_hdrs, align 8
  %60 = load %struct.jpu_buffer*, %struct.jpu_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.jpu_buffer, %struct.jpu_buffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @JPU_JPEG_HDR_SIZE, align 4
  %66 = call i32 @memcpy(i32* %58, i32 %64, i32 %65)
  %67 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %68 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cpu_to_be16(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @JPU_JPEG_HEIGHT_OFFSET, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %77 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @cpu_to_be16(i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @JPU_JPEG_WIDTH_OFFSET, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load %struct.jpu_q_data*, %struct.jpu_q_data** %6, align 8
  %86 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* @JPU_JPEG_SUBS_OFFSET, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %55, %54
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.jpu_buffer* @vb2_to_jpu_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local %struct.jpu_ctx* @vb2_get_drv_priv(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @jpu_get_q_data(%struct.jpu_ctx*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
