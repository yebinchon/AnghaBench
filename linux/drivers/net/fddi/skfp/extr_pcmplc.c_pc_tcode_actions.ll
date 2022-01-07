; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_pc_tcode_actions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_pc_tcode_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.s_phy = type { i32, i32*, i32, i32, i8*, i32, i32, %struct.fddi_mib_p* }
%struct.fddi_mib_p = type { i32, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@POLICY_AA = common dso_local global i32 0, align 4
@POLICY_AB = common dso_local global i32 0, align 4
@POLICY_AS = common dso_local global i32 0, align 4
@POLICY_AM = common dso_local global i32 0, align 4
@POLICY_BA = common dso_local global i32 0, align 4
@POLICY_BB = common dso_local global i32 0, align 4
@POLICY_BS = common dso_local global i32 0, align 4
@POLICY_BM = common dso_local global i32 0, align 4
@POLICY_SA = common dso_local global i32 0, align 4
@POLICY_SB = common dso_local global i32 0, align 4
@POLICY_SS = common dso_local global i32 0, align 4
@POLICY_SM = common dso_local global i32 0, align 4
@POLICY_MA = common dso_local global i32 0, align 4
@POLICY_MB = common dso_local global i32 0, align 4
@POLICY_MS = common dso_local global i32 0, align 4
@POLICY_MM = common dso_local global i32 0, align 4
@SMT_EVENT_PORT_CONNECTION = common dso_local global i32 0, align 4
@INDEX_PORT = common dso_local global i32 0, align 4
@PC_WH_NONE = common dso_local global i32 0, align 4
@PCM_CONNECTING = common dso_local global i32 0, align 4
@PCM_STANDBY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"PCM %c : E104 LCT failed\00", align 1
@EVENT_PCM = common dso_local global i32 0, align 4
@PC_START = common dso_local global i32 0, align 4
@PM_TREE = common dso_local global i32 0, align 4
@PB = common dso_local global i32 0, align 4
@PA = common dso_local global i32 0, align 4
@PCM_ACTIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"SIG snd %x %x:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32, %struct.s_phy*)* @pc_tcode_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc_tcode_actions(%struct.s_smc* %0, i32 %1, %struct.s_phy* %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fddi_mib_p*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.s_phy* %2, %struct.s_phy** %6, align 8
  %12 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %13 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %16 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %15, i32 0, i32 7
  %17 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %16, align 8
  store %struct.fddi_mib_p* %17, %struct.fddi_mib_p** %8, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %493 [
    i32 0, label %19
    i32 1, label %24
    i32 2, label %45
    i32 3, label %66
    i32 4, label %283
    i32 5, label %350
    i32 6, label %351
    i32 7, label %356
    i32 8, label %382
    i32 9, label %387
  ]

19:                                               ; preds = %3
  %20 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %21 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %23, align 4
  br label %493

24:                                               ; preds = %3
  %25 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %26 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %31 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 129
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %24
  %35 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %36 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 1, i32* %38, align 4
  br label %44

39:                                               ; preds = %29
  %40 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %41 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %34
  br label %493

45:                                               ; preds = %3
  %46 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %47 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 130
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %52 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45
  %56 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %57 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 1, i32* %59, align 4
  br label %65

60:                                               ; preds = %50
  %61 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %62 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %493

66:                                               ; preds = %3
  %67 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %68 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %71 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %74 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %78 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %237 [
    i32 131, label %82
    i32 130, label %120
    i32 128, label %158
    i32 129, label %196
  ]

82:                                               ; preds = %66
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @POLICY_AA, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 131
  br i1 %89, label %114, label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @POLICY_AB, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 130
  br i1 %97, label %114, label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @POLICY_AS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 128
  br i1 %105, label %114, label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @POLICY_AM, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 129
  br i1 %113, label %114, label %119

114:                                              ; preds = %111, %103, %95, %87
  %115 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %116 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %111, %106
  br label %237

120:                                              ; preds = %66
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @POLICY_BA, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 131
  br i1 %127, label %152, label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @POLICY_BB, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %134, 130
  br i1 %135, label %152, label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @POLICY_BS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %152, label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @POLICY_BM, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, 129
  br i1 %151, label %152, label %157

152:                                              ; preds = %149, %141, %133, %125
  %153 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %154 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %152, %149, %144
  br label %237

158:                                              ; preds = %66
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @POLICY_SA, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* %10, align 4
  %165 = icmp eq i32 %164, 131
  br i1 %165, label %190, label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @POLICY_SB, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 130
  br i1 %173, label %190, label %174

174:                                              ; preds = %171, %166
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @POLICY_SS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %10, align 4
  %181 = icmp eq i32 %180, 128
  br i1 %181, label %190, label %182

182:                                              ; preds = %179, %174
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @POLICY_SM, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 129
  br i1 %189, label %190, label %195

190:                                              ; preds = %187, %179, %171, %163
  %191 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %192 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %190, %187, %182
  br label %237

196:                                              ; preds = %66
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 129
  br i1 %198, label %231, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @POLICY_MA, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %205, 131
  br i1 %206, label %231, label %207

207:                                              ; preds = %204, %199
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @POLICY_MB, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i32, i32* %10, align 4
  %214 = icmp eq i32 %213, 130
  br i1 %214, label %231, label %215

215:                                              ; preds = %212, %207
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @POLICY_MS, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load i32, i32* %10, align 4
  %222 = icmp eq i32 %221, 128
  br i1 %222, label %231, label %223

223:                                              ; preds = %220, %215
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @POLICY_MM, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load i32, i32* %10, align 4
  %230 = icmp eq i32 %229, 129
  br i1 %230, label %231, label %236

231:                                              ; preds = %228, %220, %212, %204, %196
  %232 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %233 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %228, %223
  br label %237

237:                                              ; preds = %66, %236, %195, %157, %119
  %238 = load i32, i32* %9, align 4
  %239 = icmp eq i32 %238, 131
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* %10, align 4
  %242 = icmp eq i32 %241, 131
  br i1 %242, label %273, label %243

243:                                              ; preds = %240, %237
  %244 = load i32, i32* %9, align 4
  %245 = icmp eq i32 %244, 131
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %10, align 4
  %248 = icmp eq i32 %247, 128
  br i1 %248, label %273, label %249

249:                                              ; preds = %246, %243
  %250 = load i32, i32* %9, align 4
  %251 = icmp eq i32 %250, 130
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* %10, align 4
  %254 = icmp eq i32 %253, 130
  br i1 %254, label %273, label %255

255:                                              ; preds = %252, %249
  %256 = load i32, i32* %9, align 4
  %257 = icmp eq i32 %256, 130
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* %10, align 4
  %260 = icmp eq i32 %259, 128
  br i1 %260, label %273, label %261

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %9, align 4
  %263 = icmp eq i32 %262, 128
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %10, align 4
  %266 = icmp eq i32 %265, 131
  br i1 %266, label %273, label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %9, align 4
  %269 = icmp eq i32 %268, 128
  br i1 %269, label %270, label %282

270:                                              ; preds = %267
  %271 = load i32, i32* %10, align 4
  %272 = icmp eq i32 %271, 130
  br i1 %272, label %273, label %282

273:                                              ; preds = %270, %264, %258, %252, %246, %240
  %274 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %275 = load i32, i32* @SMT_EVENT_PORT_CONNECTION, align 4
  %276 = load i32, i32* @INDEX_PORT, align 4
  %277 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %278 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %276, %279
  %281 = call i32 @smt_srf_event(%struct.s_smc* %274, i32 %275, i32 %280, i32 0)
  br label %282

282:                                              ; preds = %273, %270, %267
  br label %493

283:                                              ; preds = %3
  %284 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %285 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @PC_WH_NONE, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %337

289:                                              ; preds = %283
  %290 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %291 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %289
  %295 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %296 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 4
  store i32 1, i32* %298, align 4
  %299 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %300 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 5
  store i32 0, i32* %302, align 4
  br label %333

303:                                              ; preds = %289
  %304 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %305 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 4
  store i32 0, i32* %307, align 4
  %308 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %309 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 4
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %303
  %313 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %314 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 5
  store i32 1, i32* %316, align 4
  br label %322

317:                                              ; preds = %303
  %318 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %319 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 5
  store i32 0, i32* %321, align 4
  br label %322

322:                                              ; preds = %317, %312
  %323 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %324 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %329 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 5
  store i32 1, i32* %331, align 4
  br label %332

332:                                              ; preds = %327, %322
  br label %333

333:                                              ; preds = %332, %294
  %334 = load i32, i32* @PCM_CONNECTING, align 4
  %335 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %336 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 4
  br label %349

337:                                              ; preds = %283
  %338 = load i32, i32* @PCM_STANDBY, align 4
  %339 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %340 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %339, i32 0, i32 4
  store i32 %338, i32* %340, align 4
  %341 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %342 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  store i32 1, i32* %344, align 4
  %345 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %346 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 5
  store i32 1, i32* %348, align 4
  br label %349

349:                                              ; preds = %337, %333
  br label %493

350:                                              ; preds = %3
  br label %493

351:                                              ; preds = %3
  %352 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %353 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 6
  store i32 0, i32* %355, align 4
  br label %493

356:                                              ; preds = %3
  %357 = load i8*, i8** @FALSE, align 8
  %358 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %359 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %358, i32 0, i32 4
  store i8* %357, i8** %359, align 8
  %360 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %361 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %362 = call i32 @lem_check_lct(%struct.s_smc* %360, %struct.s_phy* %361)
  %363 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %364 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %363, i32 0, i32 6
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %376

367:                                              ; preds = %356
  %368 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %369 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 8
  %371 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %370)
  %372 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %373 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 7
  store i32 1, i32* %375, align 4
  br label %381

