; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.cam }
%struct.cam = type { i8*, i8* }
%struct.sd = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@OV7xx0_SID = common dso_local global i32 0, align 4
@OV6xx0_SID = common dso_local global i32 0, align 4
@OV8xx0_SID = common dso_local global i32 0, align 4
@OV_HIRES_SID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can't determine sensor slave IDs\0A\00", align 1
@ov511_sif_mode = common dso_local global i8* null, align 8
@ov518_sif_mode = common dso_local global i8* null, align 8
@ov519_sif_mode = common dso_local global i8* null, align 8
@ovfx2_ov2610_mode = common dso_local global i8* null, align 8
@ovfx2_ov3610_mode = common dso_local global i8* null, align 8
@ovfx2_ov9600_mode = common dso_local global i8* null, align 8
@w9968cf_vga_mode = common dso_local global i8* null, align 8
@norm_2610 = common dso_local global i8* null, align 8
@norm_2610ae = common dso_local global i8* null, align 8
@norm_3620b = common dso_local global i8* null, align 8
@norm_6x20 = common dso_local global i8* null, align 8
@norm_6x30 = common dso_local global i8* null, align 8
@norm_7610 = common dso_local global i8* null, align 8
@norm_7620 = common dso_local global i8* null, align 8
@norm_7640 = common dso_local global i8* null, align 8
@OV7670_R12_COM7 = common dso_local global i32 0, align 4
@OV7670_COM7_RESET = common dso_local global i32 0, align 4
@OV519_R57_SNAPSHOT = common dso_local global i32 0, align 4
@init_519_ov7660 = common dso_local global i8* null, align 8
@norm_7660 = common dso_local global i8* null, align 8
@norm_7670 = common dso_local global i8* null, align 8
@norm_8610 = common dso_local global i8* null, align 8
@norm_9600 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"OV519 Config failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  store %struct.cam* %9, %struct.cam** %5, align 8
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %28 [
    i32 148, label %13
    i32 147, label %13
    i32 146, label %16
    i32 145, label %16
    i32 144, label %19
    i32 143, label %22
    i32 142, label %25
  ]

13:                                               ; preds = %1, %1
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @ov511_configure(%struct.gspca_dev* %14)
  br label %28

16:                                               ; preds = %1, %1
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = call i32 @ov518_configure(%struct.gspca_dev* %17)
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = call i32 @ov519_configure(%struct.sd* %20)
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.sd*, %struct.sd** %4, align 8
  %24 = call i32 @ovfx2_configure(%struct.sd* %23)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = call i32 @w9968cf_configure(%struct.sd* %26)
  br label %28

28:                                               ; preds = %1, %25, %22, %19, %16, %13
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = load i32, i32* @OV7xx0_SID, align 4
  %33 = call i64 @init_ov_sensor(%struct.sd* %31, i32 %32)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.sd*, %struct.sd** %4, align 8
  %37 = call i32 @ov7xx0_configure(%struct.sd* %36)
  br label %68

