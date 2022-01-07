; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_huff_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_parse_huff_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.s5p_jpeg* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64*, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.s5p_jpeg = type { i64 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_jpeg_buffer = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*)* @exynos4_jpeg_parse_huff_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_jpeg_parse_huff_tbl(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca %struct.s5p_jpeg_ctx*, align 8
  %3 = alloca %struct.s5p_jpeg*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.s5p_jpeg_buffer, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %2, align 8
  %13 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %13, i32 0, i32 2
  %15 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %14, align 8
  store %struct.s5p_jpeg* %15, %struct.s5p_jpeg** %3, align 8
  %16 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %19)
  store %struct.vb2_v4l2_buffer* %20, %struct.vb2_v4l2_buffer** %4, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %178, %1
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %181

29:                                               ; preds = %21
  %30 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %40, i32 0, i32 0
  %42 = call i64 @vb2_plane_vaddr(i32* %41, i32 0)
  %43 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %42, %51
  %53 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 1
  store i64 0, i64* %54, align 8
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %176, %29
  %56 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.s5p_jpeg_buffer, %struct.s5p_jpeg_buffer* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %177

61:                                               ; preds = %55
  %62 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %181

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 15
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %11, align 1
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 4
  %72 = and i32 %71, 15
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %12, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %113, %66
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 16
  br i1 %76, label %77, label %116

77:                                               ; preds = %74
  %78 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %181

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = srem i32 %84, 4
  %86 = mul nsw i32 %85, 8
  %87 = shl i32 %83, %86
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = srem i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %82
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %97 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i8, i8* %12, align 1
  %100 = load i8, i8* %11, align 1
  %101 = call i64 @exynos4_huff_tbl_len(i8 signext %99, i8 signext %100)
  %102 = add nsw i64 %98, %101
  %103 = load i32, i32* %8, align 4
  %104 = sdiv i32 %103, 4
  %105 = mul nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = call i32 @writel(i32 %95, i64 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %94, %82
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %74

116:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %154, %116
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %117
  %122 = call i32 @get_byte(%struct.s5p_jpeg_buffer* %5)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %181

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = srem i32 %128, 4
  %130 = mul nsw i32 %129, 8
  %131 = shl i32 %127, %130
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  %136 = srem i32 %135, 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %126
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %141 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i8, i8* %12, align 1
  %144 = load i8, i8* %11, align 1
  %145 = call i64 @exynos4_huff_tbl_val(i8 signext %143, i8 signext %144)
  %146 = add nsw i64 %142, %145
  %147 = load i32, i32* %8, align 4
  %148 = sdiv i32 %147, 4
  %149 = mul nsw i32 %148, 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %146, %150
  %152 = call i32 @writel(i32 %139, i64 %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %138, %126
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %117

157:                                              ; preds = %117
  %158 = load i32, i32* %8, align 4
  %159 = srem i32 %158, 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %3, align 8
  %164 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i8, i8* %12, align 1
  %167 = load i8, i8* %11, align 1
  %168 = call i64 @exynos4_huff_tbl_val(i8 signext %166, i8 signext %167)
  %169 = add nsw i64 %165, %168
  %170 = load i32, i32* %8, align 4
  %171 = sdiv i32 %170, 4
  %172 = mul nsw i32 %171, 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %169, %173
  %175 = call i32 @writel(i32 %162, i64 %174)
  br label %176

176:                                              ; preds = %161, %157
  store i32 0, i32* %6, align 4
  br label %55

177:                                              ; preds = %55
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %21

181:                                              ; preds = %65, %81, %125, %21
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i64 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @get_byte(%struct.s5p_jpeg_buffer*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @exynos4_huff_tbl_len(i8 signext, i8 signext) #1

declare dso_local i64 @exynos4_huff_tbl_val(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