376:                                              ; preds = %356
  %377 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %378 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 7
  store i32 0, i32* %380, align 4
  br label %381

381:                                              ; preds = %376, %367
  br label %493

382:                                              ; preds = %3
  %383 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %384 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 8
  store i32 0, i32* %386, align 4
  br label %493

387:                                              ; preds = %3
  %388 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %389 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %388, i32 0, i32 4
  store i8* null, i8** %389, align 8
  %390 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %391 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @PC_WH_NONE, align 4
  %394 = icmp ne i32 %392, %393
  br i1 %394, label %406, label %395

395:                                              ; preds = %387
  %396 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %397 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = icmp eq i32 %399, 134
  br i1 %400, label %401, label %413

401:                                              ; preds = %395
  %402 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %403 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %401, %387
  %407 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %408 = load i32, i32* @EVENT_PCM, align 4
  %409 = load i32, i32* %7, align 4
  %410 = add nsw i32 %408, %409
  %411 = load i32, i32* @PC_START, align 4
  %412 = call i32 @queue_event(%struct.s_smc* %407, i32 %410, i32 %411)
  br label %493

413:                                              ; preds = %401, %395
  %414 = load i8*, i8** @FALSE, align 8
  %415 = ptrtoint i8* %414 to i32
  %416 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %417 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %416, i32 0, i32 1
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 9
  store i32 %415, i32* %419, align 4
  %420 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %421 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  switch i32 %423, label %484 [
    i32 134, label %424
    i32 132, label %472
  ]

