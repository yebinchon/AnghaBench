; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_configure_vidout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_configure_vidout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, %struct.tda1997x_platform_data, %struct.v4l2_subdev }
%struct.tda1997x_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@OF_FMT_422_CCIR = common dso_local global i32 0, align 4
@PCLK_SEL_X2 = common dso_local global i32 0, align 4
@PCLK_SEL_X1 = common dso_local global i32 0, align 4
@PCLK_DELAY_SHIFT = common dso_local global i32 0, align 4
@PCLK_INV_SHIFT = common dso_local global i32 0, align 4
@REG_PCLK = common dso_local global i32 0, align 4
@OF_FMT_422_SMPT = common dso_local global i32 0, align 4
@FILTERS_CTRL_2_7TAP = common dso_local global i32 0, align 4
@FILTERS_CTRL_BU_SHIFT = common dso_local global i32 0, align 4
@FILTERS_CTRL_RV_SHIFT = common dso_local global i32 0, align 4
@REG_FILTERS_CTRL = common dso_local global i32 0, align 4
@OF_FMT_MASK = common dso_local global i32 0, align 4
@OF_BLK = common dso_local global i32 0, align 4
@OF_TRC = common dso_local global i32 0, align 4
@OF_VP_ENABLE = common dso_local global i32 0, align 4
@REG_OF = common dso_local global i32 0, align 4
@REG_VDP_CTRL = common dso_local global i32 0, align 4
@VDP_CTRL_PREFILTER_BP = common dso_local global i32 0, align 4
@OF_FMT_444 = common dso_local global i32 0, align 4
@VDP_CTRL_FORMATTER_BP = common dso_local global i32 0, align 4
@VDP_CTRL_COMPDEL_BP = common dso_local global i32 0, align 4
@DE_FREF_DELAY_SHIFT = common dso_local global i32 0, align 4
@DE_FREF_INV_SHIFT = common dso_local global i32 0, align 4
@DE_FREF_SEL_SHIFT = common dso_local global i32 0, align 4
@REG_DE_FREF = common dso_local global i32 0, align 4
@HS_HREF_DELAY_SHIFT = common dso_local global i32 0, align 4
@HS_HREF_INV_SHIFT = common dso_local global i32 0, align 4
@HS_HREF_SEL_SHIFT = common dso_local global i32 0, align 4
@HS_HREF_SEL_NONE = common dso_local global i32 0, align 4
@REG_HS_HREF = common dso_local global i32 0, align 4
@VS_VREF_DELAY_SHIFT = common dso_local global i32 0, align 4
@VS_VREF_INV_SHIFT = common dso_local global i32 0, align 4
@VS_VREF_SEL_SHIFT = common dso_local global i32 0, align 4
@VS_VREF_SEL_NONE = common dso_local global i32 0, align 4
@REG_VS_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda1997x_state*)* @tda1997x_configure_vidout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_configure_vidout(%struct.tda1997x_state* %0) #0 {
  %2 = alloca %struct.tda1997x_state*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.tda1997x_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %2, align 8
  %7 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %8 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %7, i32 0, i32 2
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %10 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %9, i32 0, i32 1
  store %struct.tda1997x_platform_data* %10, %struct.tda1997x_platform_data** %4, align 8
  %11 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %12 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OF_FMT_422_CCIR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @PCLK_SEL_X2, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @PCLK_SEL_X1, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %6, align 4
  %22 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCLK_DELAY_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCLK_INV_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = load i32, i32* @REG_PCLK, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @io_write(%struct.v4l2_subdev* %36, i32 %37, i32 %38)
  store i32 0, i32* %5, align 4
  %40 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %41 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OF_FMT_422_SMPT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %20
  %46 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %47 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OF_FMT_422_CCIR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45, %20
  %52 = load i32, i32* @FILTERS_CTRL_2_7TAP, align 4
  %53 = load i32, i32* @FILTERS_CTRL_BU_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* @FILTERS_CTRL_2_7TAP, align 4
  %56 = load i32, i32* @FILTERS_CTRL_RV_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %54, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %45
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %61 = load i32, i32* @REG_FILTERS_CTRL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @io_write(%struct.v4l2_subdev* %60, i32 %61, i32 %62)
  %64 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %65 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OF_FMT_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %70 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @OF_FMT_422_CCIR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %59
  %75 = load i32, i32* @OF_BLK, align 4
  %76 = load i32, i32* @OF_TRC, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %74, %59
  %81 = load i32, i32* @OF_VP_ENABLE, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %85 = load i32, i32* @REG_OF, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @io_write(%struct.v4l2_subdev* %84, i32 %85, i32 %86)
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %89 = load i32, i32* @REG_VDP_CTRL, align 4
  %90 = call i32 @io_read(%struct.v4l2_subdev* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* @VDP_CTRL_PREFILTER_BP, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %80
  %98 = load i32, i32* @VDP_CTRL_PREFILTER_BP, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %93
  %103 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %104 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @OF_FMT_444, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @VDP_CTRL_FORMATTER_BP, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %119

112:                                              ; preds = %102
  %113 = load i32, i32* @VDP_CTRL_FORMATTER_BP, align 4
  %114 = load i32, i32* @VDP_CTRL_COMPDEL_BP, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %112, %108
  %120 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %121 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %126 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %134

129:                                              ; preds = %124, %119
  %130 = load i32, i32* @VDP_CTRL_COMPDEL_BP, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %136 = load i32, i32* @REG_VDP_CTRL, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @io_write(%struct.v4l2_subdev* %135, i32 %136, i32 %137)
  %139 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %140 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DE_FREF_DELAY_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %145 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DE_FREF_INV_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = or i32 %143, %148
  %150 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %151 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @DE_FREF_SEL_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = or i32 %149, %154
  store i32 %155, i32* %6, align 4
  %156 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %157 = load i32, i32* @REG_DE_FREF, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @io_write(%struct.v4l2_subdev* %156, i32 %157, i32 %158)
  %160 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %161 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @OF_FMT_422_CCIR, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %183

165:                                              ; preds = %134
  %166 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %167 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @HS_HREF_DELAY_SHIFT, align 4
  %170 = shl i32 %168, %169
  %171 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %172 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @HS_HREF_INV_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = or i32 %170, %175
  %177 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %178 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @HS_HREF_SEL_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = or i32 %176, %181
  store i32 %182, i32* %6, align 4
  br label %187

183:                                              ; preds = %134
  %184 = load i32, i32* @HS_HREF_SEL_NONE, align 4
  %185 = load i32, i32* @HS_HREF_SEL_SHIFT, align 4
  %186 = shl i32 %184, %185
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %183, %165
  %188 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %189 = load i32, i32* @REG_HS_HREF, align 4
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @io_write(%struct.v4l2_subdev* %188, i32 %189, i32 %190)
  %192 = load %struct.tda1997x_state*, %struct.tda1997x_state** %2, align 8
  %193 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @OF_FMT_422_CCIR, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %187
  %198 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %199 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @VS_VREF_DELAY_SHIFT, align 4
  %202 = shl i32 %200, %201
  %203 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %204 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @VS_VREF_INV_SHIFT, align 4
  %207 = shl i32 %205, %206
  %208 = or i32 %202, %207
  %209 = load %struct.tda1997x_platform_data*, %struct.tda1997x_platform_data** %4, align 8
  %210 = getelementptr inbounds %struct.tda1997x_platform_data, %struct.tda1997x_platform_data* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @VS_VREF_SEL_SHIFT, align 4
  %213 = shl i32 %211, %212
  %214 = or i32 %208, %213
  store i32 %214, i32* %6, align 4
  br label %219

215:                                              ; preds = %187
  %216 = load i32, i32* @VS_VREF_SEL_NONE, align 4
  %217 = load i32, i32* @VS_VREF_SEL_SHIFT, align 4
  %218 = shl i32 %216, %217
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %215, %197
  %220 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %221 = load i32, i32* @REG_VS_VREF, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @io_write(%struct.v4l2_subdev* %220, i32 %221, i32 %222)
  ret i32 0
}

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
