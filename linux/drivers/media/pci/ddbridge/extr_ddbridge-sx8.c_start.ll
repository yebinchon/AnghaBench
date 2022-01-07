; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.sx8* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32 }
%struct.sx8 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.mci_base* }
%struct.mci_base = type { i32, i32 }
%struct.sx8_base = type { i32, i32*, i32*, i32*, i64 }
%struct.mci_command = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SX8_DEMOD_NUM = common dso_local global i32 0, align 4
@MAX_LDPC_BITRATE = common dso_local global i32 0, align 4
@SX8_TSCONFIG_MODE_MASK = common dso_local global i32 0, align 4
@SX8_TSCONFIG_MODE_NORMAL = common dso_local global i32 0, align 4
@MAX_DEMOD_LDPC_BITRATE = common dso_local global i32 0, align 4
@SX8_CMD_ENABLE_IQOUTPUT = common dso_local global i32 0, align 4
@NO_STREAM_ID_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MCI-%d: tuner=%d demod=%d\0A\00", align 1
@MCI_CMD_SEARCH_DVBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sx8*, align 8
  %11 = alloca %struct.mci_base*, align 8
  %12 = alloca %struct.sx8_base*, align 8
  %13 = alloca %struct.dtv_frontend_properties*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mci_command, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 1
  %25 = load %struct.sx8*, %struct.sx8** %24, align 8
  store %struct.sx8* %25, %struct.sx8** %10, align 8
  %26 = load %struct.sx8*, %struct.sx8** %10, align 8
  %27 = getelementptr inbounds %struct.sx8, %struct.sx8* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load %struct.mci_base*, %struct.mci_base** %28, align 8
  store %struct.mci_base* %29, %struct.mci_base** %11, align 8
  %30 = load %struct.mci_base*, %struct.mci_base** %11, align 8
  %31 = bitcast %struct.mci_base* %30 to %struct.sx8_base*
  store %struct.sx8_base* %31, %struct.sx8_base** %12, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  store %struct.dtv_frontend_properties* %33, %struct.dtv_frontend_properties** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %34 = load %struct.sx8*, %struct.sx8** %10, align 8
  %35 = getelementptr inbounds %struct.sx8, %struct.sx8* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MCLK, align 4
  %42 = sdiv i32 %41, 2
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, -2
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %421

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %22, align 4
  store i32 1, i32* %19, align 4
  br label %60

60:                                               ; preds = %64, %58
  %61 = load i32, i32* %22, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %22, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  br label %60

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.mci_base*, %struct.mci_base** %11, align 8
  %72 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %71, i32 0, i32 1
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %75 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %21, align 4
  br label %284

81:                                               ; preds = %70
  %82 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %83 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MCLK, align 4
  %91 = sdiv i32 %90, 2
  %92 = icmp sge i32 %89, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.sx8*, %struct.sx8** %10, align 8
  %95 = getelementptr inbounds %struct.sx8, %struct.sx8* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.sx8*, %struct.sx8** %10, align 8
  %101 = getelementptr inbounds %struct.sx8, %struct.sx8* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %20, align 4
  br label %104

104:                                              ; preds = %99, %93
  br label %110

105:                                              ; preds = %86
  %106 = load %struct.sx8*, %struct.sx8** %10, align 8
  %107 = getelementptr inbounds %struct.sx8, %struct.sx8* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %105, %104
  br label %227

111:                                              ; preds = %81
  store i32 0, i32* %20, align 4
  br label %112

112:                                              ; preds = %138, %111
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* @SX8_DEMOD_NUM, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %118 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %127 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %134, %116
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %20, align 4
  br label %112

141:                                              ; preds = %112
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @MAX_LDPC_BITRATE, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %154, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @SX8_TSCONFIG_MODE_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @SX8_TSCONFIG_MODE_NORMAL, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load i32, i32* %16, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151, %141
  %155 = load i32, i32* @EBUSY, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %21, align 4
  br label %284