424:                                              ; preds = %413
  %425 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %426 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* @PM_TREE, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %459

430:                                              ; preds = %424
  %431 = load i32, i32* %7, align 4
  %432 = load i32, i32* @PB, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %451, label %434

434:                                              ; preds = %430
  %435 = load i32, i32* %7, align 4
  %436 = load i32, i32* @PA, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %458

438:                                              ; preds = %434
  %439 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %440 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %439, i32 0, i32 0
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %440, align 8
  %442 = load i32, i32* @PB, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* @PCM_ACTIVE, align 4
  %450 = icmp ne i32 %448, %449
  br i1 %450, label %451, label %458

451:                                              ; preds = %438, %430
  %452 = load i8*, i8** @TRUE, align 8
  %453 = ptrtoint i8* %452 to i32
  %454 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %455 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %454, i32 0, i32 1
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 9
  store i32 %453, i32* %457, align 4
  br label %458

458:                                              ; preds = %451, %438, %434
  br label %471

459:                                              ; preds = %424
  %460 = load i32, i32* %7, align 4
  %461 = load i32, i32* @PB, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %470

463:                                              ; preds = %459
  %464 = load i8*, i8** @TRUE, align 8
  %465 = ptrtoint i8* %464 to i32
  %466 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %467 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %466, i32 0, i32 1
  %468 = load i32*, i32** %467, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 9
  store i32 %465, i32* %469, align 4
  br label %470

470:                                              ; preds = %463, %459
  br label %471

471:                                              ; preds = %470, %458
  br label %484

472:                                              ; preds = %413
  %473 = load i32, i32* %7, align 4
  %474 = load i32, i32* @PS, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %483

476:                                              ; preds = %472
  %477 = load i8*, i8** @TRUE, align 8
  %478 = ptrtoint i8* %477 to i32
  %479 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %480 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %479, i32 0, i32 1
  %481 = load i32*, i32** %480, align 8
  %482 = getelementptr inbounds i32, i32* %481, i64 9
  store i32 %478, i32* %482, align 4
  br label %483

483:                                              ; preds = %476, %472
  br label %484

484:                                              ; preds = %413, %483, %471
  %485 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %486 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %485, i32 0, i32 1
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 9
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %8, align 8
  %491 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 0
  store i32 %489, i32* %492, align 4
  br label %493

493:                                              ; preds = %3, %484, %406, %382, %381, %351, %350, %349, %282, %65, %44, %19
  %494 = load i32, i32* %5, align 4
  %495 = load %struct.s_phy*, %struct.s_phy** %6, align 8
  %496 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %495, i32 0, i32 1
  %497 = load i32*, i32** %496, align 8
  %498 = load i32, i32* %5, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %494, i32 %501)
  ret void
}

declare dso_local i32 @smt_srf_event(%struct.s_smc*, i32, i32, i32) #1

declare dso_local i32 @lem_check_lct(%struct.s_smc*, %struct.s_phy*) #1

declare dso_local i32 @DB_PCMN(i32, i8*, i32, ...) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
