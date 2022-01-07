; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_set_layer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_set_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i64, i32, i32, i32, %struct.osd_window_state*, %struct.osd_osdwin_state*, i32, i32 }
%struct.osd_window_state = type { i32, %struct.osd_layer_config, i64 }
%struct.osd_layer_config = type { i64 }
%struct.osd_osdwin_state = type { i8*, i32, i32, i64, i32, i32 }

@WIN_OSD1 = common dso_local global i32 0, align 4
@PIXFMT_OSD_ATTR = common dso_local global i64 0, align 8
@OSDWIN_OSD1 = common dso_local global i64 0, align 8
@WIN_OSD0 = common dso_local global i32 0, align 4
@OSDWIN_OSD0 = common dso_local global i64 0, align 8
@WIN_VID0 = common dso_local global i64 0, align 8
@PIXFMT_RGB888 = common dso_local global i64 0, align 8
@WIN_VID1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osd_state*, i32, %struct.osd_layer_config*)* @osd_set_layer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_set_layer_config(%struct.osd_state* %0, i32 %1, %struct.osd_layer_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.osd_layer_config*, align 8
  %8 = alloca %struct.osd_state*, align 8
  %9 = alloca %struct.osd_window_state*, align 8
  %10 = alloca %struct.osd_layer_config*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.osd_osdwin_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.osd_osdwin_state*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.osd_layer_config* %2, %struct.osd_layer_config** %7, align 8
  %18 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  store %struct.osd_state* %18, %struct.osd_state** %8, align 8
  %19 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %20 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %19, i32 0, i32 4
  %21 = load %struct.osd_window_state*, %struct.osd_window_state** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %21, i64 %23
  store %struct.osd_window_state* %24, %struct.osd_window_state** %9, align 8
  %25 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %26 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %25, i32 0, i32 1
  store %struct.osd_layer_config* %26, %struct.osd_layer_config** %10, align 8
  %27 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %28 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %27, i32 0, i32 1
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %34 = call i32 @try_layer_config(%struct.osd_state* %31, i32 %32, %struct.osd_layer_config* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %39 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %38, i32 0, i32 1
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %315

43:                                               ; preds = %3
  %44 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %45 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @is_yc_pixfmt(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %51 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %54 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @WIN_OSD1, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %55
  %60 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %61 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %67 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %73 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %79 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77, %65
  %84 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %85 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @_osd_disable_layer(%struct.osd_state* %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %77, %71
  br label %90

90:                                               ; preds = %89, %55
  %91 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %94 = call i32 @_osd_set_layer_config(%struct.osd_state* %91, i32 %92, %struct.osd_layer_config* %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @WIN_OSD1, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %176

98:                                               ; preds = %90
  %99 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %100 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %99, i32 0, i32 5
  %101 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %100, align 8
  %102 = load i64, i64* @OSDWIN_OSD1, align 8
  %103 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %101, i64 %102
  store %struct.osd_osdwin_state* %103, %struct.osd_osdwin_state** %13, align 8
  %104 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %105 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %153

109:                                              ; preds = %98
  %110 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %111 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %153

115:                                              ; preds = %109
  %116 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %117 = load i64, i64* @OSDWIN_OSD1, align 8
  %118 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %13, align 8
  %119 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @_osd_set_osd_clut(%struct.osd_state* %116, i64 %117, i32 %120)
  %122 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %123 = load i64, i64* @OSDWIN_OSD1, align 8
  %124 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %13, align 8
  %125 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @_osd_set_blending_factor(%struct.osd_state* %122, i64 %123, i32 %126)
  %128 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %13, align 8
  %129 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %115
  %133 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %134 = load i64, i64* @OSDWIN_OSD1, align 8
  %135 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %13, align 8
  %136 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %139 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @_osd_enable_color_key(%struct.osd_state* %133, i64 %134, i32 %137, i64 %140)
  br label %146

142:                                              ; preds = %115
  %143 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %144 = load i64, i64* @OSDWIN_OSD1, align 8
  %145 = call i32 @_osd_disable_color_key(%struct.osd_state* %143, i64 %144)
  br label %146

146:                                              ; preds = %142, %132
  %147 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %148 = load i64, i64* @OSDWIN_OSD1, align 8
  %149 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %13, align 8
  %150 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @_osd_set_rec601_attenuation(%struct.osd_state* %147, i64 %148, i32 %151)
  br label %175

153:                                              ; preds = %109, %98
  %154 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %155 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %161 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PIXFMT_OSD_ATTR, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %167 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %168 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %171 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @_osd_set_blink_attribute(%struct.osd_state* %166, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %165, %159, %153
  br label %175

175:                                              ; preds = %174, %146
  br label %176

176:                                              ; preds = %175, %90
  %177 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %178 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %181 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %255

184:                                              ; preds = %176
  %185 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %186 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 130
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  %190 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %191 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 129
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %196 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %197, 128
  br i1 %198, label %199, label %255

199:                                              ; preds = %194, %189, %184
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @WIN_OSD0, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i64, i64* @OSDWIN_OSD0, align 8
  br label %207

205:                                              ; preds = %199
  %206 = load i64, i64* @OSDWIN_OSD1, align 8
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i64 [ %204, %203 ], [ %206, %205 ]
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %14, align 4
  %210 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %211 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %210, i32 0, i32 5
  %212 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %212, i64 %214
  store %struct.osd_osdwin_state* %215, %struct.osd_osdwin_state** %15, align 8
  store i8 0, i8* %17, align 1
  %216 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %217 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  switch i64 %218, label %222 [
    i64 130, label %219
    i64 129, label %220
    i64 128, label %221
  ]

219:                                              ; preds = %207
  store i8 2, i8* %17, align 1
  br label %223

220:                                              ; preds = %207
  store i8 4, i8* %17, align 1
  br label %223

221:                                              ; preds = %207
  store i8 16, i8* %17, align 1
  br label %223

222:                                              ; preds = %207
  br label %223

223:                                              ; preds = %222, %221, %220, %219
  store i8 0, i8* %16, align 1
  br label %224

224:                                              ; preds = %251, %223
  %225 = load i8, i8* %16, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp slt i32 %226, 16
  br i1 %227, label %228, label %254

228:                                              ; preds = %224
  %229 = load i8, i8* %16, align 1
  %230 = load %struct.osd_osdwin_state*, %struct.osd_osdwin_state** %15, align 8
  %231 = getelementptr inbounds %struct.osd_osdwin_state, %struct.osd_osdwin_state* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i8, i8* %16, align 1
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  store i8 %229, i8* %235, align 1
  %236 = load i8, i8* %16, align 1
  %237 = zext i8 %236 to i32
  %238 = load i8, i8* %17, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %228
  %242 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %243 = load i32, i32* %14, align 4
  %244 = load i8, i8* %16, align 1
  %245 = load i8, i8* %16, align 1
  %246 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %247 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @_osd_set_palette_map(%struct.osd_state* %242, i32 %243, i8 zeroext %244, i8 zeroext %245, i64 %248)
  br label %250

250:                                              ; preds = %241, %228
  br label %251

251:                                              ; preds = %250
  %252 = load i8, i8* %16, align 1
  %253 = add i8 %252, 1
  store i8 %253, i8* %16, align 1
  br label %224

254:                                              ; preds = %224
  br label %255

255:                                              ; preds = %254, %194, %176
  %256 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %257 = load %struct.osd_layer_config*, %struct.osd_layer_config** %7, align 8
  %258 = bitcast %struct.osd_layer_config* %256 to i8*
  %259 = bitcast %struct.osd_layer_config* %257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %258, i8* align 8 %259, i64 8, i1 false)
  %260 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %261 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %260, i32 0, i32 4
  %262 = load %struct.osd_window_state*, %struct.osd_window_state** %261, align 8
  %263 = load i64, i64* @WIN_VID0, align 8
  %264 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %262, i64 %263
  %265 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @PIXFMT_RGB888, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %255
  %271 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %272 = load i64, i64* @WIN_VID0, align 8
  %273 = call i32 @_osd_enable_vid_rgb888(%struct.osd_state* %271, i64 %272)
  br label %293

274:                                              ; preds = %255
  %275 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %276 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %275, i32 0, i32 4
  %277 = load %struct.osd_window_state*, %struct.osd_window_state** %276, align 8
  %278 = load i64, i64* @WIN_VID1, align 8
  %279 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %277, i64 %278
  %280 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.osd_layer_config, %struct.osd_layer_config* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @PIXFMT_RGB888, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %274
  %286 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %287 = load i64, i64* @WIN_VID1, align 8
  %288 = call i32 @_osd_enable_vid_rgb888(%struct.osd_state* %286, i64 %287)
  br label %292

289:                                              ; preds = %274
  %290 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %291 = call i32 @_osd_disable_vid_rgb888(%struct.osd_state* %290)
  br label %292

292:                                              ; preds = %289, %285
  br label %293

293:                                              ; preds = %292, %270
  %294 = load i32, i32* %6, align 4
  %295 = zext i32 %294 to i64
  %296 = load i64, i64* @WIN_VID0, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %310

298:                                              ; preds = %293
  %299 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %300 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %301 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.osd_window_state*, %struct.osd_window_state** %9, align 8
  %304 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.osd_layer_config*, %struct.osd_layer_config** %10, align 8
  %307 = call i32 @_osd_dm6446_vid0_pingpong(%struct.osd_state* %299, i32 %302, i32 %305, %struct.osd_layer_config* %306)
  %308 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %309 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %298, %293
  %311 = load %struct.osd_state*, %struct.osd_state** %8, align 8
  %312 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %311, i32 0, i32 1
  %313 = load i64, i64* %11, align 8
  %314 = call i32 @spin_unlock_irqrestore(i32* %312, i64 %313)
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %310, %37
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @try_layer_config(%struct.osd_state*, i32, %struct.osd_layer_config*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @is_yc_pixfmt(i64) #1

declare dso_local i32 @_osd_disable_layer(%struct.osd_state*, i32) #1

declare dso_local i32 @_osd_set_layer_config(%struct.osd_state*, i32, %struct.osd_layer_config*) #1

declare dso_local i32 @_osd_set_osd_clut(%struct.osd_state*, i64, i32) #1

declare dso_local i32 @_osd_set_blending_factor(%struct.osd_state*, i64, i32) #1

declare dso_local i32 @_osd_enable_color_key(%struct.osd_state*, i64, i32, i64) #1

declare dso_local i32 @_osd_disable_color_key(%struct.osd_state*, i64) #1

declare dso_local i32 @_osd_set_rec601_attenuation(%struct.osd_state*, i64, i32) #1

declare dso_local i32 @_osd_set_blink_attribute(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @_osd_set_palette_map(%struct.osd_state*, i32, i8 zeroext, i8 zeroext, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_osd_enable_vid_rgb888(%struct.osd_state*, i64) #1

declare dso_local i32 @_osd_disable_vid_rgb888(%struct.osd_state*) #1

declare dso_local i32 @_osd_dm6446_vid0_pingpong(%struct.osd_state*, i32, i32, %struct.osd_layer_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