157:                                              ; preds = %151, %145
  %158 = load i32, i32* @MAX_LDPC_BITRATE, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @MAX_DEMOD_LDPC_BITRATE, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* @MAX_DEMOD_LDPC_BITRATE, align 4
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %164, %157
  br label %167

167:                                              ; preds = %175, %166
  %168 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %169 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %19, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %15, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %19, align 4
  br label %167

178:                                              ; preds = %167
  %179 = load i32, i32* %19, align 4
  %180 = icmp slt i32 %179, 2
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* @EBUSY, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %21, align 4
  br label %284

184:                                              ; preds = %178
  %185 = load i32, i32* %19, align 4
  %186 = sub nsw i32 %185, 1
  %187 = shl i32 1, %186
  %188 = sub nsw i32 %187, 1
  %189 = load i32, i32* %8, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, 2
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %184
  %195 = load i32, i32* %8, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @EBUSY, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %21, align 4
  br label %284

200:                                              ; preds = %194, %184
  %201 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %202 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @MCLK, align 4
  %205 = sdiv i32 %204, 2
  %206 = icmp sgt i32 %203, %205
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i32 3, i32 7
  store i32 %208, i32* %20, align 4
  br label %209

209:                                              ; preds = %223, %200
  %210 = load i32, i32* %20, align 4
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %214 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br label %221

221:                                              ; preds = %212, %209
  %222 = phi i1 [ false, %209 ], [ %220, %212 ]
  br i1 %222, label %223, label %226

223:                                              ; preds = %221
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %20, align 4
  br label %209

226:                                              ; preds = %221
  br label %227

227:                                              ; preds = %226, %110
  %228 = load i32, i32* %20, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32, i32* @EBUSY, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %21, align 4
  br label %284

233:                                              ; preds = %227
  %234 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %235 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 1, i32* %239, align 4
  %240 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %241 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %19, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %246 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.sx8*, %struct.sx8** %10, align 8
  %249 = getelementptr inbounds %struct.sx8, %struct.sx8* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %247, i64 %252
  store i32 %244, i32* %253, align 4
  %254 = load i32, i32* %20, align 4
  %255 = load %struct.sx8*, %struct.sx8** %10, align 8
  %256 = getelementptr inbounds %struct.sx8, %struct.sx8* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 2
  store i32 %254, i32* %257, align 8
  %258 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %259 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %18, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %233
  %267 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %268 = load i32, i32* %18, align 4
  %269 = call i32 @mci_set_tuner(%struct.dvb_frontend* %267, i32 %268, i32 1)
  br label %270

270:                                              ; preds = %266, %233
  %271 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %272 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %18, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp sgt i32 %279, 1
  %281 = zext i1 %280 to i32
  %282 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %283 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %270, %230, %197, %181, %154, %78
  %285 = load %struct.mci_base*, %struct.mci_base** %11, align 8
  %286 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %285, i32 0, i32 1
  %287 = call i32 @mutex_unlock(i32* %286)
  %288 = load i32, i32* %21, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %284
  %291 = load i32, i32* %21, align 4
  store i32 %291, i32* %5, align 4
  br label %421

292:                                              ; preds = %284
  %293 = call i32 @memset(%struct.mci_command* %17, i32 0, i32 44)
  %294 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %295 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %314

298:                                              ; preds = %292
  %299 = load i32, i32* @SX8_CMD_ENABLE_IQOUTPUT, align 4
  %300 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 4
  store i32 %299, i32* %300, align 4
  %301 = load %struct.sx8*, %struct.sx8** %10, align 8
  %302 = getelementptr inbounds %struct.sx8, %struct.sx8* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 0
  store i32 %304, i32* %305, align 4
  %306 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 1
  store i32 0, i32* %306, align 4
  %307 = load %struct.sx8*, %struct.sx8** %10, align 8
  %308 = getelementptr inbounds %struct.sx8, %struct.sx8* %307, i32 0, i32 0
  %309 = call i32 @ddb_mci_cmd(%struct.TYPE_5__* %308, %struct.mci_command* %17, i32* null)
  %310 = load %struct.sx8*, %struct.sx8** %10, align 8
  %311 = getelementptr inbounds %struct.sx8, %struct.sx8* %310, i32 0, i32 0
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @ddb_mci_config(%struct.TYPE_5__* %311, i32 %312)
  br label %314

