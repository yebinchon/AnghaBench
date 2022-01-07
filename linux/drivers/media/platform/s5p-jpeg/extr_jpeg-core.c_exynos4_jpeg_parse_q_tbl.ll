; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_q_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_q_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.s5p_jpeg* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32*, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.s5p_jpeg = type { i64 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_jpeg_buffer = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @exynos4_jpeg_parse_q_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_jpeg_parse_q_tbl(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.s5p_jpeg_buffer, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %11 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %11, i32 0, i32 2
  %13 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %12, align 8
  store %struct.s5p_jpeg* %13, %struct.s5p_jpeg** %3, align 8
  %14 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %17)
  store %struct.vb2_v4l2_buffer* %18, %struct.vb2_v4l2_buffer** %4, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %115, %1
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %118

27:                                               ; preds = %19
  %28 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %38, i32 0, i32 0
  %40 = call i64 @vb2_plane_vaddr(i32* %39, i32 0)
  %41 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %40, %49
  %51 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 2
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 1
  store i32 0, i32* %52, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %113, %27
  %54 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %55, %57
  %59 = icmp sge i32 %58, 65
  br i1 %59, label %60, label %114

60:                                               ; preds = %53
  %61 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %118

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 15
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %10, align 1
  %69 = load i32, i32* %7, align 4
  %70 = ashr i32 %69, 4
  %71 = and i32 %70, 15
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %118

74:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %110, %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 64
  br i1 %77, label %78, label %113

78:                                               ; preds = %75
  %79 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %118

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = srem i32 %85, 4
  %87 = mul nsw i32 %86, 8
  %88 = shl i32 %84, %87
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = srem i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %83
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %98 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i8, i8* %10, align 1
  %101 = call i64 @EXYNOS4_QTBL_CONTENT(i8 signext %100)
  %102 = add nsw i64 %99, %101
  %103 = load i32, i32* %8, align 4
  %104 = sdiv i32 %103, 4
  %105 = mul nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = call i32 @writel(i32 %96, i64 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %95, %83
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %75

113:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  br label %53

114:                                              ; preds = %53
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %19

118:                                              ; preds = %64, %73, %82, %19
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i64 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @get_byte(%struct.s5p_jpeg_buffer*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @EXYNOS4_QTBL_CONTENT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
