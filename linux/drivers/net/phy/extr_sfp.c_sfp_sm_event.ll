; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"SM: enter %s:%s:%s event %s\0A\00", align 1
@SFP_E_INSERT = common dso_local global i32 0, align 4
@T_PROBE_INIT = common dso_local global i32 0, align 4
@SFP_E_REMOVE = common dso_local global i32 0, align 4
@SFP_MOD_EMPTY = common dso_local global i32 0, align 4
@SFP_E_TIMEOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@T_PROBE_RETRY = common dso_local global i32 0, align 4
@SFP_E_DEV_UP = common dso_local global i32 0, align 4
@SFP_E_DEV_DOWN = common dso_local global i32 0, align 4
@SFP_DEV_DOWN = common dso_local global i32 0, align 4
@SFP_F_TX_FAULT = common dso_local global i32 0, align 4
@SFP_E_TX_CLEAR = common dso_local global i32 0, align 4
@SFP_E_TX_FAULT = common dso_local global i32 0, align 4
@T_INIT_JIFFIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"module transmit fault recovered\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SM: exit %s:%s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*, i32)* @sfp_sm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_sm_event(%struct.sfp* %0, i32 %1) #0 {
  %3 = alloca %struct.sfp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sfp*, %struct.sfp** %3, align 8
  %7 = getelementptr inbounds %struct.sfp, %struct.sfp* %6, i32 0, i32 4
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.sfp*, %struct.sfp** %3, align 8
  %10 = getelementptr inbounds %struct.sfp, %struct.sfp* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sfp*, %struct.sfp** %3, align 8
  %13 = getelementptr inbounds %struct.sfp, %struct.sfp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mod_state_to_str(i32 %14)
  %16 = load %struct.sfp*, %struct.sfp** %3, align 8
  %17 = getelementptr inbounds %struct.sfp, %struct.sfp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_state_to_str(i32 %18)
  %20 = load %struct.sfp*, %struct.sfp** %3, align 8
  %21 = getelementptr inbounds %struct.sfp, %struct.sfp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sm_state_to_str(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @event_to_str(i32 %24)
  %26 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23, i32 %25)
  %27 = load %struct.sfp*, %struct.sfp** %3, align 8
  %28 = getelementptr inbounds %struct.sfp, %struct.sfp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %30 [
    i32 135, label %46
    i32 137, label %90
    i32 136, label %98
    i32 138, label %98
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SFP_E_INSERT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.sfp*, %struct.sfp** %3, align 8
  %36 = getelementptr inbounds %struct.sfp, %struct.sfp* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.sfp*, %struct.sfp** %3, align 8
  %41 = call i32 @sfp_module_tx_disable(%struct.sfp* %40)
  %42 = load %struct.sfp*, %struct.sfp** %3, align 8
  %43 = load i32, i32* @T_PROBE_INIT, align 4
  %44 = call i32 @sfp_sm_ins_next(%struct.sfp* %42, i32 135, i32 %43)
  br label %45

45:                                               ; preds = %39, %34, %30
  br label %109

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SFP_E_REMOVE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.sfp*, %struct.sfp** %3, align 8
  %52 = load i32, i32* @SFP_MOD_EMPTY, align 4
  %53 = call i32 @sfp_sm_ins_next(%struct.sfp* %51, i32 %52, i32 0)
  br label %89

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SFP_E_TIMEOUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  %59 = load %struct.sfp*, %struct.sfp** %3, align 8
  %60 = call i32 @sfp_sm_mod_probe(%struct.sfp* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.sfp*, %struct.sfp** %3, align 8
  %65 = call i32 @sfp_sm_ins_next(%struct.sfp* %64, i32 136, i32 0)
  br label %87

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.sfp*, %struct.sfp** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @sfp_sm_ins_next(%struct.sfp* %70, i32 137, i32 %71)
  br label %86

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.sfp*, %struct.sfp** %3, align 8
  %80 = call i32 @sfp_sm_ins_next(%struct.sfp* %79, i32 138, i32 0)
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.sfp*, %struct.sfp** %3, align 8
  %83 = load i32, i32* @T_PROBE_RETRY, align 4
  %84 = call i32 @sfp_sm_set_timer(%struct.sfp* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %54
  br label %89

89:                                               ; preds = %88, %50
  br label %109

90:                                               ; preds = %2
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @SFP_E_TIMEOUT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.sfp*, %struct.sfp** %3, align 8
  %96 = call i32 @sfp_sm_ins_next(%struct.sfp* %95, i32 136, i32 0)
  br label %109

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %2, %2, %97
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @SFP_E_REMOVE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.sfp*, %struct.sfp** %3, align 8
  %104 = call i32 @sfp_sm_mod_remove(%struct.sfp* %103)
  %105 = load %struct.sfp*, %struct.sfp** %3, align 8
  %106 = load i32, i32* @SFP_MOD_EMPTY, align 4
  %107 = call i32 @sfp_sm_ins_next(%struct.sfp* %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %102, %98
  br label %109

109:                                              ; preds = %108, %94, %89, %45
  %110 = load %struct.sfp*, %struct.sfp** %3, align 8
  %111 = getelementptr inbounds %struct.sfp, %struct.sfp* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %113 [
    i32 139, label %121
  ]

113:                                              ; preds = %109
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SFP_E_DEV_UP, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.sfp*, %struct.sfp** %3, align 8
  %119 = getelementptr inbounds %struct.sfp, %struct.sfp* %118, i32 0, i32 1
  store i32 139, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %113
  br label %138

121:                                              ; preds = %109
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @SFP_E_DEV_DOWN, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load %struct.sfp*, %struct.sfp** %3, align 8
  %127 = getelementptr inbounds %struct.sfp, %struct.sfp* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load %struct.sfp*, %struct.sfp** %3, align 8
  %132 = call i32 @sfp_module_tx_disable(%struct.sfp* %131)
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i32, i32* @SFP_DEV_DOWN, align 4
  %135 = load %struct.sfp*, %struct.sfp** %3, align 8
  %136 = getelementptr inbounds %struct.sfp, %struct.sfp* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %121
  br label %138

138:                                              ; preds = %137, %120
  %139 = load %struct.sfp*, %struct.sfp** %3, align 8
  %140 = getelementptr inbounds %struct.sfp, %struct.sfp* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 134
  br i1 %142, label %143, label %180

143:                                              ; preds = %138
  %144 = load %struct.sfp*, %struct.sfp** %3, align 8
  %145 = getelementptr inbounds %struct.sfp, %struct.sfp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 136
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.sfp*, %struct.sfp** %3, align 8
  %150 = getelementptr inbounds %struct.sfp, %struct.sfp* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 139
  br i1 %152, label %153, label %180

153:                                              ; preds = %148, %143
  %154 = load %struct.sfp*, %struct.sfp** %3, align 8
  %155 = getelementptr inbounds %struct.sfp, %struct.sfp* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 132
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.sfp*, %struct.sfp** %3, align 8
  %160 = getelementptr inbounds %struct.sfp, %struct.sfp* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 139
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.sfp*, %struct.sfp** %3, align 8
  %165 = call i32 @sfp_sm_link_down(%struct.sfp* %164)
  br label %166

166:                                              ; preds = %163, %158, %153
  %167 = load %struct.sfp*, %struct.sfp** %3, align 8
  %168 = getelementptr inbounds %struct.sfp, %struct.sfp* %167, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.sfp*, %struct.sfp** %3, align 8
  %173 = call i32 @sfp_sm_phy_detach(%struct.sfp* %172)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.sfp*, %struct.sfp** %3, align 8
  %176 = call i32 @sfp_sm_next(%struct.sfp* %175, i32 134, i32 0)
  %177 = load %struct.sfp*, %struct.sfp** %3, align 8
  %178 = getelementptr inbounds %struct.sfp, %struct.sfp* %177, i32 0, i32 4
  %179 = call i32 @mutex_unlock(i32* %178)
  br label %326

180:                                              ; preds = %148, %138
  %181 = load %struct.sfp*, %struct.sfp** %3, align 8
  %182 = getelementptr inbounds %struct.sfp, %struct.sfp* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %306 [
    i32 134, label %184
    i32 133, label %198
    i32 128, label %225
    i32 132, label %242
    i32 129, label %263
    i32 131, label %274
    i32 130, label %305
  ]

184:                                              ; preds = %180
  %185 = load %struct.sfp*, %struct.sfp** %3, align 8
  %186 = getelementptr inbounds %struct.sfp, %struct.sfp* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 136
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.sfp*, %struct.sfp** %3, align 8
  %191 = getelementptr inbounds %struct.sfp, %struct.sfp* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 139
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.sfp*, %struct.sfp** %3, align 8
  %196 = call i32 @sfp_sm_mod_init(%struct.sfp* %195)
  br label %197

197:                                              ; preds = %194, %189, %184
  br label %306

198:                                              ; preds = %180
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @SFP_E_TIMEOUT, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  %203 = load %struct.sfp*, %struct.sfp** %3, align 8
  %204 = getelementptr inbounds %struct.sfp, %struct.sfp* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @SFP_F_TX_FAULT, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load %struct.sfp*, %struct.sfp** %3, align 8
  %211 = call i32 @sfp_sm_fault(%struct.sfp* %210, i32 1)
  br label %224

212:                                              ; preds = %202, %198
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @SFP_E_TIMEOUT, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %220, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @SFP_E_TX_CLEAR, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216, %212
  %221 = load %struct.sfp*, %struct.sfp** %3, align 8
  %222 = call i32 @sfp_sm_link_check_los(%struct.sfp* %221)
  br label %223

223:                                              ; preds = %220, %216
  br label %224

224:                                              ; preds = %223, %209
  br label %306

225:                                              ; preds = %180
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @SFP_E_TX_FAULT, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load %struct.sfp*, %struct.sfp** %3, align 8
  %231 = call i32 @sfp_sm_fault(%struct.sfp* %230, i32 1)
  br label %241

232:                                              ; preds = %225
  %233 = load %struct.sfp*, %struct.sfp** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = call i32 @sfp_los_event_inactive(%struct.sfp* %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.sfp*, %struct.sfp** %3, align 8
  %239 = call i32 @sfp_sm_link_up(%struct.sfp* %238)
  br label %240

240:                                              ; preds = %237, %232
  br label %241

241:                                              ; preds = %240, %229
  br label %306

242:                                              ; preds = %180
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @SFP_E_TX_FAULT, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load %struct.sfp*, %struct.sfp** %3, align 8
  %248 = call i32 @sfp_sm_link_down(%struct.sfp* %247)
  %249 = load %struct.sfp*, %struct.sfp** %3, align 8
  %250 = call i32 @sfp_sm_fault(%struct.sfp* %249, i32 1)
  br label %262

251:                                              ; preds = %242
  %252 = load %struct.sfp*, %struct.sfp** %3, align 8
  %253 = load i32, i32* %4, align 4
  %254 = call i32 @sfp_los_event_active(%struct.sfp* %252, i32 %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.sfp*, %struct.sfp** %3, align 8
  %258 = call i32 @sfp_sm_link_down(%struct.sfp* %257)
  %259 = load %struct.sfp*, %struct.sfp** %3, align 8
  %260 = call i32 @sfp_sm_next(%struct.sfp* %259, i32 128, i32 0)
  br label %261

261:                                              ; preds = %256, %251
  br label %262

262:                                              ; preds = %261, %246
  br label %306

263:                                              ; preds = %180
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* @SFP_E_TIMEOUT, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %263
  %268 = load %struct.sfp*, %struct.sfp** %3, align 8
  %269 = call i32 @sfp_module_tx_fault_reset(%struct.sfp* %268)
  %270 = load %struct.sfp*, %struct.sfp** %3, align 8
  %271 = load i32, i32* @T_INIT_JIFFIES, align 4
  %272 = call i32 @sfp_sm_next(%struct.sfp* %270, i32 131, i32 %271)
  br label %273

273:                                              ; preds = %267, %263
  br label %306

274:                                              ; preds = %180
  %275 = load i32, i32* %4, align 4
  %276 = load i32, i32* @SFP_E_TIMEOUT, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = load %struct.sfp*, %struct.sfp** %3, align 8
  %280 = getelementptr inbounds %struct.sfp, %struct.sfp* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @SFP_F_TX_FAULT, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = load %struct.sfp*, %struct.sfp** %3, align 8
  %287 = call i32 @sfp_sm_fault(%struct.sfp* %286, i32 0)
  br label %304

288:                                              ; preds = %278, %274
  %289 = load i32, i32* %4, align 4
  %290 = load i32, i32* @SFP_E_TIMEOUT, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %4, align 4
  %294 = load i32, i32* @SFP_E_TX_CLEAR, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %292, %288
  %297 = load %struct.sfp*, %struct.sfp** %3, align 8
  %298 = getelementptr inbounds %struct.sfp, %struct.sfp* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @dev_info(i32 %299, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %301 = load %struct.sfp*, %struct.sfp** %3, align 8
  %302 = call i32 @sfp_sm_link_check_los(%struct.sfp* %301)
  br label %303

303:                                              ; preds = %296, %292
  br label %304

304:                                              ; preds = %303, %285
  br label %306

305:                                              ; preds = %180
  br label %306

306:                                              ; preds = %180, %305, %304, %273, %262, %241, %224, %197
  %307 = load %struct.sfp*, %struct.sfp** %3, align 8
  %308 = getelementptr inbounds %struct.sfp, %struct.sfp* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.sfp*, %struct.sfp** %3, align 8
  %311 = getelementptr inbounds %struct.sfp, %struct.sfp* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @mod_state_to_str(i32 %312)
  %314 = load %struct.sfp*, %struct.sfp** %3, align 8
  %315 = getelementptr inbounds %struct.sfp, %struct.sfp* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @dev_state_to_str(i32 %316)
  %318 = load %struct.sfp*, %struct.sfp** %3, align 8
  %319 = getelementptr inbounds %struct.sfp, %struct.sfp* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @sm_state_to_str(i32 %320)
  %322 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %309, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %313, i32 %317, i32 %321)
  %323 = load %struct.sfp*, %struct.sfp** %3, align 8
  %324 = getelementptr inbounds %struct.sfp, %struct.sfp* %323, i32 0, i32 4
  %325 = call i32 @mutex_unlock(i32* %324)
  br label %326

326:                                              ; preds = %306, %174
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @mod_state_to_str(i32) #1

declare dso_local i32 @dev_state_to_str(i32) #1

declare dso_local i32 @sm_state_to_str(i32) #1

declare dso_local i32 @event_to_str(i32) #1

declare dso_local i32 @sfp_module_tx_disable(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_ins_next(%struct.sfp*, i32, i32) #1

declare dso_local i32 @sfp_sm_mod_probe(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_set_timer(%struct.sfp*, i32) #1

declare dso_local i32 @sfp_sm_mod_remove(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_link_down(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_phy_detach(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_next(%struct.sfp*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sfp_sm_mod_init(%struct.sfp*) #1

declare dso_local i32 @sfp_sm_fault(%struct.sfp*, i32) #1

declare dso_local i32 @sfp_sm_link_check_los(%struct.sfp*) #1

declare dso_local i32 @sfp_los_event_inactive(%struct.sfp*, i32) #1

declare dso_local i32 @sfp_sm_link_up(%struct.sfp*) #1

declare dso_local i32 @sfp_los_event_active(%struct.sfp*, i32) #1

declare dso_local i32 @sfp_module_tx_fault_reset(%struct.sfp*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
