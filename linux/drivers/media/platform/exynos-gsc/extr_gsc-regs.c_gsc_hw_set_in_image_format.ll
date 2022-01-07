; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_in_image_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_in_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_dev* }
%struct.gsc_frame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i64*, i32 }
%struct.gsc_dev = type { i64 }

@GSC_IN_CON = common dso_local global i64 0, align 8
@GSC_IN_RGB_TYPE_MASK = common dso_local global i64 0, align 8
@GSC_IN_YUV422_1P_ORDER_MASK = common dso_local global i64 0, align 8
@GSC_IN_CHROMA_ORDER_MASK = common dso_local global i64 0, align 8
@GSC_IN_FORMAT_MASK = common dso_local global i64 0, align 8
@GSC_IN_TILE_TYPE_MASK = common dso_local global i64 0, align 8
@GSC_IN_TILE_MODE = common dso_local global i64 0, align 8
@GSC_IN_YUV422_1P = common dso_local global i64 0, align 8
@GSC_LSB_Y = common dso_local global i32 0, align 4
@GSC_IN_YUV422_1P_ORDER_LSB_Y = common dso_local global i64 0, align 8
@GSC_IN_YUV422_1P_OEDER_LSB_C = common dso_local global i64 0, align 8
@GSC_CBCR = common dso_local global i32 0, align 4
@GSC_IN_CHROMA_ORDER_CBCR = common dso_local global i64 0, align 8
@GSC_IN_CHROMA_ORDER_CRCB = common dso_local global i64 0, align 8
@GSC_IN_YUV420_2P = common dso_local global i64 0, align 8
@GSC_IN_YUV422_2P = common dso_local global i64 0, align 8
@GSC_IN_YUV420_3P = common dso_local global i64 0, align 8
@GSC_IN_YUV422_3P = common dso_local global i64 0, align 8
@GSC_IN_TILE_C_16x8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_in_image_format(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca %struct.gsc_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %8 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %8, i32 0, i32 1
  %10 = load %struct.gsc_dev*, %struct.gsc_dev** %9, align 8
  store %struct.gsc_dev* %10, %struct.gsc_dev** %3, align 8
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %11, i32 0, i32 0
  store %struct.gsc_frame* %12, %struct.gsc_frame** %4, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %14 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GSC_IN_CON, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @readl(i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @GSC_IN_RGB_TYPE_MASK, align 8
  %20 = load i64, i64* @GSC_IN_YUV422_1P_ORDER_MASK, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @GSC_IN_CHROMA_ORDER_MASK, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @GSC_IN_FORMAT_MASK, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @GSC_IN_TILE_TYPE_MASK, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @GSC_IN_TILE_MODE, align 8
  %29 = or i64 %27, %28
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @GSC_IN_CON, align 8
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
  %49 = call i32 @gsc_hw_set_in_image_rgb(%struct.gsc_ctx* %48)
  br label %175

50:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %54 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %52, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %61 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %51

73:                                               ; preds = %51
  %74 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %75 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %155 [
    i32 1, label %79
    i32 2, label %115
    i32 3, label %143
  ]

79:                                               ; preds = %73
  %80 = load i64, i64* @GSC_IN_YUV422_1P, align 8
  %81 = load i64, i64* %7, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %84 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GSC_LSB_Y, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load i64, i64* @GSC_IN_YUV422_1P_ORDER_LSB_Y, align 8
  %92 = load i64, i64* %7, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %98

94:                                               ; preds = %79
  %95 = load i64, i64* @GSC_IN_YUV422_1P_OEDER_LSB_C, align 8
  %96 = load i64, i64* %7, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %100 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GSC_CBCR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i64, i64* @GSC_IN_CHROMA_ORDER_CBCR, align 8
  %108 = load i64, i64* %7, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %7, align 8
  br label %114

110:                                              ; preds = %98
  %111 = load i64, i64* @GSC_IN_CHROMA_ORDER_CRCB, align 8
  %112 = load i64, i64* %7, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %155

115:                                              ; preds = %73
  %116 = load i64, i64* %6, align 8
  %117 = icmp eq i64 %116, 12
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i64, i64* @GSC_IN_YUV420_2P, align 8
  %120 = load i64, i64* %7, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %7, align 8
  br label %126

122:                                              ; preds = %115
  %123 = load i64, i64* @GSC_IN_YUV422_2P, align 8
  %124 = load i64, i64* %7, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %122, %118
  %127 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %128 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @GSC_CBCR, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i64, i64* @GSC_IN_CHROMA_ORDER_CBCR, align 8
  %136 = load i64, i64* %7, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %7, align 8
  br label %142

138:                                              ; preds = %126
  %139 = load i64, i64* @GSC_IN_CHROMA_ORDER_CRCB, align 8
  %140 = load i64, i64* %7, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %7, align 8
  br label %142

142:                                              ; preds = %138, %134
  br label %155

143:                                              ; preds = %73
  %144 = load i64, i64* %6, align 8
  %145 = icmp eq i64 %144, 12
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i64, i64* @GSC_IN_YUV420_3P, align 8
  %148 = load i64, i64* %7, align 8
  %149 = or i64 %148, %147
  store i64 %149, i64* %7, align 8
  br label %154

150:                                              ; preds = %143
  %151 = load i64, i64* @GSC_IN_YUV422_3P, align 8
  %152 = load i64, i64* %7, align 8
  %153 = or i64 %152, %151
  store i64 %153, i64* %7, align 8
  br label %154

154:                                              ; preds = %150, %146
  br label %155

155:                                              ; preds = %73, %154, %142, %114
  %156 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %157 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = call i64 @is_tiled(%struct.TYPE_2__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i64, i64* @GSC_IN_TILE_C_16x8, align 8
  %163 = load i64, i64* @GSC_IN_TILE_MODE, align 8
  %164 = or i64 %162, %163
  %165 = load i64, i64* %7, align 8
  %166 = or i64 %165, %164
  store i64 %166, i64* %7, align 8
  br label %167

167:                                              ; preds = %161, %155
  %168 = load i64, i64* %7, align 8
  %169 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %170 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @GSC_IN_CON, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @writel(i64 %168, i64 %173)
  br label %175

175:                                              ; preds = %167, %47
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @is_rgb(i32) #1

declare dso_local i32 @gsc_hw_set_in_image_rgb(%struct.gsc_ctx*) #1

declare dso_local i64 @is_tiled(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
