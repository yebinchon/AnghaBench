; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_out_image_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_out_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i64, %struct.gsc_frame, %struct.gsc_dev* }
%struct.gsc_frame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i64*, i32 }
%struct.gsc_dev = type { i64 }

@GSC_OUT_CON = common dso_local global i64 0, align 8
@GSC_OUT_RGB_TYPE_MASK = common dso_local global i64 0, align 8
@GSC_OUT_YUV422_1P_ORDER_MASK = common dso_local global i64 0, align 8
@GSC_OUT_CHROMA_ORDER_MASK = common dso_local global i64 0, align 8
@GSC_OUT_FORMAT_MASK = common dso_local global i64 0, align 8
@GSC_OUT_TILE_TYPE_MASK = common dso_local global i64 0, align 8
@GSC_OUT_TILE_MODE = common dso_local global i64 0, align 8
@GSC_DMA = common dso_local global i64 0, align 8
@GSC_OUT_YUV444 = common dso_local global i64 0, align 8
@GSC_OUT_YUV422_1P = common dso_local global i64 0, align 8
@GSC_LSB_Y = common dso_local global i32 0, align 4
@GSC_OUT_YUV422_1P_ORDER_LSB_Y = common dso_local global i64 0, align 8
@GSC_OUT_YUV422_1P_OEDER_LSB_C = common dso_local global i64 0, align 8
@GSC_CBCR = common dso_local global i32 0, align 4
@GSC_OUT_CHROMA_ORDER_CBCR = common dso_local global i64 0, align 8
@GSC_OUT_CHROMA_ORDER_CRCB = common dso_local global i64 0, align 8
@GSC_OUT_YUV420_2P = common dso_local global i64 0, align 8
@GSC_OUT_YUV422_2P = common dso_local global i64 0, align 8
@GSC_OUT_YUV420_3P = common dso_local global i64 0, align 8
@GSC_OUT_TILE_C_16x8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_out_image_format(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca %struct.gsc_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %8 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %8, i32 0, i32 2
  %10 = load %struct.gsc_dev*, %struct.gsc_dev** %9, align 8
  store %struct.gsc_dev* %10, %struct.gsc_dev** %3, align 8
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %11, i32 0, i32 1
  store %struct.gsc_frame* %12, %struct.gsc_frame** %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %14 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GSC_OUT_CON, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @readl(i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @GSC_OUT_RGB_TYPE_MASK, align 8
  %20 = load i64, i64* @GSC_OUT_YUV422_1P_ORDER_MASK, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @GSC_OUT_CHROMA_ORDER_MASK, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @GSC_OUT_FORMAT_MASK, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @GSC_OUT_TILE_TYPE_MASK, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @GSC_OUT_TILE_MODE, align 8
  %29 = or i64 %27, %28
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GSC_OUT_CON, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i64 %33, i64 %38)
  %40 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %41 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @is_rgb(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %49 = call i32 @gsc_hw_set_out_image_rgb(%struct.gsc_ctx* %48)
  br label %178

50:                                               ; preds = %1
  %51 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GSC_DMA, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* @GSC_OUT_YUV444, align 8
  %58 = load i64, i64* %7, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %170

60:                                               ; preds = %50
  store i64 0, i64* %5, align 8
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %64 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %71 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %69
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %61

83:                                               ; preds = %61
  %84 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %85 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %157 [
    i32 1, label %89
    i32 2, label %125
    i32 3, label %153
  ]

89:                                               ; preds = %83
  %90 = load i64, i64* @GSC_OUT_YUV422_1P, align 8
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %94 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @GSC_LSB_Y, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load i64, i64* @GSC_OUT_YUV422_1P_ORDER_LSB_Y, align 8
  %102 = load i64, i64* %7, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %7, align 8
  br label %108

104:                                              ; preds = %89
  %105 = load i64, i64* @GSC_OUT_YUV422_1P_OEDER_LSB_C, align 8
  %106 = load i64, i64* %7, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %110 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @GSC_CBCR, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load i64, i64* @GSC_OUT_CHROMA_ORDER_CBCR, align 8
  %118 = load i64, i64* %7, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %7, align 8
  br label %124

120:                                              ; preds = %108
  %121 = load i64, i64* @GSC_OUT_CHROMA_ORDER_CRCB, align 8
  %122 = load i64, i64* %7, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %7, align 8
  br label %124

124:                                              ; preds = %120, %116
  br label %157

125:                                              ; preds = %83
  %126 = load i64, i64* %6, align 8
  %127 = icmp eq i64 %126, 12
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i64, i64* @GSC_OUT_YUV420_2P, align 8
  %130 = load i64, i64* %7, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %7, align 8
  br label %136

132:                                              ; preds = %125
  %133 = load i64, i64* @GSC_OUT_YUV422_2P, align 8
  %134 = load i64, i64* %7, align 8
  %135 = or i64 %134, %133
  store i64 %135, i64* %7, align 8
  br label %136

136:                                              ; preds = %132, %128
  %137 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %138 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @GSC_CBCR, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i64, i64* @GSC_OUT_CHROMA_ORDER_CBCR, align 8
  %146 = load i64, i64* %7, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %7, align 8
  br label %152

148:                                              ; preds = %136
  %149 = load i64, i64* @GSC_OUT_CHROMA_ORDER_CRCB, align 8
  %150 = load i64, i64* %7, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %148, %144
  br label %157

153:                                              ; preds = %83
  %154 = load i64, i64* @GSC_OUT_YUV420_3P, align 8
  %155 = load i64, i64* %7, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %7, align 8
  br label %157

157:                                              ; preds = %83, %153, %152, %124
  %158 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %159 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = call i64 @is_tiled(%struct.TYPE_2__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i64, i64* @GSC_OUT_TILE_C_16x8, align 8
  %165 = load i64, i64* @GSC_OUT_TILE_MODE, align 8
  %166 = or i64 %164, %165
  %167 = load i64, i64* %7, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %7, align 8
  br label %169

169:                                              ; preds = %163, %157
  br label %170

170:                                              ; preds = %169, %56
  %171 = load i64, i64* %7, align 8
  %172 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %173 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @GSC_OUT_CON, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @writel(i64 %171, i64 %176)
  br label %178

178:                                              ; preds = %170, %47
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @is_rgb(i32) #1

declare dso_local i32 @gsc_hw_set_out_image_rgb(%struct.gsc_ctx*) #1

declare dso_local i64 @is_tiled(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
