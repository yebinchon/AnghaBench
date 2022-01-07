; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_mux_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_mux_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i64, i32, i32, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AD_PORT_BEGIN = common dso_local global i32 0, align 4
@AD_PORT_SELECTED = common dso_local global i32 0, align 4
@AD_PORT_STANDBY = common dso_local global i32 0, align 4
@AD_PORT_READY_N = common dso_local global i32 0, align 4
@AD_PORT_READY = common dso_local global i32 0, align 4
@AD_STATE_SYNCHRONIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Mux Machine: Port=%d, Last State=%d, Curr State=%d\0A\00", align 1
@AD_STATE_COLLECTING = common dso_local global i32 0, align 4
@AD_STATE_DISTRIBUTING = common dso_local global i32 0, align 4
@AD_WAIT_WHILE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*, i32*)* @ad_mux_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_mux_machine(%struct.port* %0, i32* %1) #0 {
  %3 = alloca %struct.port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.port*, %struct.port** %3, align 8
  %7 = getelementptr inbounds %struct.port, %struct.port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.port*, %struct.port** %3, align 8
  %10 = getelementptr inbounds %struct.port, %struct.port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AD_PORT_BEGIN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.port*, %struct.port** %3, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 0
  store i64 129, i64* %17, align 8
  br label %237

18:                                               ; preds = %2
  %19 = load %struct.port*, %struct.port** %3, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  switch i64 %21, label %235 [
    i64 129, label %22
    i64 128, label %40
    i64 131, label %105
    i64 130, label %182
  ]

22:                                               ; preds = %18
  %23 = load %struct.port*, %struct.port** %3, align 8
  %24 = getelementptr inbounds %struct.port, %struct.port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AD_PORT_SELECTED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.port*, %struct.port** %3, align 8
  %31 = getelementptr inbounds %struct.port, %struct.port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AD_PORT_STANDBY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %22
  %37 = load %struct.port*, %struct.port** %3, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 0
  store i64 128, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %29
  br label %236

40:                                               ; preds = %18
  %41 = load %struct.port*, %struct.port** %3, align 8
  %42 = getelementptr inbounds %struct.port, %struct.port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AD_PORT_SELECTED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @AD_PORT_READY_N, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.port*, %struct.port** %3, align 8
  %51 = getelementptr inbounds %struct.port, %struct.port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.port*, %struct.port** %3, align 8
  %55 = getelementptr inbounds %struct.port, %struct.port* %54, i32 0, i32 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load %struct.port*, %struct.port** %3, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call i32 @__agg_ports_are_ready(%struct.TYPE_9__* %59)
  %61 = call i32 @__set_agg_ports_ready(%struct.TYPE_9__* %56, i32 %60)
  %62 = load %struct.port*, %struct.port** %3, align 8
  %63 = getelementptr inbounds %struct.port, %struct.port* %62, i32 0, i32 0
  store i64 129, i64* %63, align 8
  br label %236

64:                                               ; preds = %40
  %65 = load %struct.port*, %struct.port** %3, align 8
  %66 = getelementptr inbounds %struct.port, %struct.port* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.port*, %struct.port** %3, align 8
  %71 = getelementptr inbounds %struct.port, %struct.port* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @AD_PORT_READY_N, align 4
  %77 = load %struct.port*, %struct.port** %3, align 8
  %78 = getelementptr inbounds %struct.port, %struct.port* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %69, %64
  %82 = load %struct.port*, %struct.port** %3, align 8
  %83 = getelementptr inbounds %struct.port, %struct.port* %82, i32 0, i32 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load %struct.port*, %struct.port** %3, align 8
  %86 = getelementptr inbounds %struct.port, %struct.port* %85, i32 0, i32 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = call i32 @__agg_ports_are_ready(%struct.TYPE_9__* %87)
  %89 = call i32 @__set_agg_ports_ready(%struct.TYPE_9__* %84, i32 %88)
  %90 = load %struct.port*, %struct.port** %3, align 8
  %91 = getelementptr inbounds %struct.port, %struct.port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @AD_PORT_READY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %81
  %97 = load %struct.port*, %struct.port** %3, align 8
  %98 = getelementptr inbounds %struct.port, %struct.port* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.port*, %struct.port** %3, align 8
  %103 = getelementptr inbounds %struct.port, %struct.port* %102, i32 0, i32 0
  store i64 131, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %96, %81
  br label %236

