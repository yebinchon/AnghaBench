; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_decode_h_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_decode_h_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.s5p_jpeg* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.s5p_jpeg = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_jpeg_buffer = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @exynos4_jpeg_parse_decode_h_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_jpeg_parse_decode_h_tbl(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.s5p_jpeg_buffer, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %10 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %10, i32 0, i32 2
  %12 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %11, align 8
  store %struct.s5p_jpeg* %12, %struct.s5p_jpeg** %3, align 8
  %13 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %16)
  store %struct.vb2_v4l2_buffer* %17, %struct.vb2_v4l2_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 0
  store i32 2, i32* %18, align 8
  %19 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %19, i32 0, i32 0
  %21 = call i64 @vb2_plane_vaddr(i32* %20, i32 0)
  %22 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %21, %25
  %27 = add i64 %26, 2
  %28 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 1
  store i64 0, i64* %29, align 8
  store i32 0, i32* %6, align 4
  %30 = call i64 @get_word_be(%struct.s5p_jpeg_buffer* %5, i32* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %75

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = sub nsw i64 %35, 2
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 2
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %75

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %75

57:                                               ; preds = %52
  %58 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %75

62:                                               ; preds = %57
  %63 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %64 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 4
  %69 = and i32 %68, 1
  %70 = shl i32 %69, 1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 1
  %73 = or i32 %70, %72
  %74 = call i32 @exynos4_jpeg_select_dec_h_tbl(i32 %65, i32 %66, i32 %73)
  br label %48

75:                                               ; preds = %32, %46, %56, %61, %48
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i64 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i64 @get_word_be(%struct.s5p_jpeg_buffer*, i32*) #1

declare dso_local i32 @get_byte(%struct.s5p_jpeg_buffer*) #1

declare dso_local i32 @exynos4_jpeg_select_dec_h_tbl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