38:                                               ; preds = %28
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = load i32, i32* @OV6xx0_SID, align 4
  %41 = call i64 @init_ov_sensor(%struct.sd* %39, i32 %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = call i32 @ov6xx0_configure(%struct.sd* %44)
  br label %67

46:                                               ; preds = %38
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = load i32, i32* @OV8xx0_SID, align 4
  %49 = call i64 @init_ov_sensor(%struct.sd* %47, i32 %48)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.sd*, %struct.sd** %4, align 8
  %53 = call i32 @ov8xx0_configure(%struct.sd* %52)
  br label %66

54:                                               ; preds = %46
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = load i32, i32* @OV_HIRES_SID, align 4
  %57 = call i64 @init_ov_sensor(%struct.sd* %55, i32 %56)
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.sd*, %struct.sd** %4, align 8
  %61 = call i32 @ov_hires_configure(%struct.sd* %60)
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %64 = call i32 @gspca_err(%struct.gspca_dev* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %295

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %35
  %69 = load %struct.sd*, %struct.sd** %4, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %295

74:                                               ; preds = %68
  %75 = load %struct.sd*, %struct.sd** %4, align 8
  %76 = call i32 @ov51x_led_control(%struct.sd* %75, i32 0)
  %77 = load %struct.sd*, %struct.sd** %4, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %179 [
    i32 148, label %80
    i32 147, label %80
    i32 146, label %94
    i32 145, label %94
    i32 144, label %108
    i32 143, label %122
    i32 142, label %165
  ]

80:                                               ; preds = %74, %74
  %81 = load %struct.sd*, %struct.sd** %4, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i8*, i8** @ov511_sif_mode, align 8
  %87 = load %struct.cam*, %struct.cam** %5, align 8
  %88 = getelementptr inbounds %struct.cam, %struct.cam* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @ov511_sif_mode, align 8
  %90 = call i8* @ARRAY_SIZE(i8* %89)
  %91 = load %struct.cam*, %struct.cam** %5, align 8
  %92 = getelementptr inbounds %struct.cam, %struct.cam* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %85, %80
  br label %179

94:                                               ; preds = %74, %74
  %95 = load %struct.sd*, %struct.sd** %4, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i8*, i8** @ov518_sif_mode, align 8
  %101 = load %struct.cam*, %struct.cam** %5, align 8
  %102 = getelementptr inbounds %struct.cam, %struct.cam* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** @ov518_sif_mode, align 8
  %104 = call i8* @ARRAY_SIZE(i8* %103)
  %105 = load %struct.cam*, %struct.cam** %5, align 8
  %106 = getelementptr inbounds %struct.cam, %struct.cam* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %99, %94
  br label %179

108:                                              ; preds = %74
  %109 = load %struct.sd*, %struct.sd** %4, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i8*, i8** @ov519_sif_mode, align 8
  %115 = load %struct.cam*, %struct.cam** %5, align 8
  %116 = getelementptr inbounds %struct.cam, %struct.cam* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @ov519_sif_mode, align 8
  %118 = call i8* @ARRAY_SIZE(i8* %117)
  %119 = load %struct.cam*, %struct.cam** %5, align 8
  %120 = getelementptr inbounds %struct.cam, %struct.cam* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %113, %108
  br label %179

122:                                              ; preds = %74
  %123 = load %struct.sd*, %struct.sd** %4, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %150 [
    i32 141, label %126
    i32 140, label %126
    i32 139, label %134
    i32 128, label %142
  ]

126:                                              ; preds = %122, %122
  %127 = load i8*, i8** @ovfx2_ov2610_mode, align 8
  %128 = load %struct.cam*, %struct.cam** %5, align 8
  %129 = getelementptr inbounds %struct.cam, %struct.cam* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @ovfx2_ov2610_mode, align 8
  %131 = call i8* @ARRAY_SIZE(i8* %130)
  %132 = load %struct.cam*, %struct.cam** %5, align 8
  %133 = getelementptr inbounds %struct.cam, %struct.cam* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %164

134:                                              ; preds = %122
  %135 = load i8*, i8** @ovfx2_ov3610_mode, align 8
  %136 = load %struct.cam*, %struct.cam** %5, align 8
  %137 = getelementptr inbounds %struct.cam, %struct.cam* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @ovfx2_ov3610_mode, align 8
  %139 = call i8* @ARRAY_SIZE(i8* %138)
  %140 = load %struct.cam*, %struct.cam** %5, align 8
  %141 = getelementptr inbounds %struct.cam, %struct.cam* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %164

142:                                              ; preds = %122
  %143 = load i8*, i8** @ovfx2_ov9600_mode, align 8
  %144 = load %struct.cam*, %struct.cam** %5, align 8
  %145 = getelementptr inbounds %struct.cam, %struct.cam* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** @ovfx2_ov9600_mode, align 8
  %147 = call i8* @ARRAY_SIZE(i8* %146)
  %148 = load %struct.cam*, %struct.cam** %5, align 8
  %149 = getelementptr inbounds %struct.cam, %struct.cam* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %164

150:                                              ; preds = %122
  %151 = load %struct.sd*, %struct.sd** %4, align 8
  %152 = getelementptr inbounds %struct.sd, %struct.sd* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load i8*, i8** @ov519_sif_mode, align 8
  %157 = load %struct.cam*, %struct.cam** %5, align 8
  %158 = getelementptr inbounds %struct.cam, %struct.cam* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @ov519_sif_mode, align 8
  %160 = call i8* @ARRAY_SIZE(i8* %159)
  %161 = load %struct.cam*, %struct.cam** %5, align 8
  %162 = getelementptr inbounds %struct.cam, %struct.cam* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %155, %150
  br label %164

164:                                              ; preds = %163, %142, %134, %126
  br label %179

165:                                              ; preds = %74
  %166 = load %struct.sd*, %struct.sd** %4, align 8
  %167 = getelementptr inbounds %struct.sd, %struct.sd* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load i8*, i8** @w9968cf_vga_mode, align 8
  %172 = call i8* @ARRAY_SIZE(i8* %171)
  %173 = getelementptr i8, i8* %172, i64 -1
  %174 = load %struct.cam*, %struct.cam** %5, align 8
  %175 = getelementptr inbounds %struct.cam, %struct.cam* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  br label %176

176:                                              ; preds = %170, %165
  %177 = load %struct.sd*, %struct.sd** %4, align 8
  %178 = call i32 @w9968cf_init(%struct.sd* %177)
  br label %179

179:                                              ; preds = %74, %176, %164, %121, %107, %93
  %180 = load %struct.sd*, %struct.sd** %4, align 8
  %181 = getelementptr inbounds %struct.sd, %struct.sd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  switch i32 %182, label %219 [
    i32 141, label %183
    i32 140, label %191
    i32 139, label %199
    i32 138, label %207
    i32 137, label %213
    i32 136, label %213
    i32 135, label %227
    i32 134, label %227
    i32 133, label %233
    i32 132, label %233
    i32 131, label %239
    i32 130, label %273
    i32 129, label %279
    i32 128, label %285
  ]

183:                                              ; preds = %179
  %184 = load %struct.sd*, %struct.sd** %4, align 8
  %185 = load i8*, i8** @norm_2610, align 8
  %186 = load i8*, i8** @norm_2610, align 8
  %187 = call i8* @ARRAY_SIZE(i8* %186)
  %188 = call i32 @write_i2c_regvals(%struct.sd* %184, i8* %185, i8* %187)
  %189 = load %struct.sd*, %struct.sd** %4, align 8
  %190 = call i32 @i2c_w_mask(%struct.sd* %189, i32 19, i32 39, i32 39)
  br label %291

191:                                              ; preds = %179
  %192 = load %struct.sd*, %struct.sd** %4, align 8
  %193 = load i8*, i8** @norm_2610ae, align 8
  %194 = load i8*, i8** @norm_2610ae, align 8
  %195 = call i8* @ARRAY_SIZE(i8* %194)
  %196 = call i32 @write_i2c_regvals(%struct.sd* %192, i8* %193, i8* %195)
  %197 = load %struct.sd*, %struct.sd** %4, align 8
  %198 = call i32 @i2c_w_mask(%struct.sd* %197, i32 19, i32 5, i32 5)
  br label %291

199:                                              ; preds = %179
  %200 = load %struct.sd*, %struct.sd** %4, align 8
  %201 = load i8*, i8** @norm_3620b, align 8
  %202 = load i8*, i8** @norm_3620b, align 8
  %203 = call i8* @ARRAY_SIZE(i8* %202)
  %204 = call i32 @write_i2c_regvals(%struct.sd* %200, i8* %201, i8* %203)
  %205 = load %struct.sd*, %struct.sd** %4, align 8
  %206 = call i32 @i2c_w_mask(%struct.sd* %205, i32 19, i32 39, i32 39)
  br label %291

207:                                              ; preds = %179
  %208 = load %struct.sd*, %struct.sd** %4, align 8
  %209 = load i8*, i8** @norm_6x20, align 8
  %210 = load i8*, i8** @norm_6x20, align 8
  %211 = call i8* @ARRAY_SIZE(i8* %210)
  %212 = call i32 @write_i2c_regvals(%struct.sd* %208, i8* %209, i8* %211)
  br label %291

213:                                              ; preds = %179, %179
  %214 = load %struct.sd*, %struct.sd** %4, align 8
  %215 = load i8*, i8** @norm_6x30, align 8
  %216 = load i8*, i8** @norm_6x30, align 8
  %217 = call i8* @ARRAY_SIZE(i8* %216)
  %218 = call i32 @write_i2c_regvals(%struct.sd* %214, i8* %215, i8* %217)
  br label %291

219:                                              ; preds = %179
  %220 = load %struct.sd*, %struct.sd** %4, align 8
  %221 = load i8*, i8** @norm_7610, align 8
  %222 = load i8*, i8** @norm_7610, align 8
  %223 = call i8* @ARRAY_SIZE(i8* %222)
  %224 = call i32 @write_i2c_regvals(%struct.sd* %220, i8* %221, i8* %223)
  %225 = load %struct.sd*, %struct.sd** %4, align 8
  %226 = call i32 @i2c_w_mask(%struct.sd* %225, i32 14, i32 0, i32 64)
  br label %291

227:                                              ; preds = %179, %179
  %228 = load %struct.sd*, %struct.sd** %4, align 8
  %229 = load i8*, i8** @norm_7620, align 8
  %230 = load i8*, i8** @norm_7620, align 8
  %231 = call i8* @ARRAY_SIZE(i8* %230)
  %232 = call i32 @write_i2c_regvals(%struct.sd* %228, i8* %229, i8* %231)
  br label %291

233:                                              ; preds = %179, %179
  %234 = load %struct.sd*, %struct.sd** %4, align 8
  %235 = load i8*, i8** @norm_7640, align 8
  %236 = load i8*, i8** @norm_7640, align 8
  %237 = call i8* @ARRAY_SIZE(i8* %236)
  %238 = call i32 @write_i2c_regvals(%struct.sd* %234, i8* %235, i8* %237)
  br label %291

239:                                              ; preds = %179
  %240 = load %struct.sd*, %struct.sd** %4, align 8
  %241 = load i32, i32* @OV7670_R12_COM7, align 4
  %242 = load i32, i32* @OV7670_COM7_RESET, align 4
  %243 = call i32 @i2c_w(%struct.sd* %240, i32 %241, i32 %242)
  %244 = call i32 @msleep(i32 14)
  %245 = load %struct.sd*, %struct.sd** %4, align 8
  %246 = load i32, i32* @OV519_R57_SNAPSHOT, align 4
  %247 = call i32 @reg_w(%struct.sd* %245, i32 %246, i32 35)
  %248 = load %struct.sd*, %struct.sd** %4, align 8
  %249 = load i8*, i8** @init_519_ov7660, align 8
  %250 = load i8*, i8** @init_519_ov7660, align 8
  %251 = call i8* @ARRAY_SIZE(i8* %250)
  %252 = call i32 @write_regvals(%struct.sd* %248, i8* %249, i8* %251)
  %253 = load %struct.sd*, %struct.sd** %4, align 8
  %254 = load i8*, i8** @norm_7660, align 8
  %255 = load i8*, i8** @norm_7660, align 8
  %256 = call i8* @ARRAY_SIZE(i8* %255)
  %257 = call i32 @write_i2c_regvals(%struct.sd* %253, i8* %254, i8* %256)
  %258 = load %struct.sd*, %struct.sd** %4, align 8
  %259 = getelementptr inbounds %struct.sd, %struct.sd* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  store i32 1, i32* %260, align 4
  %261 = load %struct.sd*, %struct.sd** %4, align 8
  %262 = call i32 @ov519_set_mode(%struct.sd* %261)
  %263 = load %struct.sd*, %struct.sd** %4, align 8
  %264 = call i32 @ov519_set_fr(%struct.sd* %263)
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %266 = call i32 @sd_reset_snapshot(%struct.gspca_dev* %265)
  %267 = load %struct.sd*, %struct.sd** %4, align 8
  %268 = call i32 @ov51x_restart(%struct.sd* %267)
  %269 = load %struct.sd*, %struct.sd** %4, align 8
  %270 = call i32 @ov51x_stop(%struct.sd* %269)
  %271 = load %struct.sd*, %struct.sd** %4, align 8
  %272 = call i32 @ov51x_led_control(%struct.sd* %271, i32 0)
  br label %291

273:                                              ; preds = %179
  %274 = load %struct.sd*, %struct.sd** %4, align 8
  %275 = load i8*, i8** @norm_7670, align 8
  %276 = load i8*, i8** @norm_7670, align 8
  %277 = call i8* @ARRAY_SIZE(i8* %276)
  %278 = call i32 @write_i2c_regvals(%struct.sd* %274, i8* %275, i8* %277)
  br label %291

279:                                              ; preds = %179
  %280 = load %struct.sd*, %struct.sd** %4, align 8
  %281 = load i8*, i8** @norm_8610, align 8
  %282 = load i8*, i8** @norm_8610, align 8
  %283 = call i8* @ARRAY_SIZE(i8* %282)
  %284 = call i32 @write_i2c_regvals(%struct.sd* %280, i8* %281, i8* %283)
  br label %291

285:                                              ; preds = %179
  %286 = load %struct.sd*, %struct.sd** %4, align 8
  %287 = load i8*, i8** @norm_9600, align 8
  %288 = load i8*, i8** @norm_9600, align 8
  %289 = call i8* @ARRAY_SIZE(i8* %288)
  %290 = call i32 @write_i2c_regvals(%struct.sd* %286, i8* %287, i8* %289)
  br label %291

291:                                              ; preds = %285, %279, %273, %239, %233, %227, %219, %213, %207, %199, %191, %183
  %292 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %293 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  store i32 %294, i32* %2, align 4
  br label %300

295:                                              ; preds = %73, %62
  %296 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %297 = call i32 @gspca_err(%struct.gspca_dev* %296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %2, align 4
  br label %300

300:                                              ; preds = %295, %291
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local i32 @ov511_configure(%struct.gspca_dev*) #1

declare dso_local i32 @ov518_configure(%struct.gspca_dev*) #1

declare dso_local i32 @ov519_configure(%struct.sd*) #1

declare dso_local i32 @ovfx2_configure(%struct.sd*) #1

declare dso_local i32 @w9968cf_configure(%struct.sd*) #1

declare dso_local i64 @init_ov_sensor(%struct.sd*, i32) #1

declare dso_local i32 @ov7xx0_configure(%struct.sd*) #1

declare dso_local i32 @ov6xx0_configure(%struct.sd*) #1

declare dso_local i32 @ov8xx0_configure(%struct.sd*) #1

declare dso_local i32 @ov_hires_configure(%struct.sd*) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @ov51x_led_control(%struct.sd*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @w9968cf_init(%struct.sd*) #1

declare dso_local i32 @write_i2c_regvals(%struct.sd*, i8*, i8*) #1

declare dso_local i32 @i2c_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @write_regvals(%struct.sd*, i8*, i8*) #1

declare dso_local i32 @ov519_set_mode(%struct.sd*) #1

declare dso_local i32 @ov519_set_fr(%struct.sd*) #1

declare dso_local i32 @sd_reset_snapshot(%struct.gspca_dev*) #1

declare dso_local i32 @ov51x_restart(%struct.sd*) #1

declare dso_local i32 @ov51x_stop(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