314:                                              ; preds = %298, %292
  %315 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %316 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @NO_STREAM_ID_FILTER, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %328

320:                                              ; preds = %314
  %321 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %322 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, -2147483648
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* %7, align 4
  %327 = or i32 %326, 128
  store i32 %327, i32* %7, align 4
  br label %328

328:                                              ; preds = %325, %320, %314
  %329 = load %struct.mci_base*, %struct.mci_base** %11, align 8
  %330 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.sx8*, %struct.sx8** %10, align 8
  %333 = getelementptr inbounds %struct.sx8, %struct.sx8* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = load %struct.sx8*, %struct.sx8** %10, align 8
  %338 = getelementptr inbounds %struct.sx8, %struct.sx8* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.sx8*, %struct.sx8** %10, align 8
  %342 = getelementptr inbounds %struct.sx8, %struct.sx8* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @dev_dbg(i32 %331, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %336, i32 %340, i32 %344)
  %346 = load i32, i32* @MCI_CMD_SEARCH_DVBS, align 4
  %347 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 4
  store i32 %346, i32* %347, align 4
  %348 = load i32, i32* %7, align 4
  %349 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* %8, align 4
  %352 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 4
  %354 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 2
  store i32 2, i32* %355, align 4
  %356 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %357 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = mul nsw i32 %358, 1000
  %360 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 3
  store i32 %359, i32* %361, align 4
  %362 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %363 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 4
  %367 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %368 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, -2147483648
  %371 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 5
  store i32 %370, i32* %372, align 4
  %373 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %374 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @NO_STREAM_ID_FILTER, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %328
  %379 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %380 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  br label %383

382:                                              ; preds = %328
  br label %383

383:                                              ; preds = %382, %378
  %384 = phi i32 [ %381, %378 ], [ 0, %382 ]
  %385 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 6
  store i32 %384, i32* %386, align 4
  %387 = load %struct.sx8*, %struct.sx8** %10, align 8
  %388 = getelementptr inbounds %struct.sx8, %struct.sx8* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 2
  store i32 %390, i32* %391, align 4
  %392 = load %struct.sx8*, %struct.sx8** %10, align 8
  %393 = getelementptr inbounds %struct.sx8, %struct.sx8* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 0
  store i32 %395, i32* %396, align 4
  %397 = load %struct.sx8*, %struct.sx8** %10, align 8
  %398 = getelementptr inbounds %struct.sx8, %struct.sx8* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 1
  store i32 %400, i32* %401, align 4
  %402 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %403 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, -2147483648
  br i1 %405, label %406, label %410

406:                                              ; preds = %383
  %407 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %17, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, 128
  store i32 %409, i32* %407, align 4
  br label %410

410:                                              ; preds = %406, %383
  %411 = load %struct.sx8*, %struct.sx8** %10, align 8
  %412 = getelementptr inbounds %struct.sx8, %struct.sx8* %411, i32 0, i32 0
  %413 = call i32 @ddb_mci_cmd(%struct.TYPE_5__* %412, %struct.mci_command* %17, i32* null)
  store i32 %413, i32* %21, align 4
  %414 = load i32, i32* %21, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %410
  %417 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %418 = call i32 @stop(%struct.dvb_frontend* %417)
  br label %419

419:                                              ; preds = %416, %410
  %420 = load i32, i32* %21, align 4
  store i32 %420, i32* %5, align 4
  br label %421

421:                                              ; preds = %419, %290, %51
  %422 = load i32, i32* %5, align 4
  ret i32 %422
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mci_set_tuner(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.mci_command*, i32, i32) #1

declare dso_local i32 @ddb_mci_cmd(%struct.TYPE_5__*, %struct.mci_command*, i32*) #1

declare dso_local i32 @ddb_mci_config(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @stop(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
