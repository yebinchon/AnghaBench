; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_calc_dst_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_hw.c_mtk_jpeg_calc_dst_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_dec_param = type { i64, i64, i32, i32*, i64*, i64*, i32*, i64, i64, i64, i64*, i64*, i64, i64, i64 }

@MTK_JPEG_DCTSIZE = common dso_local global i32 0, align 4
@MTK_JPEG_COMP_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_jpeg_dec_param*)* @mtk_jpeg_calc_dst_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_calc_dst_size(%struct.mtk_jpeg_dec_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca [3 x i64], align 16
  store %struct.mtk_jpeg_dec_param* %0, %struct.mtk_jpeg_dec_param** %3, align 8
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %8, align 16
  %9 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  store i64 %14, i64* %15, align 16
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %103, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %185

28:                                               ; preds = %22
  %29 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MTK_JPEG_DCTSIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %35 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %33, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = lshr i64 %42, %45
  %47 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %48 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %46, i64* %51, align 8
  %52 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %53 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %52, i32 0, i32 4
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @MTK_JPEG_DCTSIZE, align 4
  %59 = call i8* @mtk_jpeg_align(i64 %57, i32 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %62 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %61, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %60, i64* %65, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %28
  %69 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %70 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %69, i32 0, i32 4
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @mtk_jpeg_align(i64 %74, i32 16)
  br label %84

76:                                               ; preds = %28
  %77 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %78 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %77, i32 0, i32 4
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @mtk_jpeg_align(i64 %82, i32 32)
  br label %84

84:                                               ; preds = %76, %68
  %85 = phi i8* [ %75, %68 ], [ %83, %76 ]
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %88 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %87, i32 0, i32 5
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %86, i64* %91, align 8
  %92 = load i32, i32* @MTK_JPEG_DCTSIZE, align 4
  %93 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %94 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %92, %98
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %101
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %84
  %104 = load i64, i64* %4, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %4, align 8
  br label %16

106:                                              ; preds = %16
  %107 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %108 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %107, i32 0, i32 5
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %113 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %112, i32 0, i32 7
  store i64 %111, i64* %113, align 8
  %114 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %115 = load i64, i64* %114, align 16
  %116 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %117 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %116, i32 0, i32 9
  %118 = load i64, i64* %117, align 8
  %119 = mul i64 %115, %118
  %120 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %121 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %120, i32 0, i32 8
  store i64 %119, i64* %121, align 8
  store i64 0, i64* %4, align 8
  br label %122

122:                                              ; preds = %157, %106
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @MTK_JPEG_COMP_MAX, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %122
  %127 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %128 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %127, i32 0, i32 5
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %4, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %134 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %133, i32 0, i32 10
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  store i64 %132, i64* %137, align 8
  %138 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %139 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %138, i32 0, i32 10
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* %4, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %4, align 8
  %145 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = mul i64 %143, %146
  %148 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %149 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = mul i64 %147, %150
  %152 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %153 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %152, i32 0, i32 11
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %4, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  store i64 %151, i64* %156, align 8
  br label %157

157:                                              ; preds = %126
  %158 = load i64, i64* %4, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %4, align 8
  br label %122

160:                                              ; preds = %122
  %161 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %162 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %161, i32 0, i32 11
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %167 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %166, i32 0, i32 12
  store i64 %165, i64* %167, align 8
  %168 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %169 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %168, i32 0, i32 11
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %174 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %173, i32 0, i32 13
  store i64 %172, i64* %174, align 8
  %175 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %176 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %175, i32 0, i32 12
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %179 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %178, i32 0, i32 13
  %180 = load i64, i64* %179, align 8
  %181 = shl i64 %180, 1
  %182 = add i64 %177, %181
  %183 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %3, align 8
  %184 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %183, i32 0, i32 14
  store i64 %182, i64* %184, align 8
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %160, %27
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i8* @mtk_jpeg_align(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
