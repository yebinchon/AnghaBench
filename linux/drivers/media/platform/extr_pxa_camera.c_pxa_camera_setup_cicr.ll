; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_setup_cicr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_setup_cicr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@sensor = common dso_local global i32 0, align 4
@g_skip_top_lines = common dso_local global i32 0, align 4
@PXA_CAMERA_PCLK_EN = common dso_local global i32 0, align 4
@CICR4_PCLK_EN = common dso_local global i32 0, align 4
@PXA_CAMERA_MCLK_EN = common dso_local global i32 0, align 4
@CICR4_MCLK_EN = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@CICR4_PCP = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@CICR4_HSP = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@CICR4_VSP = common dso_local global i32 0, align 4
@CICR0 = common dso_local global i64 0, align 8
@CICR0_ENB = common dso_local global i32 0, align 4
@CICR1_YCBCR_F = common dso_local global i32 0, align 4
@CICR1_TBIT = common dso_local global i32 0, align 4
@CICR1 = common dso_local global i64 0, align 8
@CICR2 = common dso_local global i64 0, align 8
@CICR3 = common dso_local global i64 0, align 8
@CICR4 = common dso_local global i64 0, align 8
@PXA_CAMERA_MASTER = common dso_local global i32 0, align 4
@CICR0_SIM_MP = common dso_local global i32 0, align 4
@CICR0_SL_CAP_EN = common dso_local global i32 0, align 4
@CICR0_SIM_SP = common dso_local global i32 0, align 4
@CICR0_DMAEN = common dso_local global i32 0, align 4
@CICR0_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_camera_dev*, i64, i32)* @pxa_camera_setup_cicr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_camera_setup_cicr(%struct.pxa_camera_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_camera_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %17 = load i32, i32* @sensor, align 4
  %18 = load i32, i32* @g_skip_top_lines, align 4
  %19 = call i32 @sensor_call(%struct.pxa_camera_dev* %16, i32 %17, i32 %18, i32* %14)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %24, i32 0, i32 5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %33 [
    i32 10, label %31
    i32 9, label %32
    i32 8, label %34
  ]

31:                                               ; preds = %23
  store i64 4, i64* %7, align 8
  store i64 64, i64* %8, align 8
  br label %35

32:                                               ; preds = %23
  store i64 3, i64* %7, align 8
  store i64 32, i64* %8, align 8
  br label %35

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %23, %33
  store i64 2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %34, %32, %31
  %36 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PXA_CAMERA_PCLK_EN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @CICR4_PCLK_EN, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PXA_CAMERA_MCLK_EN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @CICR4_MCLK_EN, align 4
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @CICR4_PCP, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @CICR4_HSP, align 4
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @CICR4_VSP, align 4
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CICR0, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @__raw_readl(i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @CICR0_ENB, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @CICR0_ENB, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CICR0, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @__raw_writel(i32 %99, i64 %104)
  br label %106

106:                                              ; preds = %95, %84
  %107 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = call i64 @CICR1_PPL_VAL(i64 %111)
  %113 = load i64, i64* %8, align 8
  %114 = or i64 %112, %113
  %115 = load i64, i64* %7, align 8
  %116 = or i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %6, align 4
  switch i32 %118, label %145 [
    i32 130, label %119
    i32 132, label %125
    i32 131, label %125
    i32 129, label %125
    i32 128, label %125
    i32 134, label %129
    i32 133, label %139
  ]

119:                                              ; preds = %106
  %120 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %121 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %120, i32 0, i32 1
  store i32 3, i32* %121, align 4
  %122 = load i32, i32* @CICR1_YCBCR_F, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %106, %106, %106, %106, %119
  %126 = call i32 @CICR1_COLOR_SP_VAL(i32 2)
  %127 = load i32, i32* %10, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %10, align 4
  br label %145

129:                                              ; preds = %106
  %130 = call i32 @CICR1_RGB_BPP_VAL(i32 1)
  %131 = call i32 @CICR1_RGBT_CONV_VAL(i32 2)
  %132 = or i32 %130, %131
  %133 = load i32, i32* @CICR1_TBIT, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @CICR1_COLOR_SP_VAL(i32 1)
  %136 = or i32 %134, %135
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %145

139:                                              ; preds = %106
  %140 = call i32 @CICR1_COLOR_SP_VAL(i32 1)
  %141 = call i32 @CICR1_RGB_BPP_VAL(i32 2)
  %142 = or i32 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %106, %139, %129, %125
  store i32 0, i32* %11, align 4
  %146 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %147 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %149, 1
  %151 = call i32 @CICR3_LPF_VAL(i64 %150)
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @min(i32 255, i32 %152)
  %154 = call i32 @CICR3_BFW_VAL(i32 %153)
  %155 = or i32 %151, %154
  store i32 %155, i32* %12, align 4
  %156 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %163 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CICR1, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @__raw_writel(i32 %161, i64 %166)
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %170 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CICR2, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @__raw_writel(i32 %168, i64 %173)
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CICR3, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @__raw_writel(i32 %175, i64 %180)
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %184 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CICR4, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @__raw_writel(i32 %182, i64 %187)
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @CICR0_ENB, align 4
  %191 = and i32 %189, %190
  %192 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %193 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @PXA_CAMERA_MASTER, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %145
  %199 = load i32, i32* @CICR0_SIM_MP, align 4
  br label %204

200:                                              ; preds = %145
  %201 = load i32, i32* @CICR0_SL_CAP_EN, align 4
  %202 = load i32, i32* @CICR0_SIM_SP, align 4
  %203 = or i32 %201, %202
  br label %204

204:                                              ; preds = %200, %198
  %205 = phi i32 [ %199, %198 ], [ %203, %200 ]
  %206 = or i32 %191, %205
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* @CICR0_DMAEN, align 4
  %208 = load i32, i32* @CICR0_IRQ_MASK, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* %9, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %214 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @CICR0, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @__raw_writel(i32 %212, i64 %217)
  ret void
}

declare dso_local i32 @sensor_call(%struct.pxa_camera_dev*, i32, i32, i32*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @CICR1_PPL_VAL(i64) #1

declare dso_local i32 @CICR1_COLOR_SP_VAL(i32) #1

declare dso_local i32 @CICR1_RGB_BPP_VAL(i32) #1

declare dso_local i32 @CICR1_RGBT_CONV_VAL(i32) #1

declare dso_local i32 @CICR3_LPF_VAL(i64) #1

declare dso_local i32 @CICR3_BFW_VAL(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
