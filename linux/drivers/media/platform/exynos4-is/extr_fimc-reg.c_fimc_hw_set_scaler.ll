; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_set_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { i32, i64, i64, %struct.fimc_frame, %struct.fimc_frame, %struct.fimc_scaler, %struct.fimc_dev* }
%struct.fimc_frame = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fimc_scaler = type { i64, i64, i64, i32 }
%struct.fimc_dev = type { i64 }

@FIMC_REG_CISCCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_CSCR2Y_WIDE = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_CSCY2R_WIDE = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_SCALEUP_H = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_SCALEUP_V = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_SCALERBYPASS = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_ONE2ONE = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_INRGB_FMT_MASK = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_OUTRGB_FMT_MASK = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_INTERLACE = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_RGB_EXT = common dso_local global i64 0, align 8
@FIMC_COLOR_RANGE_NARROW = common dso_local global i32 0, align 4
@FIMC_IO_DMA = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_INRGB_FMT_RGB565 = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_INRGB_FMT_RGB666 = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_INRGB_FMT_RGB888 = common dso_local global i64 0, align 8
@FIMC_FMT_RGB444 = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_OUTRGB_FMT_RGB565 = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_OUTRGB_FMT_RGB666 = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_OUTRGB_FMT_RGB888 = common dso_local global i64 0, align 8
@FIMC_SCAN_MODE_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_ctx*)* @fimc_hw_set_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_hw_set_scaler(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.fimc_scaler*, align 8
  %5 = alloca %struct.fimc_frame*, align 8
  %6 = alloca %struct.fimc_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %9 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %9, i32 0, i32 6
  %11 = load %struct.fimc_dev*, %struct.fimc_dev** %10, align 8
  store %struct.fimc_dev* %11, %struct.fimc_dev** %3, align 8
  %12 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %12, i32 0, i32 5
  store %struct.fimc_scaler* %13, %struct.fimc_scaler** %4, align 8
  %14 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %14, i32 0, i32 4
  store %struct.fimc_frame* %15, %struct.fimc_frame** %5, align 8
  %16 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %16, i32 0, i32 3
  store %struct.fimc_frame* %17, %struct.fimc_frame** %6, align 8
  %18 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %19 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FIMC_REG_CISCCTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @FIMC_REG_CISCCTRL_CSCR2Y_WIDE, align 8
  %25 = load i64, i64* @FIMC_REG_CISCCTRL_CSCY2R_WIDE, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @FIMC_REG_CISCCTRL_SCALEUP_H, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @FIMC_REG_CISCCTRL_SCALEUP_V, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @FIMC_REG_CISCCTRL_SCALERBYPASS, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @FIMC_REG_CISCCTRL_ONE2ONE, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @FIMC_REG_CISCCTRL_INRGB_FMT_MASK, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @FIMC_REG_CISCCTRL_OUTRGB_FMT_MASK, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @FIMC_REG_CISCCTRL_INTERLACE, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* @FIMC_REG_CISCCTRL_RGB_EXT, align 8
  %42 = or i64 %40, %41
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FIMC_COLOR_RANGE_NARROW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %1
  %53 = load i64, i64* @FIMC_REG_CISCCTRL_CSCR2Y_WIDE, align 8
  %54 = load i64, i64* @FIMC_REG_CISCCTRL_CSCY2R_WIDE, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %52, %1
  %59 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %60 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* @FIMC_REG_CISCCTRL_SCALERBYPASS, align 8
  %65 = load i64, i64* %7, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %69 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i64, i64* @FIMC_REG_CISCCTRL_SCALEUP_H, align 8
  %74 = load i64, i64* %7, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %78 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i64, i64* @FIMC_REG_CISCCTRL_SCALEUP_V, align 8
  %83 = load i64, i64* %7, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.fimc_scaler*, %struct.fimc_scaler** %4, align 8
  %87 = getelementptr inbounds %struct.fimc_scaler, %struct.fimc_scaler* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i64, i64* @FIMC_REG_CISCCTRL_ONE2ONE, align 8
  %92 = load i64, i64* %7, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %96 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @FIMC_IO_DMA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.fimc_frame*, %struct.fimc_frame** %5, align 8
  %102 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %118 [
    i32 130, label %106
    i32 129, label %110
    i32 128, label %114
  ]

106:                                              ; preds = %100
  %107 = load i64, i64* @FIMC_REG_CISCCTRL_INRGB_FMT_RGB565, align 8
  %108 = load i64, i64* %7, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %7, align 8
  br label %118

110:                                              ; preds = %100
  %111 = load i64, i64* @FIMC_REG_CISCCTRL_INRGB_FMT_RGB666, align 8
  %112 = load i64, i64* %7, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %7, align 8
  br label %118

114:                                              ; preds = %100
  %115 = load i64, i64* @FIMC_REG_CISCCTRL_INRGB_FMT_RGB888, align 8
  %116 = load i64, i64* %7, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %100, %114, %110, %106
  br label %119

119:                                              ; preds = %118, %94
  %120 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %121 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @FIMC_IO_DMA, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %119
  %126 = load %struct.fimc_frame*, %struct.fimc_frame** %6, align 8
  %127 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @FIMC_FMT_RGB444, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %125
  %136 = load i64, i64* %8, align 8
  %137 = icmp sle i64 %136, 130
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i64, i64* @FIMC_REG_CISCCTRL_OUTRGB_FMT_RGB565, align 8
  %140 = load i64, i64* %7, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %7, align 8
  br label %158

142:                                              ; preds = %135, %125
  %143 = load i64, i64* %8, align 8
  %144 = icmp eq i64 %143, 129
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i64, i64* @FIMC_REG_CISCCTRL_OUTRGB_FMT_RGB666, align 8
  %147 = load i64, i64* %7, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %7, align 8
  br label %157

149:                                              ; preds = %142
  %150 = load i64, i64* %8, align 8
  %151 = icmp eq i64 %150, 128
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i64, i64* @FIMC_REG_CISCCTRL_OUTRGB_FMT_RGB888, align 8
  %154 = load i64, i64* %7, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %152, %149
  br label %157

157:                                              ; preds = %156, %145
  br label %158

158:                                              ; preds = %157, %138
  br label %174

159:                                              ; preds = %119
  %160 = load i64, i64* @FIMC_REG_CISCCTRL_OUTRGB_FMT_RGB888, align 8
  %161 = load i64, i64* %7, align 8
  %162 = or i64 %161, %160
  store i64 %162, i64* %7, align 8
  %163 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %164 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @FIMC_SCAN_MODE_INTERLACED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = load i64, i64* @FIMC_REG_CISCCTRL_INTERLACE, align 8
  %171 = load i64, i64* %7, align 8
  %172 = or i64 %171, %170
  store i64 %172, i64* %7, align 8
  br label %173

173:                                              ; preds = %169, %159
  br label %174

174:                                              ; preds = %173, %158
  %175 = load i64, i64* %7, align 8
  %176 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %177 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @FIMC_REG_CISCCTRL, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel(i64 %175, i64 %180)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
