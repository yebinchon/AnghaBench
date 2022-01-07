; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_set_jpeg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_set_jpeg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_6__, %struct.TYPE_4__, %struct.s5p_jpeg* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.s5p_jpeg = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.vb2_v4l2_buffer = type { i32 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@SJPEG_EXYNOS5433 = common dso_local global i64 0, align 8
@S5P_JPEG_DECODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @exynos4_jpeg_set_jpeg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_jpeg_set_jpeg_addr(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %6 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %6, i32 0, i32 3
  %8 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %7, align 8
  store %struct.s5p_jpeg* %8, %struct.s5p_jpeg** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %18)
  store %struct.vb2_v4l2_buffer* %19, %struct.vb2_v4l2_buffer** %4, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %24)
  store %struct.vb2_v4l2_buffer* %25, %struct.vb2_v4l2_buffer** %4, align 8
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %27, i32 0, i32 0
  %29 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %31 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SJPEG_EXYNOS5433, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %26
  %38 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @S5P_JPEG_DECODE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %37, %26
  %53 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %54 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @exynos4_jpeg_set_stream_buf_address(i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @exynos4_jpeg_set_stream_buf_address(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
