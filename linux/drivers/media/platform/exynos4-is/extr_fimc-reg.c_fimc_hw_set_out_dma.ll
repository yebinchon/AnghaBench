; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_out_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_out_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, i32, %struct.fimc_frame, %struct.fimc_dev* }
%struct.fimc_frame = type { %struct.fimc_fmt*, %struct.fimc_dma_offset }
%struct.fimc_fmt = type { i32, i64 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_dev = type { i64 }

@FIMC_REG_CIOYOFF = common dso_local global i64 0, align 8
@FIMC_REG_CIOCBOFF = common dso_local global i64 0, align 8
@FIMC_REG_CIOCROFF = common dso_local global i64 0, align 8
@FIMC_REG_CIOCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CIOCTRL_ORDER2P_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_ORDER422_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_YCBCR_PLANE_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_RGB16FMT_MASK = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_YCBCR_2PLANE = common dso_local global i32 0, align 4
@FIMC_REG_CIOCTRL_YCBCR_3PLANE = common dso_local global i32 0, align 4
@FIMC_FMT_RGB565 = common dso_local global i64 0, align 8
@FIMC_REG_CIOCTRL_RGB565 = common dso_local global i32 0, align 4
@FIMC_FMT_RGB555 = common dso_local global i64 0, align 8
@FIMC_REG_CIOCTRL_ARGB1555 = common dso_local global i32 0, align 4
@FIMC_FMT_RGB444 = common dso_local global i64 0, align 8
@FIMC_REG_CIOCTRL_ARGB4444 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_set_out_dma(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca %struct.fimc_dma_offset*, align 8
  %6 = alloca %struct.fimc_fmt*, align 8
  %7 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %8 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %8, i32 0, i32 3
  %10 = load %struct.fimc_dev*, %struct.fimc_dev** %9, align 8
  store %struct.fimc_dev* %10, %struct.fimc_dev** %3, align 8
  %11 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %11, i32 0, i32 2
  store %struct.fimc_frame* %12, %struct.fimc_frame** %4, align 8
  %13 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %13, i32 0, i32 1
  store %struct.fimc_dma_offset* %14, %struct.fimc_dma_offset** %5, align 8
  %15 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %16 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %15, i32 0, i32 0
  %17 = load %struct.fimc_fmt*, %struct.fimc_fmt** %16, align 8
  store %struct.fimc_fmt* %17, %struct.fimc_fmt** %6, align 8
  %18 = load %struct.fimc_dma_offset*, %struct.fimc_dma_offset** %5, align 8
  %19 = getelementptr inbounds %struct.fimc_dma_offset, %struct.fimc_dma_offset* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = load %struct.fimc_dma_offset*, %struct.fimc_dma_offset** %5, align 8
  %23 = getelementptr inbounds %struct.fimc_dma_offset, %struct.fimc_dma_offset* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %28 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FIMC_REG_CIOYOFF, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.fimc_dma_offset*, %struct.fimc_dma_offset** %5, align 8
  %34 = getelementptr inbounds %struct.fimc_dma_offset, %struct.fimc_dma_offset* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = load %struct.fimc_dma_offset*, %struct.fimc_dma_offset** %5, align 8
  %38 = getelementptr inbounds %struct.fimc_dma_offset, %struct.fimc_dma_offset* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %43 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FIMC_REG_CIOCBOFF, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.fimc_dma_offset*, %struct.fimc_dma_offset** %5, align 8
  %49 = getelementptr inbounds %struct.fimc_dma_offset, %struct.fimc_dma_offset* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = load %struct.fimc_dma_offset*, %struct.fimc_dma_offset** %5, align 8
  %53 = getelementptr inbounds %struct.fimc_dma_offset, %struct.fimc_dma_offset* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %51, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %58 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FIMC_REG_CIOCROFF, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %64 = call i32 @fimc_hw_set_out_dma_size(%struct.fimc_ctx* %63)
  %65 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %66 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FIMC_REG_CIOCTRL, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @FIMC_REG_CIOCTRL_ORDER2P_MASK, align 4
  %72 = load i32, i32* @FIMC_REG_CIOCTRL_ORDER422_MASK, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @FIMC_REG_CIOCTRL_YCBCR_PLANE_MASK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @FIMC_REG_CIOCTRL_RGB16FMT_MASK, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.fimc_fmt*, %struct.fimc_fmt** %6, align 8
  %82 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %1
  %86 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %115

91:                                               ; preds = %1
  %92 = load %struct.fimc_fmt*, %struct.fimc_fmt** %6, align 8
  %93 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %98 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FIMC_REG_CIOCTRL_YCBCR_2PLANE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %114

104:                                              ; preds = %91
  %105 = load %struct.fimc_fmt*, %struct.fimc_fmt** %6, align 8
  %106 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @FIMC_REG_CIOCTRL_YCBCR_3PLANE, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %104
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114, %85
  %116 = load %struct.fimc_fmt*, %struct.fimc_fmt** %6, align 8
  %117 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FIMC_FMT_RGB565, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @FIMC_REG_CIOCTRL_RGB565, align 4
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %147

125:                                              ; preds = %115
  %126 = load %struct.fimc_fmt*, %struct.fimc_fmt** %6, align 8
  %127 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @FIMC_FMT_RGB555, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @FIMC_REG_CIOCTRL_ARGB1555, align 4
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %146

135:                                              ; preds = %125
  %136 = load %struct.fimc_fmt*, %struct.fimc_fmt** %6, align 8
  %137 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @FIMC_FMT_RGB444, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* @FIMC_REG_CIOCTRL_ARGB4444, align 4
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %141, %135
  br label %146

146:                                              ; preds = %145, %131
  br label %147

147:                                              ; preds = %146, %121
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %150 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @FIMC_REG_CIOCTRL, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i32 %148, i64 %153)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @fimc_hw_set_out_dma_size(%struct.fimc_ctx*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
