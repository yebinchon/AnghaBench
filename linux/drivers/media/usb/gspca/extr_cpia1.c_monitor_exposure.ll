; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_monitor_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_monitor_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }
%struct.sd = type { i64, i32, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CPIA_COMMAND_ReadVPRegs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ReadVPRegs(30,4,9,8) - failed: %d\0A\00", align 1
@TC = common dso_local global i32 0, align 4
@EXP_ACC_LIGHT = common dso_local global i32 0, align 4
@EXP_ACC_DARK = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@HIGH_COMP_102 = common dso_local global i32 0, align 4
@EXPOSURE_VERY_DARK = common dso_local global i64 0, align 8
@EXPOSURE_DARK = common dso_local global i64 0, align 8
@LOW_EXP = common dso_local global i32 0, align 4
@VERY_LOW_EXP = common dso_local global i32 0, align 4
@EXPOSURE_VERY_LIGHT = common dso_local global i64 0, align 8
@EXPOSURE_LIGHT = common dso_local global i64 0, align 8
@EXPOSURE_NORMAL = common dso_local global i8* null, align 8
@MAX_EXP = common dso_local global i32 0, align 4
@DARK_TIME = common dso_local global i32 0, align 4
@flicker_jumps = common dso_local global i8**** null, align 8
@D_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Automatically decreasing sensor_fps\0A\00", align 1
@LIGHT_TIME = common dso_local global i32 0, align 4
@MAX_EXP_102 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Automatically increasing sensor_fps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @monitor_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_exposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = bitcast %struct.gspca_dev* %19 to %struct.sd*
  store %struct.sd* %20, %struct.sd** %3, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @CPIA_COMMAND_ReadVPRegs, align 4
  %22 = ashr i32 %21, 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* @CPIA_COMMAND_ReadVPRegs, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 30, i32* %27, align 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 4, i32* %28, align 4
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 9, i32* %29, align 16
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  store i32 8, i32* %30, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  store i32 8, i32* %31, align 8
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 0, i32* %32, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %35 = call i32 @cpia_usb_transferCmd(%struct.gspca_dev* %33, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %694

41:                                               ; preds = %1
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TC, align 4
  %58 = add nsw i32 %56, %57
  %59 = sub nsw i32 %58, 50
  %60 = load i32, i32* @EXP_ACC_LIGHT, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 255
  br i1 %63, label %64, label %65

64:                                               ; preds = %41
  store i32 255, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.sd*, %struct.sd** %3, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TC, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 50
  %74 = load i32, i32* @EXP_ACC_DARK, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %10, align 4
  %82 = load %struct.sd*, %struct.sd** %3, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %86, 256
  %88 = load %struct.sd*, %struct.sd** %3, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %87, %92
  store i32 %93, i32* %11, align 4
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %215, label %100

100:                                              ; preds = %79
  %101 = call i64 @FIRMWARE_VERSION(i32 1, i32 2)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @MAX_COMP, align 4
  br label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @HIGH_COMP_102, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 128
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %159

114:                                              ; preds = %107
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %159

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.sd*, %struct.sd** %3, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load %struct.sd*, %struct.sd** %3, align 8
  %130 = getelementptr inbounds %struct.sd, %struct.sd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %139

133:                                              ; preds = %122
  %134 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.sd*, %struct.sd** %3, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 1
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %133, %128
  br label %158

140:                                              ; preds = %118
  %141 = load %struct.sd*, %struct.sd** %3, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @EXPOSURE_DARK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %157

151:                                              ; preds = %140
  %152 = load i64, i64* @EXPOSURE_DARK, align 8
  %153 = load %struct.sd*, %struct.sd** %3, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.sd*, %struct.sd** %3, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 1
  store i32 1, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %139
  br label %214

159:                                              ; preds = %114, %107
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @LOW_EXP, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %208

167:                                              ; preds = %163, %159
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @VERY_LOW_EXP, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  %172 = load %struct.sd*, %struct.sd** %3, align 8
  %173 = getelementptr inbounds %struct.sd, %struct.sd* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.sd*, %struct.sd** %3, align 8
  %179 = getelementptr inbounds %struct.sd, %struct.sd* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  br label %188

182:                                              ; preds = %171
  %183 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %184 = load %struct.sd*, %struct.sd** %3, align 8
  %185 = getelementptr inbounds %struct.sd, %struct.sd* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load %struct.sd*, %struct.sd** %3, align 8
  %187 = getelementptr inbounds %struct.sd, %struct.sd* %186, i32 0, i32 1
  store i32 1, i32* %187, align 8
  br label %188

188:                                              ; preds = %182, %177
  br label %207

189:                                              ; preds = %167
  %190 = load %struct.sd*, %struct.sd** %3, align 8
  %191 = getelementptr inbounds %struct.sd, %struct.sd* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.sd*, %struct.sd** %3, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %206

200:                                              ; preds = %189
  %201 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %202 = load %struct.sd*, %struct.sd** %3, align 8
  %203 = getelementptr inbounds %struct.sd, %struct.sd* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.sd*, %struct.sd** %3, align 8
  %205 = getelementptr inbounds %struct.sd, %struct.sd* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  br label %206

206:                                              ; preds = %200, %195
  br label %207

207:                                              ; preds = %206, %188
  br label %213

208:                                              ; preds = %163
  %209 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %210 = ptrtoint i8* %209 to i64
  %211 = load %struct.sd*, %struct.sd** %3, align 8
  %212 = getelementptr inbounds %struct.sd, %struct.sd* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %208, %207
  br label %214

214:                                              ; preds = %213, %158
  br label %320

215:                                              ; preds = %79
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @MAX_EXP, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %264

219:                                              ; preds = %215
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %264

223:                                              ; preds = %219
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %245

227:                                              ; preds = %223
  %228 = load %struct.sd*, %struct.sd** %3, align 8
  %229 = getelementptr inbounds %struct.sd, %struct.sd* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load %struct.sd*, %struct.sd** %3, align 8
  %235 = getelementptr inbounds %struct.sd, %struct.sd* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  br label %244

238:                                              ; preds = %227
  %239 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %240 = load %struct.sd*, %struct.sd** %3, align 8
  %241 = getelementptr inbounds %struct.sd, %struct.sd* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.sd*, %struct.sd** %3, align 8
  %243 = getelementptr inbounds %struct.sd, %struct.sd* %242, i32 0, i32 1
  store i32 1, i32* %243, align 8
  br label %244

244:                                              ; preds = %238, %233
  br label %263

245:                                              ; preds = %223
  %246 = load %struct.sd*, %struct.sd** %3, align 8
  %247 = getelementptr inbounds %struct.sd, %struct.sd* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @EXPOSURE_DARK, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load %struct.sd*, %struct.sd** %3, align 8
  %253 = getelementptr inbounds %struct.sd, %struct.sd* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 8
  br label %262

256:                                              ; preds = %245
  %257 = load i64, i64* @EXPOSURE_DARK, align 8
  %258 = load %struct.sd*, %struct.sd** %3, align 8
  %259 = getelementptr inbounds %struct.sd, %struct.sd* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  %260 = load %struct.sd*, %struct.sd** %3, align 8
  %261 = getelementptr inbounds %struct.sd, %struct.sd* %260, i32 0, i32 1
  store i32 1, i32* %261, align 8
  br label %262

262:                                              ; preds = %256, %251
  br label %263

263:                                              ; preds = %262, %244
  br label %319

264:                                              ; preds = %219, %215
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @LOW_EXP, align 4
  %267 = icmp sle i32 %265, %266
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* %8, align 4
  %271 = icmp sgt i32 %269, %270
  br i1 %271, label %272, label %313

272:                                              ; preds = %268, %264
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* @VERY_LOW_EXP, align 4
  %275 = icmp sle i32 %273, %274
  br i1 %275, label %276, label %294

276:                                              ; preds = %272
  %277 = load %struct.sd*, %struct.sd** %3, align 8
  %278 = getelementptr inbounds %struct.sd, %struct.sd* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %276
  %283 = load %struct.sd*, %struct.sd** %3, align 8
  %284 = getelementptr inbounds %struct.sd, %struct.sd* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 8
  br label %293

287:                                              ; preds = %276
  %288 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %289 = load %struct.sd*, %struct.sd** %3, align 8
  %290 = getelementptr inbounds %struct.sd, %struct.sd* %289, i32 0, i32 0
  store i64 %288, i64* %290, align 8
  %291 = load %struct.sd*, %struct.sd** %3, align 8
  %292 = getelementptr inbounds %struct.sd, %struct.sd* %291, i32 0, i32 1
  store i32 1, i32* %292, align 8
  br label %293

293:                                              ; preds = %287, %282
  br label %312

294:                                              ; preds = %272
  %295 = load %struct.sd*, %struct.sd** %3, align 8
  %296 = getelementptr inbounds %struct.sd, %struct.sd* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %294
  %301 = load %struct.sd*, %struct.sd** %3, align 8
  %302 = getelementptr inbounds %struct.sd, %struct.sd* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 8
  br label %311

305:                                              ; preds = %294
  %306 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %307 = load %struct.sd*, %struct.sd** %3, align 8
  %308 = getelementptr inbounds %struct.sd, %struct.sd* %307, i32 0, i32 0
  store i64 %306, i64* %308, align 8
  %309 = load %struct.sd*, %struct.sd** %3, align 8
  %310 = getelementptr inbounds %struct.sd, %struct.sd* %309, i32 0, i32 1
  store i32 1, i32* %310, align 8
  br label %311

311:                                              ; preds = %305, %300
  br label %312

312:                                              ; preds = %311, %293
  br label %318

313:                                              ; preds = %268
  %314 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %315 = ptrtoint i8* %314 to i64
  %316 = load %struct.sd*, %struct.sd** %3, align 8
  %317 = getelementptr inbounds %struct.sd, %struct.sd* %316, i32 0, i32 0
  store i64 %315, i64* %317, align 8
  br label %318

318:                                              ; preds = %313, %312
  br label %319

319:                                              ; preds = %318, %263
  br label %320

320:                                              ; preds = %319, %214
  %321 = load %struct.sd*, %struct.sd** %3, align 8
  %322 = getelementptr inbounds %struct.sd, %struct.sd* %321, i32 0, i32 4
  %323 = call i32 @atomic_read(i32* %322)
  store i32 %323, i32* %13, align 4
  %324 = load i32, i32* %13, align 4
  %325 = icmp sgt i32 %324, 30
  br i1 %325, label %329, label %326

326:                                              ; preds = %320
  %327 = load i32, i32* %13, align 4
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %329, label %330

329:                                              ; preds = %326, %320
  store i32 1, i32* %13, align 4
  br label %330

330:                                              ; preds = %329, %326
  %331 = load %struct.sd*, %struct.sd** %3, align 8
  %332 = getelementptr inbounds %struct.sd, %struct.sd* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %557, label %337

337:                                              ; preds = %330
  %338 = load %struct.sd*, %struct.sd** %3, align 8
  %339 = getelementptr inbounds %struct.sd, %struct.sd* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %349, label %343

343:                                              ; preds = %337
  %344 = load %struct.sd*, %struct.sd** %3, align 8
  %345 = getelementptr inbounds %struct.sd, %struct.sd* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @EXPOSURE_DARK, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %436

349:                                              ; preds = %343, %337
  %350 = load %struct.sd*, %struct.sd** %3, align 8
  %351 = getelementptr inbounds %struct.sd, %struct.sd* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @DARK_TIME, align 4
  %354 = load i32, i32* %13, align 4
  %355 = mul nsw i32 %353, %354
  %356 = icmp sge i32 %352, %355
  br i1 %356, label %357, label %436

357:                                              ; preds = %349
  %358 = load %struct.sd*, %struct.sd** %3, align 8
  %359 = getelementptr inbounds %struct.sd, %struct.sd* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = icmp slt i32 %362, 2
  br i1 %363, label %364, label %436

364:                                              ; preds = %357
  %365 = load %struct.sd*, %struct.sd** %3, align 8
  %366 = getelementptr inbounds %struct.sd, %struct.sd* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  store i32 1, i32* %14, align 4
  %371 = load i8****, i8***** @flicker_jumps, align 8
  %372 = load %struct.sd*, %struct.sd** %3, align 8
  %373 = getelementptr inbounds %struct.sd, %struct.sd* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds i8***, i8**** %371, i64 %374
  %376 = load i8***, i8**** %375, align 8
  %377 = load %struct.sd*, %struct.sd** %3, align 8
  %378 = getelementptr inbounds %struct.sd, %struct.sd* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = getelementptr inbounds i8**, i8*** %376, i64 %381
  %383 = load i8**, i8*** %382, align 8
  %384 = load %struct.sd*, %struct.sd** %3, align 8
  %385 = getelementptr inbounds %struct.sd, %struct.sd* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %383, i64 %389
  %391 = load i8*, i8** %390, align 8
  %392 = ptrtoint i8* %391 to i32
  %393 = load %struct.sd*, %struct.sd** %3, align 8
  %394 = getelementptr inbounds %struct.sd, %struct.sd* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 0
  store i32 %392, i32* %396, align 8
  store i32 1, i32* %16, align 4
  %397 = load %struct.sd*, %struct.sd** %3, align 8
  %398 = getelementptr inbounds %struct.sd, %struct.sd* %397, i32 0, i32 3
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = sub nsw i32 %401, 1
  store i32 %402, i32* %12, align 4
  br label %403

403:                                              ; preds = %408, %364
  %404 = load i32, i32* %12, align 4
  %405 = load i32, i32* %11, align 4
  %406 = sdiv i32 %405, 2
  %407 = icmp slt i32 %404, %406
  br i1 %407, label %408, label %416

408:                                              ; preds = %403
  %409 = load %struct.sd*, %struct.sd** %3, align 8
  %410 = getelementptr inbounds %struct.sd, %struct.sd* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %414, %413
  store i32 %415, i32* %12, align 4
  br label %403

416:                                              ; preds = %403
  %417 = load i32, i32* %12, align 4
  %418 = and i32 %417, 255
  %419 = load %struct.sd*, %struct.sd** %3, align 8
  %420 = getelementptr inbounds %struct.sd, %struct.sd* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 1
  store i32 %418, i32* %422, align 4
  %423 = load i32, i32* %12, align 4
  %424 = ashr i32 %423, 8
  %425 = load %struct.sd*, %struct.sd** %3, align 8
  %426 = getelementptr inbounds %struct.sd, %struct.sd* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 0
  store i32 %424, i32* %428, align 8
  store i32 1, i32* %15, align 4
  %429 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %430 = ptrtoint i8* %429 to i64
  %431 = load %struct.sd*, %struct.sd** %3, align 8
  %432 = getelementptr inbounds %struct.sd, %struct.sd* %431, i32 0, i32 0
  store i64 %430, i64* %432, align 8
  %433 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %434 = load i32, i32* @D_CONF, align 4
  %435 = call i32 @gspca_dbg(%struct.gspca_dev* %433, i32 %434, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %556

436:                                              ; preds = %357, %349, %343
  %437 = load %struct.sd*, %struct.sd** %3, align 8
  %438 = getelementptr inbounds %struct.sd, %struct.sd* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %448, label %442

442:                                              ; preds = %436
  %443 = load %struct.sd*, %struct.sd** %3, align 8
  %444 = getelementptr inbounds %struct.sd, %struct.sd* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %555

448:                                              ; preds = %442, %436
  %449 = load %struct.sd*, %struct.sd** %3, align 8
  %450 = getelementptr inbounds %struct.sd, %struct.sd* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @LIGHT_TIME, align 4
  %453 = load i32, i32* %13, align 4
  %454 = mul nsw i32 %452, %453
  %455 = icmp sge i32 %451, %454
  br i1 %455, label %456, label %555

456:                                              ; preds = %448
  %457 = load %struct.sd*, %struct.sd** %3, align 8
  %458 = getelementptr inbounds %struct.sd, %struct.sd* %457, i32 0, i32 3
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %555

463:                                              ; preds = %456
  %464 = call i64 @FIRMWARE_VERSION(i32 1, i32 2)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %468

466:                                              ; preds = %463
  %467 = load i32, i32* @MAX_EXP_102, align 4
  br label %470

468:                                              ; preds = %463
  %469 = load i32, i32* @MAX_EXP, align 4
  br label %470

470:                                              ; preds = %468, %466
  %471 = phi i32 [ %467, %466 ], [ %469, %468 ]
  store i32 %471, i32* %18, align 4
  %472 = load %struct.sd*, %struct.sd** %3, align 8
  %473 = getelementptr inbounds %struct.sd, %struct.sd* %472, i32 0, i32 3
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = add nsw i32 %476, -1
  store i32 %477, i32* %475, align 8
  store i32 1, i32* %14, align 4
  %478 = load i8****, i8***** @flicker_jumps, align 8
  %479 = load %struct.sd*, %struct.sd** %3, align 8
  %480 = getelementptr inbounds %struct.sd, %struct.sd* %479, i32 0, i32 2
  %481 = load i64, i64* %480, align 8
  %482 = getelementptr inbounds i8***, i8**** %478, i64 %481
  %483 = load i8***, i8**** %482, align 8
  %484 = load %struct.sd*, %struct.sd** %3, align 8
  %485 = getelementptr inbounds %struct.sd, %struct.sd* %484, i32 0, i32 3
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = getelementptr inbounds i8**, i8*** %483, i64 %488
  %490 = load i8**, i8*** %489, align 8
  %491 = load %struct.sd*, %struct.sd** %3, align 8
  %492 = getelementptr inbounds %struct.sd, %struct.sd* %491, i32 0, i32 3
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8*, i8** %490, i64 %496
  %498 = load i8*, i8** %497, align 8
  %499 = ptrtoint i8* %498 to i32
  %500 = load %struct.sd*, %struct.sd** %3, align 8
  %501 = getelementptr inbounds %struct.sd, %struct.sd* %500, i32 0, i32 3
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %502, i32 0, i32 0
  store i32 %499, i32* %503, align 8
  store i32 1, i32* %16, align 4
  %504 = load %struct.sd*, %struct.sd** %3, align 8
  %505 = getelementptr inbounds %struct.sd, %struct.sd* %504, i32 0, i32 3
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = sub nsw i32 %508, 1
  store i32 %509, i32* %12, align 4
  br label %510

510:                                              ; preds = %527, %470
  %511 = load i32, i32* %12, align 4
  %512 = load i32, i32* %11, align 4
  %513 = mul nsw i32 2, %512
  %514 = icmp slt i32 %511, %513
  br i1 %514, label %515, label %525

515:                                              ; preds = %510
  %516 = load i32, i32* %12, align 4
  %517 = load %struct.sd*, %struct.sd** %3, align 8
  %518 = getelementptr inbounds %struct.sd, %struct.sd* %517, i32 0, i32 3
  %519 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = add nsw i32 %516, %521
  %523 = load i32, i32* %18, align 4
  %524 = icmp slt i32 %522, %523
  br label %525

525:                                              ; preds = %515, %510
  %526 = phi i1 [ false, %510 ], [ %524, %515 ]
  br i1 %526, label %527, label %535

527:                                              ; preds = %525
  %528 = load %struct.sd*, %struct.sd** %3, align 8
  %529 = getelementptr inbounds %struct.sd, %struct.sd* %528, i32 0, i32 3
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load i32, i32* %12, align 4
  %534 = add nsw i32 %533, %532
  store i32 %534, i32* %12, align 4
  br label %510

535:                                              ; preds = %525
  %536 = load i32, i32* %12, align 4
  %537 = and i32 %536, 255
  %538 = load %struct.sd*, %struct.sd** %3, align 8
  %539 = getelementptr inbounds %struct.sd, %struct.sd* %538, i32 0, i32 3
  %540 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %540, i32 0, i32 1
  store i32 %537, i32* %541, align 4
  %542 = load i32, i32* %12, align 4
  %543 = ashr i32 %542, 8
  %544 = load %struct.sd*, %struct.sd** %3, align 8
  %545 = getelementptr inbounds %struct.sd, %struct.sd* %544, i32 0, i32 3
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 0
  store i32 %543, i32* %547, align 8
  store i32 1, i32* %15, align 4
  %548 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %549 = ptrtoint i8* %548 to i64
  %550 = load %struct.sd*, %struct.sd** %3, align 8
  %551 = getelementptr inbounds %struct.sd, %struct.sd* %550, i32 0, i32 0
  store i64 %549, i64* %551, align 8
  %552 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %553 = load i32, i32* @D_CONF, align 4
  %554 = call i32 @gspca_dbg(%struct.gspca_dev* %552, i32 %553, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %555

555:                                              ; preds = %535, %456, %448, %442
  br label %556

556:                                              ; preds = %555, %416
  br label %676

557:                                              ; preds = %330
  %558 = load %struct.sd*, %struct.sd** %3, align 8
  %559 = getelementptr inbounds %struct.sd, %struct.sd* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %569, label %563

563:                                              ; preds = %557
  %564 = load %struct.sd*, %struct.sd** %3, align 8
  %565 = getelementptr inbounds %struct.sd, %struct.sd* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* @EXPOSURE_DARK, align 8
  %568 = icmp eq i64 %566, %567
  br i1 %568, label %569, label %612

569:                                              ; preds = %563, %557
  %570 = load %struct.sd*, %struct.sd** %3, align 8
  %571 = getelementptr inbounds %struct.sd, %struct.sd* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* @DARK_TIME, align 4
  %574 = load i32, i32* %13, align 4
  %575 = mul nsw i32 %573, %574
  %576 = icmp sge i32 %572, %575
  br i1 %576, label %577, label %612

577:                                              ; preds = %569
  %578 = load %struct.sd*, %struct.sd** %3, align 8
  %579 = getelementptr inbounds %struct.sd, %struct.sd* %578, i32 0, i32 3
  %580 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = icmp slt i32 %582, 2
  br i1 %583, label %584, label %612

584:                                              ; preds = %577
  %585 = load %struct.sd*, %struct.sd** %3, align 8
  %586 = getelementptr inbounds %struct.sd, %struct.sd* %585, i32 0, i32 3
  %587 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %586, i32 0, i32 1
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %588, align 8
  store i32 1, i32* %14, align 4
  %591 = load %struct.sd*, %struct.sd** %3, align 8
  %592 = getelementptr inbounds %struct.sd, %struct.sd* %591, i32 0, i32 3
  %593 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %593, i32 0, i32 2
  %595 = load i64, i64* %594, align 8
  %596 = icmp sgt i64 %595, 0
  br i1 %596, label %597, label %604

597:                                              ; preds = %584
  %598 = load %struct.sd*, %struct.sd** %3, align 8
  %599 = getelementptr inbounds %struct.sd, %struct.sd* %598, i32 0, i32 3
  %600 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %600, i32 0, i32 2
  %602 = load i64, i64* %601, align 8
  %603 = add nsw i64 %602, -1
  store i64 %603, i64* %601, align 8
  store i32 1, i32* %15, align 4
  br label %604

604:                                              ; preds = %597, %584
  %605 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %606 = ptrtoint i8* %605 to i64
  %607 = load %struct.sd*, %struct.sd** %3, align 8
  %608 = getelementptr inbounds %struct.sd, %struct.sd* %607, i32 0, i32 0
  store i64 %606, i64* %608, align 8
  %609 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %610 = load i32, i32* @D_CONF, align 4
  %611 = call i32 @gspca_dbg(%struct.gspca_dev* %609, i32 %610, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %675

612:                                              ; preds = %577, %569, %563
  %613 = load %struct.sd*, %struct.sd** %3, align 8
  %614 = getelementptr inbounds %struct.sd, %struct.sd* %613, i32 0, i32 0
  %615 = load i64, i64* %614, align 8
  %616 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %617 = icmp eq i64 %615, %616
  br i1 %617, label %624, label %618

618:                                              ; preds = %612
  %619 = load %struct.sd*, %struct.sd** %3, align 8
  %620 = getelementptr inbounds %struct.sd, %struct.sd* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %623 = icmp eq i64 %621, %622
  br i1 %623, label %624, label %674

624:                                              ; preds = %618, %612
  %625 = load %struct.sd*, %struct.sd** %3, align 8
  %626 = getelementptr inbounds %struct.sd, %struct.sd* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 8
  %628 = load i32, i32* @LIGHT_TIME, align 4
  %629 = load i32, i32* %13, align 4
  %630 = mul nsw i32 %628, %629
  %631 = icmp sge i32 %627, %630
  br i1 %631, label %632, label %674

632:                                              ; preds = %624
  %633 = load %struct.sd*, %struct.sd** %3, align 8
  %634 = getelementptr inbounds %struct.sd, %struct.sd* %633, i32 0, i32 3
  %635 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = icmp sgt i32 %637, 0
  br i1 %638, label %639, label %674

639:                                              ; preds = %632
  %640 = load %struct.sd*, %struct.sd** %3, align 8
  %641 = getelementptr inbounds %struct.sd, %struct.sd* %640, i32 0, i32 3
  %642 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %641, i32 0, i32 1
  %643 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 8
  %645 = add nsw i32 %644, -1
  store i32 %645, i32* %643, align 8
  store i32 1, i32* %14, align 4
  %646 = load %struct.sd*, %struct.sd** %3, align 8
  %647 = getelementptr inbounds %struct.sd, %struct.sd* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %648, i32 0, i32 2
  %650 = load i64, i64* %649, align 8
  %651 = load %struct.sd*, %struct.sd** %3, align 8
  %652 = getelementptr inbounds %struct.sd, %struct.sd* %651, i32 0, i32 3
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %653, i32 0, i32 3
  %655 = load i32, i32* %654, align 8
  %656 = sub nsw i32 %655, 1
  %657 = sext i32 %656 to i64
  %658 = icmp slt i64 %650, %657
  br i1 %658, label %659, label %666

659:                                              ; preds = %639
  %660 = load %struct.sd*, %struct.sd** %3, align 8
  %661 = getelementptr inbounds %struct.sd, %struct.sd* %660, i32 0, i32 3
  %662 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %661, i32 0, i32 0
  %663 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i32 0, i32 2
  %664 = load i64, i64* %663, align 8
  %665 = add nsw i64 %664, 1
  store i64 %665, i64* %663, align 8
  store i32 1, i32* %15, align 4
  br label %666

666:                                              ; preds = %659, %639
  %667 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %668 = ptrtoint i8* %667 to i64
  %669 = load %struct.sd*, %struct.sd** %3, align 8
  %670 = getelementptr inbounds %struct.sd, %struct.sd* %669, i32 0, i32 0
  store i64 %668, i64* %670, align 8
  %671 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %672 = load i32, i32* @D_CONF, align 4
  %673 = call i32 @gspca_dbg(%struct.gspca_dev* %671, i32 %672, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %674

674:                                              ; preds = %666, %632, %624, %618
  br label %675

675:                                              ; preds = %674, %604
  br label %676

676:                                              ; preds = %675, %556
  %677 = load i32, i32* %15, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %682

679:                                              ; preds = %676
  %680 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %681 = call i32 @command_setexposure(%struct.gspca_dev* %680)
  br label %682

682:                                              ; preds = %679, %676
  %683 = load i32, i32* %14, align 4
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %682
  %686 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %687 = call i32 @command_setsensorfps(%struct.gspca_dev* %686)
  br label %688

688:                                              ; preds = %685, %682
  %689 = load i32, i32* %16, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %694

691:                                              ; preds = %688
  %692 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %693 = call i32 @command_setflickerctrl(%struct.gspca_dev* %692)
  br label %694

694:                                              ; preds = %38, %691, %688
  ret void
}

declare dso_local i32 @cpia_usb_transferCmd(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @FIRMWARE_VERSION(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @command_setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @command_setsensorfps(%struct.gspca_dev*) #1

declare dso_local i32 @command_setflickerctrl(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
