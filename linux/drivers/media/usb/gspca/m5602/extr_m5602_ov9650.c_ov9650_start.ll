; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.gspca_dev = type { i32 }

@OV9650_LEFT_OFFSET = common dso_local global i32 0, align 4
@ov9650_flip_dmi_table = common dso_local global i32 0, align 4
@res_init_ov9650 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@SENSOR = common dso_local global i64 0, align 8
@M5602_XB_VSYNC_PARA = common dso_local global i64 0, align 8
@M5602_XB_SIG_INI = common dso_local global i64 0, align 8
@M5602_XB_HSYNC_PARA = common dso_local global i64 0, align 8
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Configuring camera for VGA mode\0A\00", align 1
@OV9650_VGA_SELECT = common dso_local global i32 0, align 4
@OV9650_RGB_SELECT = common dso_local global i32 0, align 4
@OV9650_RAW_RGB_SELECT = common dso_local global i32 0, align 4
@OV9650_COM7 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Configuring camera for CIF mode\0A\00", align 1
@OV9650_CIF_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Configuring camera for QVGA mode\0A\00", align 1
@OV9650_QVGA_SELECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Configuring camera for QCIF mode\0A\00", align 1
@OV9650_QCIF_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov9650_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.sd*, %struct.sd** %3, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store %struct.cam* %15, %struct.cam** %7, align 8
  %16 = load %struct.cam*, %struct.cam** %7, align 8
  %17 = getelementptr inbounds %struct.cam, %struct.cam* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.cam*, %struct.cam** %7, align 8
  %27 = getelementptr inbounds %struct.cam, %struct.cam* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.sd*, %struct.sd** %3, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.cam*, %struct.cam** %7, align 8
  %37 = getelementptr inbounds %struct.cam, %struct.cam* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @OV9650_LEFT_OFFSET, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = bitcast %struct.sd* %47 to %struct.gspca_dev*
  store %struct.gspca_dev* %48, %struct.gspca_dev** %12, align 8
  %49 = load i32, i32* @ov9650_flip_dmi_table, align 4
  %50 = call i64 @dmi_check_system(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %1
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %52, %1
  %60 = load i32, i32* @ov9650_flip_dmi_table, align 4
  %61 = call i64 @dmi_check_system(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63, %52
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %63, %59
  %74 = load i32, i32* %8, align 4
  %75 = icmp sle i32 %74, 320
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %73
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %149, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i64**, i64*** @res_init_ov9650, align 8
  %83 = call i32 @ARRAY_SIZE(i64** %82)
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %85, %80
  %90 = phi i1 [ false, %80 ], [ %88, %85 ]
  br i1 %90, label %91, label %152

91:                                               ; preds = %89
  %92 = load i64**, i64*** @res_init_ov9650, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %92, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BRIDGE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %91
  %102 = load %struct.sd*, %struct.sd** %3, align 8
  %103 = load i64**, i64*** @res_init_ov9650, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64*, i64** %103, i64 %105
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64**, i64*** @res_init_ov9650, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64*, i64** %110, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 2
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @m5602_write_bridge(%struct.sd* %102, i64 %109, i32 %117)
  store i32 %118, i32* %6, align 4
  br label %148

119:                                              ; preds = %91
  %120 = load i64**, i64*** @res_init_ov9650, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64*, i64** %120, i64 %122
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SENSOR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %119
  %130 = load i64**, i64*** @res_init_ov9650, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64*, i64** %130, i64 %132
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %4, align 4
  %138 = load %struct.sd*, %struct.sd** %3, align 8
  %139 = load i64**, i64*** @res_init_ov9650, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64*, i64** %139, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @m5602_write_sensor(%struct.sd* %138, i64 %145, i32* %4, i32 1)
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %129, %119
  br label %148

148:                                              ; preds = %147, %101
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %80

152:                                              ; preds = %89
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %351

157:                                              ; preds = %152
  %158 = load %struct.sd*, %struct.sd** %3, align 8
  %159 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %160 = load i32, i32* %10, align 4
  %161 = ashr i32 %160, 8
  %162 = and i32 %161, 255
  %163 = call i32 @m5602_write_bridge(%struct.sd* %158, i64 %159, i32 %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %351

168:                                              ; preds = %157
  %169 = load %struct.sd*, %struct.sd** %3, align 8
  %170 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %171 = load i32, i32* %10, align 4
  %172 = and i32 %171, 255
  %173 = call i32 @m5602_write_bridge(%struct.sd* %169, i64 %170, i32 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %351

178:                                              ; preds = %168
  %179 = load %struct.sd*, %struct.sd** %3, align 8
  %180 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %181 = call i32 @m5602_write_bridge(%struct.sd* %179, i64 %180, i32 0)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %351

186:                                              ; preds = %178
  %187 = load %struct.sd*, %struct.sd** %3, align 8
  %188 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %189 = load i32, i32* %9, align 4
  %190 = ashr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = call i32 @m5602_write_bridge(%struct.sd* %187, i64 %188, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %2, align 4
  br label %351

197:                                              ; preds = %186
  %198 = load %struct.sd*, %struct.sd** %3, align 8
  %199 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %200 = load i32, i32* %9, align 4
  %201 = and i32 %200, 255
  %202 = call i32 @m5602_write_bridge(%struct.sd* %198, i64 %199, i32 %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %351

207:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %221, %207
  %209 = load i32, i32* %5, align 4
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  br label %215

215:                                              ; preds = %211, %208
  %216 = phi i1 [ false, %208 ], [ %214, %211 ]
  br i1 %216, label %217, label %224

217:                                              ; preds = %215
  %218 = load %struct.sd*, %struct.sd** %3, align 8
  %219 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %220 = call i32 @m5602_write_bridge(%struct.sd* %218, i64 %219, i32 0)
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  br label %208

224:                                              ; preds = %215
  %225 = load i32, i32* %6, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32, i32* %6, align 4
  store i32 %228, i32* %2, align 4
  br label %351

229:                                              ; preds = %224
  %230 = load %struct.sd*, %struct.sd** %3, align 8
  %231 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %232 = call i32 @m5602_write_bridge(%struct.sd* %230, i64 %231, i32 0)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  %236 = load i32, i32* %6, align 4
  store i32 %236, i32* %2, align 4
  br label %351

237:                                              ; preds = %229
  %238 = load %struct.sd*, %struct.sd** %3, align 8
  %239 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %240 = call i32 @m5602_write_bridge(%struct.sd* %238, i64 %239, i32 2)
  store i32 %240, i32* %6, align 4
  %241 = load i32, i32* %6, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %6, align 4
  store i32 %244, i32* %2, align 4
  br label %351

245:                                              ; preds = %237
  %246 = load %struct.sd*, %struct.sd** %3, align 8
  %247 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %248 = load i32, i32* %11, align 4
  %249 = ashr i32 %248, 8
  %250 = and i32 %249, 255
  %251 = call i32 @m5602_write_bridge(%struct.sd* %246, i64 %247, i32 %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %245
  %255 = load i32, i32* %6, align 4
  store i32 %255, i32* %2, align 4
  br label %351

256:                                              ; preds = %245
  %257 = load %struct.sd*, %struct.sd** %3, align 8
  %258 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %259 = load i32, i32* %11, align 4
  %260 = and i32 %259, 255
  %261 = call i32 @m5602_write_bridge(%struct.sd* %257, i64 %258, i32 %260)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = load i32, i32* %6, align 4
  store i32 %265, i32* %2, align 4
  br label %351

266:                                              ; preds = %256
  %267 = load %struct.sd*, %struct.sd** %3, align 8
  %268 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %269, %270
  %272 = ashr i32 %271, 8
  %273 = and i32 %272, 255
  %274 = call i32 @m5602_write_bridge(%struct.sd* %267, i64 %268, i32 %273)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %266
  %278 = load i32, i32* %6, align 4
  store i32 %278, i32* %2, align 4
  br label %351

279:                                              ; preds = %266
  %280 = load %struct.sd*, %struct.sd** %3, align 8
  %281 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %282, %283
  %285 = and i32 %284, 255
  %286 = call i32 @m5602_write_bridge(%struct.sd* %280, i64 %281, i32 %285)
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %279
  %290 = load i32, i32* %6, align 4
  store i32 %290, i32* %2, align 4
  br label %351

291:                                              ; preds = %279
  %292 = load %struct.sd*, %struct.sd** %3, align 8
  %293 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %294 = call i32 @m5602_write_bridge(%struct.sd* %292, i64 %293, i32 0)
  store i32 %294, i32* %6, align 4
  %295 = load i32, i32* %6, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  %298 = load i32, i32* %6, align 4
  store i32 %298, i32* %2, align 4
  br label %351

299:                                              ; preds = %291
  %300 = load i32, i32* %8, align 4
  switch i32 %300, label %349 [
    i32 640, label %301
    i32 352, label %313
    i32 320, label %325
    i32 176, label %337
  ]

301:                                              ; preds = %299
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %12, align 8
  %303 = load i32, i32* @D_CONF, align 4
  %304 = call i32 @gspca_dbg(%struct.gspca_dev* %302, i32 %303, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %305 = load i32, i32* @OV9650_VGA_SELECT, align 4
  %306 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %309 = or i32 %307, %308
  store i32 %309, i32* %4, align 4
  %310 = load %struct.sd*, %struct.sd** %3, align 8
  %311 = load i64, i64* @OV9650_COM7, align 8
  %312 = call i32 @m5602_write_sensor(%struct.sd* %310, i64 %311, i32* %4, i32 1)
  store i32 %312, i32* %6, align 4
  br label %349

313:                                              ; preds = %299
  %314 = load %struct.gspca_dev*, %struct.gspca_dev** %12, align 8
  %315 = load i32, i32* @D_CONF, align 4
  %316 = call i32 @gspca_dbg(%struct.gspca_dev* %314, i32 %315, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %317 = load i32, i32* @OV9650_CIF_SELECT, align 4
  %318 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %321 = or i32 %319, %320
  store i32 %321, i32* %4, align 4
  %322 = load %struct.sd*, %struct.sd** %3, align 8
  %323 = load i64, i64* @OV9650_COM7, align 8
  %324 = call i32 @m5602_write_sensor(%struct.sd* %322, i64 %323, i32* %4, i32 1)
  store i32 %324, i32* %6, align 4
  br label %349

325:                                              ; preds = %299
  %326 = load %struct.gspca_dev*, %struct.gspca_dev** %12, align 8
  %327 = load i32, i32* @D_CONF, align 4
  %328 = call i32 @gspca_dbg(%struct.gspca_dev* %326, i32 %327, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %329 = load i32, i32* @OV9650_QVGA_SELECT, align 4
  %330 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %331 = or i32 %329, %330
  %332 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %333 = or i32 %331, %332
  store i32 %333, i32* %4, align 4
  %334 = load %struct.sd*, %struct.sd** %3, align 8
  %335 = load i64, i64* @OV9650_COM7, align 8
  %336 = call i32 @m5602_write_sensor(%struct.sd* %334, i64 %335, i32* %4, i32 1)
  store i32 %336, i32* %6, align 4
  br label %349

337:                                              ; preds = %299
  %338 = load %struct.gspca_dev*, %struct.gspca_dev** %12, align 8
  %339 = load i32, i32* @D_CONF, align 4
  %340 = call i32 @gspca_dbg(%struct.gspca_dev* %338, i32 %339, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %341 = load i32, i32* @OV9650_QCIF_SELECT, align 4
  %342 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %345 = or i32 %343, %344
  store i32 %345, i32* %4, align 4
  %346 = load %struct.sd*, %struct.sd** %3, align 8
  %347 = load i64, i64* @OV9650_COM7, align 8
  %348 = call i32 @m5602_write_sensor(%struct.sd* %346, i64 %347, i32* %4, i32 1)
  store i32 %348, i32* %6, align 4
  br label %349

349:                                              ; preds = %299, %337, %325, %313, %301
  %350 = load i32, i32* %6, align 4
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %349, %297, %289, %277, %264, %254, %243, %235, %227, %205, %195, %184, %176, %166, %155
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i32*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
