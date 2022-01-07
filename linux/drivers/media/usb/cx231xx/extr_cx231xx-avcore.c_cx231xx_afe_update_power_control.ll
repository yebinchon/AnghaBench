; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_update_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_update_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32 }

@POLARIS_AVMODE_ANALOGT_TV = common dso_local global i32 0, align 4
@FLD_PWRDN_TUNING_BIAS = common dso_local global i32 0, align 4
@FLD_PWRDN_ENABLE_PLL = common dso_local global i32 0, align 4
@SUP_BLK_PWRDN = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH1 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH2 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH3 = common dso_local global i32 0, align 4
@POLARIS_AVMODE_DIGITAL = common dso_local global i32 0, align 4
@FLD_PWRDN_PD_BANDGAP = common dso_local global i32 0, align 4
@FLD_PWRDN_PD_BIAS = common dso_local global i32 0, align 4
@FLD_PWRDN_PD_TUNECK = common dso_local global i32 0, align 4
@POLARIS_AVMODE_ENXTERNAL_AV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid AV mode input\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_afe_update_power_control(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %138 [
    i32 141, label %10
    i32 140, label %10
    i32 136, label %10
    i32 138, label %10
    i32 139, label %10
    i32 137, label %10
    i32 135, label %10
    i32 133, label %10
    i32 134, label %10
    i32 130, label %10
    i32 128, label %10
    i32 131, label %10
    i32 132, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @POLARIS_AVMODE_ANALOGT_TV, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %18 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %19 = or i32 %17, %18
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %23 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %24 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %25 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @afe_write_byte(%struct.cx231xx* %22, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %29 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %30 = call i32 @afe_read_byte(%struct.cx231xx* %28, i32 %29, i32* %5)
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %37

36:                                               ; preds = %21
  br label %15

37:                                               ; preds = %35, %15
  %38 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %39 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %40 = call i32 @afe_write_byte(%struct.cx231xx* %38, i32 %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %42 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %43 = call i32 @afe_write_byte(%struct.cx231xx* %41, i32 %42, i32 0)
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %47 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %48 = call i32 @afe_write_byte(%struct.cx231xx* %46, i32 %47, i32 0)
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %137

51:                                               ; preds = %10
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @POLARIS_AVMODE_DIGITAL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %58 = call i32 @afe_write_byte(%struct.cx231xx* %56, i32 %57, i32 112)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %60 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %61 = call i32 @afe_write_byte(%struct.cx231xx* %59, i32 %60, i32 112)
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %65 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %66 = call i32 @afe_write_byte(%struct.cx231xx* %64, i32 %65, i32 112)
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %70 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %71 = call i32 @afe_read_byte(%struct.cx231xx* %69, i32 %70, i32* %5)
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @FLD_PWRDN_PD_BANDGAP, align 4
  %75 = load i32, i32* @FLD_PWRDN_PD_BIAS, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @FLD_PWRDN_PD_TUNECK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %82 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @afe_write_byte(%struct.cx231xx* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %136

87:                                               ; preds = %51
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @POLARIS_AVMODE_ENXTERNAL_AV, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %113, %91
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %95 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %96 = or i32 %94, %95
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %100 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %101 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %102 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @afe_write_byte(%struct.cx231xx* %99, i32 %100, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %106 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %107 = call i32 @afe_read_byte(%struct.cx231xx* %105, i32 %106, i32* %5)
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %114

113:                                              ; preds = %98
  br label %92

114:                                              ; preds = %112, %92
  %115 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %116 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %117 = call i32 @afe_write_byte(%struct.cx231xx* %115, i32 %116, i32 0)
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %121 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %122 = call i32 @afe_write_byte(%struct.cx231xx* %120, i32 %121, i32 0)
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %126 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %127 = call i32 @afe_write_byte(%struct.cx231xx* %125, i32 %126, i32 0)
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %135

130:                                              ; preds = %87
  %131 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %132 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(i32 %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %135

135:                                              ; preds = %130, %114
  br label %136

136:                                              ; preds = %135, %55
  br label %137

137:                                              ; preds = %136, %37
  br label %268

138:                                              ; preds = %2
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @POLARIS_AVMODE_ANALOGT_TV, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %181

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %164, %142
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %146 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %147 = or i32 %145, %146
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %151 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %152 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %153 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @afe_write_byte(%struct.cx231xx* %150, i32 %151, i32 %154)
  store i32 %155, i32* %6, align 4
  %156 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %157 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %158 = call i32 @afe_read_byte(%struct.cx231xx* %156, i32 %157, i32* %5)
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  br label %165

164:                                              ; preds = %149
  br label %143

165:                                              ; preds = %163, %143
  %166 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %167 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %168 = call i32 @afe_write_byte(%struct.cx231xx* %166, i32 %167, i32 64)
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %172 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %173 = call i32 @afe_write_byte(%struct.cx231xx* %171, i32 %172, i32 64)
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %177 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %178 = call i32 @afe_write_byte(%struct.cx231xx* %176, i32 %177, i32 0)
  %179 = load i32, i32* %6, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %6, align 4
  br label %267

181:                                              ; preds = %138
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @POLARIS_AVMODE_DIGITAL, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %217

185:                                              ; preds = %181
  %186 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %187 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %188 = call i32 @afe_write_byte(%struct.cx231xx* %186, i32 %187, i32 112)
  store i32 %188, i32* %6, align 4
  %189 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %190 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %191 = call i32 @afe_write_byte(%struct.cx231xx* %189, i32 %190, i32 112)
  %192 = load i32, i32* %6, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %6, align 4
  %194 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %195 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %196 = call i32 @afe_write_byte(%struct.cx231xx* %194, i32 %195, i32 112)
  %197 = load i32, i32* %6, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %6, align 4
  %199 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %200 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %201 = call i32 @afe_read_byte(%struct.cx231xx* %199, i32 %200, i32* %5)
  %202 = load i32, i32* %6, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* @FLD_PWRDN_PD_BANDGAP, align 4
  %205 = load i32, i32* @FLD_PWRDN_PD_BIAS, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @FLD_PWRDN_PD_TUNECK, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* %5, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %5, align 4
  %211 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %212 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @afe_write_byte(%struct.cx231xx* %211, i32 %212, i32 %213)
  %215 = load i32, i32* %6, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %6, align 4
  br label %266

217:                                              ; preds = %181
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @POLARIS_AVMODE_ENXTERNAL_AV, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %260

221:                                              ; preds = %217
  br label %222

222:                                              ; preds = %243, %221
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %225 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %226 = or i32 %224, %225
  %227 = icmp ne i32 %223, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %222
  %229 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %230 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %231 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %232 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @afe_write_byte(%struct.cx231xx* %229, i32 %230, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %236 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %237 = call i32 @afe_read_byte(%struct.cx231xx* %235, i32 %236, i32* %5)
  %238 = load i32, i32* %6, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %228
  br label %244

243:                                              ; preds = %228
  br label %222

244:                                              ; preds = %242, %222
  %245 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %246 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %247 = call i32 @afe_write_byte(%struct.cx231xx* %245, i32 %246, i32 0)
  %248 = load i32, i32* %6, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %6, align 4
  %250 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %251 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %252 = call i32 @afe_write_byte(%struct.cx231xx* %250, i32 %251, i32 0)
  %253 = load i32, i32* %6, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %6, align 4
  %255 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %256 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %257 = call i32 @afe_write_byte(%struct.cx231xx* %255, i32 %256, i32 64)
  %258 = load i32, i32* %6, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %6, align 4
  br label %265

260:                                              ; preds = %217
  %261 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %262 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @dev_dbg(i32 %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %265

265:                                              ; preds = %260, %244
  br label %266

266:                                              ; preds = %265, %185
  br label %267

267:                                              ; preds = %266, %165
  br label %268

268:                                              ; preds = %267, %137
  %269 = load i32, i32* %6, align 4
  ret i32 %269
}

declare dso_local i32 @afe_write_byte(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @afe_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
