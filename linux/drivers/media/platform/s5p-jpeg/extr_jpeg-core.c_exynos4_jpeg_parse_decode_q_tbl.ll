; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_decode_q_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_decode_q_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.s5p_jpeg* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.s5p_jpeg = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_jpeg_buffer = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @exynos4_jpeg_parse_decode_q_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_jpeg_parse_decode_q_tbl(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.s5p_jpeg_buffer, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %9 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %9, i32 0, i32 2
  %11 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %10, align 8
  store %struct.s5p_jpeg* %11, %struct.s5p_jpeg** %3, align 8
  %12 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %15)
  store %struct.vb2_v4l2_buffer* %16, %struct.vb2_v4l2_buffer** %4, align 8
  %17 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %22, i32 0, i32 0
  %24 = call i64 @vb2_plane_vaddr(i32* %23, i32 0)
  %25 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %24, %28
  %30 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = call i32 @skip(%struct.s5p_jpeg_buffer* %5, i32 5)
  %33 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %65

37:                                               ; preds = %1
  %38 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %39 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @exynos4_jpeg_set_dec_components(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %58, %37
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %65

52:                                               ; preds = %47
  %53 = call i32 @skip(%struct.s5p_jpeg_buffer* %5, i32 1)
  %54 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %65

58:                                               ; preds = %52
  %59 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %60 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @exynos4_jpeg_select_dec_q_tbl(i32 %61, i32 %62, i32 %63)
  br label %43

65:                                               ; preds = %36, %51, %57, %43
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i64 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @skip(%struct.s5p_jpeg_buffer*, i32) #1

declare dso_local i32 @get_byte(%struct.s5p_jpeg_buffer*) #1

declare dso_local i32 @exynos4_jpeg_set_dec_components(i32, i32) #1

declare dso_local i32 @exynos4_jpeg_select_dec_q_tbl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
