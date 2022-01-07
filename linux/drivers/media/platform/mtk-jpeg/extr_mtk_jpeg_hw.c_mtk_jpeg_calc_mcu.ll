; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_calc_mcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_calc_mcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_dec_param = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }

@MTK_JPEG_COMP_MAX = common dso_local global i32 0, align 4
@MTK_JPEG_BLOCK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_jpeg_dec_param*)* @mtk_jpeg_calc_mcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_jpeg_calc_mcu(%struct.mtk_jpeg_dec_param* %0) #0 {
  %2 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_jpeg_dec_param* %0, %struct.mtk_jpeg_dec_param** %2, align 8
  %9 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 2, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %16 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 2, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %22 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 1, %24
  %26 = add nsw i32 %23, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %27, %28
  %30 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %33 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 1, %35
  %37 = add nsw i32 %34, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %38, %39
  %41 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %42 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %44 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %47 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %51 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %53 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 7
  %56 = ashr i32 %55, 3
  %57 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %58 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 7
  %61 = ashr i32 %60, 3
  %62 = mul nsw i32 %56, %61
  %63 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %64 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %66 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %65, i32 0, i32 8
  store i32 0, i32* %66, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %117, %1
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @MTK_JPEG_COMP_MAX, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %120

71:                                               ; preds = %67
  %72 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %73 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %80 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %117

84:                                               ; preds = %71
  %85 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %86 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %93 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %91, %98
  %100 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %101 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %100, i32 0, i32 9
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %107 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %106, i32 0, i32 9
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %114 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %84, %83
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %67

120:                                              ; preds = %67
  %121 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %122 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %121, i32 0, i32 11
  store i32 0, i32* %122, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %174, %120
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @MTK_JPEG_BLOCK_MAX, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %177

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %130 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %136 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %133
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 3
  %142 = add nsw i32 4, %141
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %5, align 4
  %145 = mul nsw i32 %144, 3
  %146 = shl i32 %143, %145
  %147 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %148 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  %153 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %154 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %153, i32 0, i32 9
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %152, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %139
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %139
  br label %173

165:                                              ; preds = %133, %127
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 %166, 3
  %168 = shl i32 7, %167
  %169 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %2, align 8
  %170 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %165, %164
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %123

177:                                              ; preds = %123
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
