; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cxgb4_get_entity_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_cudbg.c_cxgb4_get_entity_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cudbg_tcam = type { i32, i32 }

@T4_REGMAP_SIZE = common dso_local global i32 0, align 4
@T5_REGMAP_SIZE = common dso_local global i32 0, align 4
@CIM_MALA_SIZE = common dso_local global i32 0, align 4
@CIM_IBQ_SIZE = common dso_local global i32 0, align 4
@MA_TARGET_MEM_ENABLE_A = common dso_local global i32 0, align 4
@EDRAM0_ENABLE_F = common dso_local global i32 0, align 4
@MA_EDRAM0_BAR_A = common dso_local global i32 0, align 4
@EDRAM1_ENABLE_F = common dso_local global i32 0, align 4
@MA_EDRAM1_BAR_A = common dso_local global i32 0, align 4
@EXT_MEM0_ENABLE_F = common dso_local global i32 0, align 4
@MA_EXT_MEMORY0_BAR_A = common dso_local global i32 0, align 4
@EXT_MEM1_ENABLE_F = common dso_local global i32 0, align 4
@MA_EXT_MEMORY1_BAR_A = common dso_local global i32 0, align 4
@NMTUS = common dso_local global i32 0, align 4
@IREG_NUM_ELEM = common dso_local global i32 0, align 4
@TPLA_SIZE = common dso_local global i32 0, align 4
@CIM_PIFLA_SIZE = common dso_local global i32 0, align 4
@CUDBG_NUM_PCIE_CONFIG_REGS = common dso_local global i32 0, align 4
@NCCTRL_WIN = common dso_local global i32 0, align 4
@HMA_MUX_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @cxgb4_get_entity_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_get_entity_length(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_tcam, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.cudbg_tcam* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %391 [
    i32 138, label %11
    i32 159, label %23
    i32 172, label %29
    i32 171, label %62
    i32 161, label %69
    i32 175, label %70
    i32 174, label %70
    i32 173, label %70
    i32 177, label %70
    i32 176, label %70
    i32 178, label %70
    i32 166, label %76
    i32 165, label %79
    i32 164, label %82
    i32 163, label %85
    i32 167, label %88
    i32 170, label %91
    i32 169, label %94
    i32 168, label %97
    i32 157, label %100
    i32 156, label %117
    i32 149, label %134
    i32 148, label %151
    i32 137, label %168
    i32 136, label %174
    i32 145, label %183
    i32 140, label %188
    i32 153, label %189
    i32 133, label %190
    i32 135, label %211
    i32 131, label %212
    i32 132, label %213
    i32 147, label %219
    i32 162, label %220
    i32 160, label %230
    i32 142, label %231
    i32 141, label %242
    i32 134, label %253
    i32 143, label %254
    i32 158, label %259
    i32 146, label %262
    i32 128, label %271
    i32 152, label %272
    i32 179, label %281
    i32 151, label %289
    i32 130, label %308
    i32 129, label %309
    i32 144, label %343
    i32 150, label %344
    i32 154, label %353
    i32 155, label %371
    i32 139, label %388
  ]

11:                                               ; preds = %2
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CHELSIO_CHIP_VERSION(i32 %15)
  switch i32 %16, label %21 [
    i32 182, label %17
    i32 181, label %19
    i32 180, label %19
  ]

17:                                               ; preds = %11
  %18 = load i32, i32* @T4_REGMAP_SIZE, align 4
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %11, %11
  %20 = load i32, i32* @T5_REGMAP_SIZE, align 4
  store i32 %20, i32* %8, align 4
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %19, %17
  br label %392

23:                                               ; preds = %2
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  br label %392

29:                                               ; preds = %2
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @is_t6(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 10
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %57

47:                                               ; preds = %29
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 8
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 32
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %47, %36
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  br label %392

62:                                               ; preds = %2
  %63 = load i32, i32* @CIM_MALA_SIZE, align 4
  %64 = mul nsw i32 2, %63
  %65 = mul nsw i32 %64, 5
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %392

69:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

70:                                               ; preds = %2, %2, %2, %2, %2, %2
  %71 = load i32, i32* @CIM_IBQ_SIZE, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %392

76:                                               ; preds = %2
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = call i32 @cudbg_cim_obq_size(%struct.adapter* %77, i32 0)
  store i32 %78, i32* %8, align 4
  br label %392

79:                                               ; preds = %2
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = call i32 @cudbg_cim_obq_size(%struct.adapter* %80, i32 1)
  store i32 %81, i32* %8, align 4
  br label %392

82:                                               ; preds = %2
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = call i32 @cudbg_cim_obq_size(%struct.adapter* %83, i32 2)
  store i32 %84, i32* %8, align 4
  br label %392

85:                                               ; preds = %2
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = call i32 @cudbg_cim_obq_size(%struct.adapter* %86, i32 3)
  store i32 %87, i32* %8, align 4
  br label %392

88:                                               ; preds = %2
  %89 = load %struct.adapter*, %struct.adapter** %3, align 8
  %90 = call i32 @cudbg_cim_obq_size(%struct.adapter* %89, i32 4)
  store i32 %90, i32* %8, align 4
  br label %392

91:                                               ; preds = %2
  %92 = load %struct.adapter*, %struct.adapter** %3, align 8
  %93 = call i32 @cudbg_cim_obq_size(%struct.adapter* %92, i32 5)
  store i32 %93, i32* %8, align 4
  br label %392

94:                                               ; preds = %2
  %95 = load %struct.adapter*, %struct.adapter** %3, align 8
  %96 = call i32 @cudbg_cim_obq_size(%struct.adapter* %95, i32 6)
  store i32 %96, i32* %8, align 4
  br label %392

97:                                               ; preds = %2
  %98 = load %struct.adapter*, %struct.adapter** %3, align 8
  %99 = call i32 @cudbg_cim_obq_size(%struct.adapter* %98, i32 7)
  store i32 %99, i32* %8, align 4
  br label %392

100:                                              ; preds = %2
  %101 = load %struct.adapter*, %struct.adapter** %3, align 8
  %102 = load i32, i32* @MA_TARGET_MEM_ENABLE_A, align 4
  %103 = call i32 @t4_read_reg(%struct.adapter* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @EDRAM0_ENABLE_F, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = load i32, i32* @MA_EDRAM0_BAR_A, align 4
  %111 = call i32 @t4_read_reg(%struct.adapter* %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @EDRAM0_SIZE_G(i32 %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %108, %100
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @cudbg_mbytes_to_bytes(i32 %115)
  store i32 %116, i32* %8, align 4
  br label %392

117:                                              ; preds = %2
  %118 = load %struct.adapter*, %struct.adapter** %3, align 8
  %119 = load i32, i32* @MA_TARGET_MEM_ENABLE_A, align 4
  %120 = call i32 @t4_read_reg(%struct.adapter* %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @EDRAM1_ENABLE_F, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = load i32, i32* @MA_EDRAM1_BAR_A, align 4
  %128 = call i32 @t4_read_reg(%struct.adapter* %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @EDRAM1_SIZE_G(i32 %129)
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %125, %117
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @cudbg_mbytes_to_bytes(i32 %132)
  store i32 %133, i32* %8, align 4
  br label %392

134:                                              ; preds = %2
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = load i32, i32* @MA_TARGET_MEM_ENABLE_A, align 4
  %137 = call i32 @t4_read_reg(%struct.adapter* %135, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @EXT_MEM0_ENABLE_F, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load %struct.adapter*, %struct.adapter** %3, align 8
  %144 = load i32, i32* @MA_EXT_MEMORY0_BAR_A, align 4
  %145 = call i32 @t4_read_reg(%struct.adapter* %143, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @EXT_MEM0_SIZE_G(i32 %146)
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %134
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @cudbg_mbytes_to_bytes(i32 %149)
  store i32 %150, i32* %8, align 4
  br label %392

151:                                              ; preds = %2
  %152 = load %struct.adapter*, %struct.adapter** %3, align 8
  %153 = load i32, i32* @MA_TARGET_MEM_ENABLE_A, align 4
  %154 = call i32 @t4_read_reg(%struct.adapter* %152, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @EXT_MEM1_ENABLE_F, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %151
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = load i32, i32* @MA_EXT_MEMORY1_BAR_A, align 4
  %162 = call i32 @t4_read_reg(%struct.adapter* %160, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @EXT_MEM1_SIZE_G(i32 %163)
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %159, %151
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @cudbg_mbytes_to_bytes(i32 %166)
  store i32 %167, i32* %8, align 4
  br label %392

168:                                              ; preds = %2
  %169 = load %struct.adapter*, %struct.adapter** %3, align 8
  %170 = call i32 @t4_chip_rss_size(%struct.adapter* %169)
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %8, align 4
  br label %392

174:                                              ; preds = %2
  %175 = load %struct.adapter*, %struct.adapter** %3, align 8
  %176 = getelementptr inbounds %struct.adapter, %struct.adapter* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 4
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %8, align 4
  br label %392

183:                                              ; preds = %2
  %184 = load i32, i32* @NMTUS, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 4
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %8, align 4
  br label %392

188:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

189:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

190:                                              ; preds = %2
  %191 = load %struct.adapter*, %struct.adapter** %3, align 8
  %192 = getelementptr inbounds %struct.adapter, %struct.adapter* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @CHELSIO_CHIP_VERSION(i32 %194)
  switch i32 %195, label %198 [
    i32 181, label %196
    i32 180, label %197
  ]

196:                                              ; preds = %190
  store i32 12, i32* %7, align 4
  br label %199

197:                                              ; preds = %190
  store i32 12, i32* %7, align 4
  br label %199

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %197, %196
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* @IREG_NUM_ELEM, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 %203, 4
  %205 = udiv i64 %201, %204
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 4, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %8, align 4
  br label %392

211:                                              ; preds = %2
  store i32 12, i32* %8, align 4
  br label %392

212:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

213:                                              ; preds = %2
  %214 = load i32, i32* @TPLA_SIZE, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 4
  %217 = add i64 4, %216
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %8, align 4
  br label %392

219:                                              ; preds = %2
  store i32 8, i32* %8, align 4
  br label %392

220:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  %221 = load i32, i32* @CIM_PIFLA_SIZE, align 4
  %222 = mul nsw i32 2, %221
  %223 = mul nsw i32 %222, 6
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 4
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = add i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %8, align 4
  br label %392

230:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

231:                                              ; preds = %2
  %232 = load i32, i32* @IREG_NUM_ELEM, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 %233, 4
  %235 = udiv i64 4, %234
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = mul i64 4, %238
  %240 = mul i64 %239, 2
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %8, align 4
  br label %392

242:                                              ; preds = %2
  %243 = load i32, i32* @IREG_NUM_ELEM, align 4
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 4
  %246 = udiv i64 4, %245
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 4, %249
  %251 = mul i64 %250, 2
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %8, align 4
  br label %392

253:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

254:                                              ; preds = %2
  %255 = load i32, i32* @CUDBG_NUM_PCIE_CONFIG_REGS, align 4
  %256 = sext i32 %255 to i64
  %257 = mul i64 4, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %8, align 4
  br label %392

259:                                              ; preds = %2
  %260 = load %struct.adapter*, %struct.adapter** %3, align 8
  %261 = call i32 @cudbg_dump_context_size(%struct.adapter* %260)
  store i32 %261, i32* %8, align 4
  br label %392

262:                                              ; preds = %2
  %263 = load %struct.adapter*, %struct.adapter** %3, align 8
  %264 = getelementptr inbounds %struct.adapter, %struct.adapter* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = mul i64 4, %268
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %8, align 4
  br label %392

271:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

272:                                              ; preds = %2
  %273 = load %struct.adapter*, %struct.adapter** %3, align 8
  %274 = call i32 @cudbg_fill_le_tcam_info(%struct.adapter* %273, %struct.cudbg_tcam* %5)
  %275 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %5, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = mul i64 4, %277
  %279 = add i64 8, %278
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %8, align 4
  br label %392

281:                                              ; preds = %2
  %282 = load i32, i32* @NMTUS, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 4, %283
  %285 = load i32, i32* @NCCTRL_WIN, align 4
  %286 = sext i32 %285 to i64
  %287 = mul i64 %284, %286
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %8, align 4
  br label %392

289:                                              ; preds = %2
  %290 = load %struct.adapter*, %struct.adapter** %3, align 8
  %291 = getelementptr inbounds %struct.adapter, %struct.adapter* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @CHELSIO_CHIP_VERSION(i32 %293)
  %295 = icmp sgt i32 %294, 181
  br i1 %295, label %296, label %307

296:                                              ; preds = %289
  %297 = load i32, i32* @IREG_NUM_ELEM, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 4
  %300 = udiv i64 4, %299
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %7, align 4
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = mul i64 4, %303
  %305 = mul i64 %304, 2
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %8, align 4
  br label %307

307:                                              ; preds = %296, %289
  br label %392

308:                                              ; preds = %2
  store i32 8, i32* %8, align 4
  br label %392

309:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  %310 = load %struct.adapter*, %struct.adapter** %3, align 8
  %311 = getelementptr inbounds %struct.adapter, %struct.adapter* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @is_t5(i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %309
  %317 = load i32, i32* @IREG_NUM_ELEM, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = mul i64 %319, 4
  %321 = udiv i64 4, %320
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %7, align 4
  br label %338

323:                                              ; preds = %309
  %324 = load %struct.adapter*, %struct.adapter** %3, align 8
  %325 = getelementptr inbounds %struct.adapter, %struct.adapter* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @is_t6(i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load i32, i32* @IREG_NUM_ELEM, align 4
  %332 = add nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = mul i64 %333, 4
  %335 = udiv i64 4, %334
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %7, align 4
  br label %337

337:                                              ; preds = %330, %323
  br label %338

338:                                              ; preds = %337, %316
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = mul i64 4, %340
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %8, align 4
  br label %392

343:                                              ; preds = %2
  store i32 4, i32* %8, align 4
  br label %392

344:                                              ; preds = %2
  %345 = load %struct.adapter*, %struct.adapter** %3, align 8
  %346 = getelementptr inbounds %struct.adapter, %struct.adapter* %345, i32 0, i32 1
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = mul i64 4, %350
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %8, align 4
  br label %392

353:                                              ; preds = %2
  %354 = load %struct.adapter*, %struct.adapter** %3, align 8
  %355 = getelementptr inbounds %struct.adapter, %struct.adapter* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @CHELSIO_CHIP_VERSION(i32 %357)
  %359 = icmp sgt i32 %358, 181
  br i1 %359, label %360, label %370

360:                                              ; preds = %353
  %361 = load i32, i32* @IREG_NUM_ELEM, align 4
  %362 = sext i32 %361 to i64
  %363 = mul i64 %362, 4
  %364 = udiv i64 4, %363
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %7, align 4
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = mul i64 4, %367
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %8, align 4
  br label %370

370:                                              ; preds = %360, %353
  br label %392

371:                                              ; preds = %2
  %372 = load %struct.adapter*, %struct.adapter** %3, align 8
  %373 = load i32, i32* @MA_TARGET_MEM_ENABLE_A, align 4
  %374 = call i32 @t4_read_reg(%struct.adapter* %372, i32 %373)
  store i32 %374, i32* %6, align 4
  %375 = load i32, i32* %6, align 4
  %376 = load i32, i32* @HMA_MUX_F, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %371
  %380 = load %struct.adapter*, %struct.adapter** %3, align 8
  %381 = load i32, i32* @MA_EXT_MEMORY1_BAR_A, align 4
  %382 = call i32 @t4_read_reg(%struct.adapter* %380, i32 %381)
  store i32 %382, i32* %6, align 4
  %383 = load i32, i32* %6, align 4
  %384 = call i32 @EXT_MEM1_SIZE_G(i32 %383)
  store i32 %384, i32* %8, align 4
  br label %385

385:                                              ; preds = %379, %371
  %386 = load i32, i32* %8, align 4
  %387 = call i32 @cudbg_mbytes_to_bytes(i32 %386)
  store i32 %387, i32* %8, align 4
  br label %392

388:                                              ; preds = %2
  %389 = load %struct.adapter*, %struct.adapter** %3, align 8
  %390 = call i32 @cudbg_fill_qdesc_num_and_size(%struct.adapter* %389, i32* null, i32* %8)
  br label %392

391:                                              ; preds = %2
  br label %392

392:                                              ; preds = %391, %388, %385, %370, %344, %343, %338, %308, %307, %281, %272, %271, %262, %259, %254, %253, %242, %231, %230, %220, %219, %213, %212, %211, %199, %189, %188, %183, %174, %168, %165, %148, %131, %114, %97, %94, %91, %88, %85, %82, %79, %76, %70, %69, %62, %57, %23, %22
  %393 = load i32, i32* %8, align 4
  ret i32 %393
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHELSIO_CHIP_VERSION(i32) #2

declare dso_local i32 @is_t6(i32) #2

declare dso_local i32 @cudbg_cim_obq_size(%struct.adapter*, i32) #2

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #2

declare dso_local i32 @EDRAM0_SIZE_G(i32) #2

declare dso_local i32 @cudbg_mbytes_to_bytes(i32) #2

declare dso_local i32 @EDRAM1_SIZE_G(i32) #2

declare dso_local i32 @EXT_MEM0_SIZE_G(i32) #2

declare dso_local i32 @EXT_MEM1_SIZE_G(i32) #2

declare dso_local i32 @t4_chip_rss_size(%struct.adapter*) #2

declare dso_local i32 @cudbg_dump_context_size(%struct.adapter*) #2

declare dso_local i32 @cudbg_fill_le_tcam_info(%struct.adapter*, %struct.cudbg_tcam*) #2

declare dso_local i32 @is_t5(i32) #2

declare dso_local i32 @cudbg_fill_qdesc_num_and_size(%struct.adapter*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
