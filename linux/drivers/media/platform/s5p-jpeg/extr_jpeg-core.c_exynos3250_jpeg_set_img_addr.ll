; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_set_img_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_set_img_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.s5p_jpeg* }
%struct.TYPE_6__ = type { i32, i32, %struct.s5p_jpeg_fmt* }
%struct.s5p_jpeg_fmt = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.s5p_jpeg_fmt* }
%struct.s5p_jpeg = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_jpeg_addr = type { i64, i64, i64 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @exynos3250_jpeg_set_img_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos3250_jpeg_set_img_addr(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca %struct.s5p_jpeg_fmt*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.s5p_jpeg_addr, align 8
  %7 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %8 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %8, i32 0, i32 4
  %10 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %9, align 8
  store %struct.s5p_jpeg* %10, %struct.s5p_jpeg** %3, align 8
  %11 = bitcast %struct.s5p_jpeg_addr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %15, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %30)
  store %struct.vb2_v4l2_buffer* %31, %struct.vb2_v4l2_buffer** %5, align 8
  %32 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %34, align 8
  store %struct.s5p_jpeg_fmt* %35, %struct.s5p_jpeg_fmt** %4, align 8
  br label %46

36:                                               ; preds = %1
  %37 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %40)
  store %struct.vb2_v4l2_buffer* %41, %struct.vb2_v4l2_buffer** %5, align 8
  %42 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %44, align 8
  store %struct.s5p_jpeg_fmt* %45, %struct.s5p_jpeg_fmt** %4, align 8
  br label %46

46:                                               ; preds = %36, %26
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %47, i32 0, i32 0
  %49 = call i64 @vb2_dma_contig_plane_dma_addr(i32* %48, i32 0)
  %50 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  %51 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  %52 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  br label %97

62:                                               ; preds = %46
  %63 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  %64 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  %75 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sdiv i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  br label %95

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sdiv i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  %94 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 1
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %62
  br label %97

97:                                               ; preds = %96, %55
  %98 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %99 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @exynos3250_jpeg_imgadr(i32 %100, %struct.s5p_jpeg_addr* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #2

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #2

declare dso_local i64 @vb2_dma_contig_plane_dma_addr(i32*, i32) #2

declare dso_local i32 @exynos3250_jpeg_imgadr(i32, %struct.s5p_jpeg_addr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
