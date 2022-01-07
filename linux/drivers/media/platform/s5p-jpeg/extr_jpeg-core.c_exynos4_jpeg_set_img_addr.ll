; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_set_img_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_set_img_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.s5p_jpeg* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.s5p_jpeg_fmt* }
%struct.s5p_jpeg_fmt = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.s5p_jpeg_fmt* }
%struct.s5p_jpeg = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_jpeg_addr = type { i32, i32, i32 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @exynos4_jpeg_set_img_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_jpeg_set_img_addr(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca %struct.s5p_jpeg_fmt*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.s5p_jpeg_addr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %9 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %9, i32 0, i32 4
  %11 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %10, align 8
  store %struct.s5p_jpeg* %11, %struct.s5p_jpeg** %3, align 8
  %12 = bitcast %struct.s5p_jpeg_addr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  store i32 0, i32* %8, align 4
  %13 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %18, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %1
  %30 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %33)
  store %struct.vb2_v4l2_buffer* %34, %struct.vb2_v4l2_buffer** %5, align 8
  %35 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %37, align 8
  store %struct.s5p_jpeg_fmt* %38, %struct.s5p_jpeg_fmt** %4, align 8
  %39 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %29
  %46 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  %47 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %45, %29
  br label %66

56:                                               ; preds = %1
  %57 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %59, align 8
  store %struct.s5p_jpeg_fmt* %60, %struct.s5p_jpeg_fmt** %4, align 8
  %61 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %64)
  store %struct.vb2_v4l2_buffer* %65, %struct.vb2_v4l2_buffer** %5, align 8
  br label %66

66:                                               ; preds = %56, %55
  %67 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %67, i32 0, i32 0
  %69 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %68, i32 0)
  %70 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  %72 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  %82 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  br label %115

83:                                               ; preds = %66
  %84 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  %85 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %90, %91
  %93 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  %95 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sdiv i32 %102, 4
  %104 = add nsw i32 %101, %103
  %105 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  br label %113

106:                                              ; preds = %88
  %107 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sdiv i32 %109, 2
  %111 = add nsw i32 %108, %110
  %112 = getelementptr inbounds %struct.s5p_jpeg_addr, %struct.s5p_jpeg_addr* %6, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %99
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114, %75
  %116 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %117 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @exynos4_jpeg_set_frame_buf_address(i32 %118, %struct.s5p_jpeg_addr* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #2

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #2

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #2

declare dso_local i32 @exynos4_jpeg_set_frame_buf_address(i32, %struct.s5p_jpeg_addr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