105:                                              ; preds = %18
  %106 = load %struct.port*, %struct.port** %3, align 8
  %107 = getelementptr inbounds %struct.port, %struct.port* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AD_PORT_SELECTED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %105
  %113 = load %struct.port*, %struct.port** %3, align 8
  %114 = getelementptr inbounds %struct.port, %struct.port* %113, i32 0, i32 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %112
  %121 = load %struct.port*, %struct.port** %3, align 8
  %122 = call i32 @__check_agg_selection_timer(%struct.port* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  %125 = load %struct.port*, %struct.port** %3, align 8
  %126 = getelementptr inbounds %struct.port, %struct.port* %125, i32 0, i32 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.port*, %struct.port** %3, align 8
  %133 = getelementptr inbounds %struct.port, %struct.port* %132, i32 0, i32 0
  store i64 130, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %124
  br label %181

135:                                              ; preds = %120, %112, %105
  %136 = load %struct.port*, %struct.port** %3, align 8
  %137 = getelementptr inbounds %struct.port, %struct.port* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AD_PORT_SELECTED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.port*, %struct.port** %3, align 8
  %144 = getelementptr inbounds %struct.port, %struct.port* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AD_PORT_STANDBY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %142, %135
  %150 = load i32, i32* @AD_PORT_READY_N, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.port*, %struct.port** %3, align 8
  %153 = getelementptr inbounds %struct.port, %struct.port* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.port*, %struct.port** %3, align 8
  %157 = getelementptr inbounds %struct.port, %struct.port* %156, i32 0, i32 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load %struct.port*, %struct.port** %3, align 8
  %160 = getelementptr inbounds %struct.port, %struct.port* %159, i32 0, i32 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = call i32 @__agg_ports_are_ready(%struct.TYPE_9__* %161)
  %163 = call i32 @__set_agg_ports_ready(%struct.TYPE_9__* %158, i32 %162)
  %164 = load %struct.port*, %struct.port** %3, align 8
  %165 = getelementptr inbounds %struct.port, %struct.port* %164, i32 0, i32 0
  store i64 129, i64* %165, align 8
  br label %180

166:                                              ; preds = %142
  %167 = load %struct.port*, %struct.port** %3, align 8
  %168 = getelementptr inbounds %struct.port, %struct.port* %167, i32 0, i32 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %175 = load %struct.port*, %struct.port** %3, align 8
  %176 = getelementptr inbounds %struct.port, %struct.port* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %166
  br label %180

180:                                              ; preds = %179, %149
  br label %181

181:                                              ; preds = %180, %134
  br label %236

182:                                              ; preds = %18
  %183 = load %struct.port*, %struct.port** %3, align 8
  %184 = getelementptr inbounds %struct.port, %struct.port* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @AD_PORT_SELECTED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %211

189:                                              ; preds = %182
  %190 = load %struct.port*, %struct.port** %3, align 8
  %191 = getelementptr inbounds %struct.port, %struct.port* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @AD_PORT_STANDBY, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %189
  %197 = load %struct.port*, %struct.port** %3, align 8
  %198 = getelementptr inbounds %struct.port, %struct.port* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %196
  %205 = load %struct.port*, %struct.port** %3, align 8
  %206 = getelementptr inbounds %struct.port, %struct.port* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %204, %196, %189, %182
  %212 = load %struct.port*, %struct.port** %3, align 8
  %213 = getelementptr inbounds %struct.port, %struct.port* %212, i32 0, i32 0
  store i64 131, i64* %213, align 8
  br label %234

214:                                              ; preds = %204
  %215 = load %struct.port*, %struct.port** %3, align 8
  %216 = getelementptr inbounds %struct.port, %struct.port* %215, i32 0, i32 4
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = icmp ne %struct.TYPE_9__* %217, null
  br i1 %218, label %219, label %233

219:                                              ; preds = %214
  %220 = load %struct.port*, %struct.port** %3, align 8
  %221 = getelementptr inbounds %struct.port, %struct.port* %220, i32 0, i32 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %219
  %227 = load %struct.port*, %struct.port** %3, align 8
  %228 = call i32 @__port_is_enabled(%struct.port* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = load %struct.port*, %struct.port** %3, align 8
  %232 = call i32 @__enable_port(%struct.port* %231)
  br label %233

233:                                              ; preds = %230, %226, %219, %214
  br label %234

234:                                              ; preds = %233, %211
  br label %236

235:                                              ; preds = %18
  br label %236

236:                                              ; preds = %235, %234, %181, %104, %47, %39
  br label %237

237:                                              ; preds = %236, %15
  %238 = load %struct.port*, %struct.port** %3, align 8
  %239 = getelementptr inbounds %struct.port, %struct.port* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %5, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %357

243:                                              ; preds = %237
  %244 = load %struct.port*, %struct.port** %3, align 8
  %245 = getelementptr inbounds %struct.port, %struct.port* %244, i32 0, i32 7
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.port*, %struct.port** %3, align 8
  %252 = getelementptr inbounds %struct.port, %struct.port* %251, i32 0, i32 7
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.port*, %struct.port** %3, align 8
  %257 = getelementptr inbounds %struct.port, %struct.port* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 4
  %259 = load i64, i64* %5, align 8
  %260 = load %struct.port*, %struct.port** %3, align 8
  %261 = getelementptr inbounds %struct.port, %struct.port* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @slave_dbg(i32 %250, i32 %255, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %258, i64 %259, i64 %262)
  %264 = load %struct.port*, %struct.port** %3, align 8
  %265 = getelementptr inbounds %struct.port, %struct.port* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  switch i64 %266, label %355 [
    i64 129, label %267
    i64 128, label %291
    i64 131, label %296
    i64 130, label %334
  ]

267:                                              ; preds = %243
  %268 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %269 = xor i32 %268, -1
  %270 = load %struct.port*, %struct.port** %3, align 8
  %271 = getelementptr inbounds %struct.port, %struct.port* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, %269
  store i32 %273, i32* %271, align 4
  %274 = load %struct.port*, %struct.port** %3, align 8
  %275 = load i32*, i32** %4, align 8
  %276 = call i32 @ad_disable_collecting_distributing(%struct.port* %274, i32* %275)
  %277 = load i32, i32* @AD_STATE_COLLECTING, align 4
  %278 = xor i32 %277, -1
  %279 = load %struct.port*, %struct.port** %3, align 8
  %280 = getelementptr inbounds %struct.port, %struct.port* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* @AD_STATE_DISTRIBUTING, align 4
  %284 = xor i32 %283, -1
  %285 = load %struct.port*, %struct.port** %3, align 8
  %286 = getelementptr inbounds %struct.port, %struct.port* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, %284
  store i32 %288, i32* %286, align 4
  %289 = load %struct.port*, %struct.port** %3, align 8
  %290 = getelementptr inbounds %struct.port, %struct.port* %289, i32 0, i32 3
  store i32 1, i32* %290, align 8
  br label %356

291:                                              ; preds = %243
  %292 = load i32, i32* @AD_WAIT_WHILE_TIMER, align 4
  %293 = call i32 @__ad_timer_to_ticks(i32 %292, i32 0)
  %294 = load %struct.port*, %struct.port** %3, align 8
  %295 = getelementptr inbounds %struct.port, %struct.port* %294, i32 0, i32 5
  store i32 %293, i32* %295, align 8
  br label %356

296:                                              ; preds = %243
  %297 = load %struct.port*, %struct.port** %3, align 8
  %298 = getelementptr inbounds %struct.port, %struct.port* %297, i32 0, i32 4
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %296
  %304 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %305 = load %struct.port*, %struct.port** %3, align 8
  %306 = getelementptr inbounds %struct.port, %struct.port* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 4
  br label %316

309:                                              ; preds = %296
  %310 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %311 = xor i32 %310, -1
  %312 = load %struct.port*, %struct.port** %3, align 8
  %313 = getelementptr inbounds %struct.port, %struct.port* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %309, %303
  %317 = load i32, i32* @AD_STATE_COLLECTING, align 4
  %318 = xor i32 %317, -1
  %319 = load %struct.port*, %struct.port** %3, align 8
  %320 = getelementptr inbounds %struct.port, %struct.port* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* @AD_STATE_DISTRIBUTING, align 4
  %324 = xor i32 %323, -1
  %325 = load %struct.port*, %struct.port** %3, align 8
  %326 = getelementptr inbounds %struct.port, %struct.port* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = and i32 %327, %324
  store i32 %328, i32* %326, align 4
  %329 = load %struct.port*, %struct.port** %3, align 8
  %330 = load i32*, i32** %4, align 8
  %331 = call i32 @ad_disable_collecting_distributing(%struct.port* %329, i32* %330)
  %332 = load %struct.port*, %struct.port** %3, align 8
  %333 = getelementptr inbounds %struct.port, %struct.port* %332, i32 0, i32 3
  store i32 1, i32* %333, align 8
  br label %356

334:                                              ; preds = %243
  %335 = load i32, i32* @AD_STATE_COLLECTING, align 4
  %336 = load %struct.port*, %struct.port** %3, align 8
  %337 = getelementptr inbounds %struct.port, %struct.port* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 4
  %340 = load i32, i32* @AD_STATE_DISTRIBUTING, align 4
  %341 = load %struct.port*, %struct.port** %3, align 8
  %342 = getelementptr inbounds %struct.port, %struct.port* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load i32, i32* @AD_STATE_SYNCHRONIZATION, align 4
  %346 = load %struct.port*, %struct.port** %3, align 8
  %347 = getelementptr inbounds %struct.port, %struct.port* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 4
  %350 = load %struct.port*, %struct.port** %3, align 8
  %351 = load i32*, i32** %4, align 8
  %352 = call i32 @ad_enable_collecting_distributing(%struct.port* %350, i32* %351)
  %353 = load %struct.port*, %struct.port** %3, align 8
  %354 = getelementptr inbounds %struct.port, %struct.port* %353, i32 0, i32 3
  store i32 1, i32* %354, align 8
  br label %356

355:                                              ; preds = %243
  br label %356

356:                                              ; preds = %355, %334, %316, %291, %267
  br label %357

357:                                              ; preds = %356, %237
  ret void
}

declare dso_local i32 @__set_agg_ports_ready(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @__agg_ports_are_ready(%struct.TYPE_9__*) #1

declare dso_local i32 @__check_agg_selection_timer(%struct.port*) #1

declare dso_local i32 @__port_is_enabled(%struct.port*) #1

declare dso_local i32 @__enable_port(%struct.port*) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ad_disable_collecting_distributing(%struct.port*, i32*) #1

declare dso_local i32 @__ad_timer_to_ticks(i32, i32) #1

declare dso_local i32 @ad_enable_collecting_distributing(%struct.port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
