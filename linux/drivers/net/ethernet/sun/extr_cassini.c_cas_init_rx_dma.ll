; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i64, i64*, i64* }
%struct.TYPE_2__ = type { i32 }

@RX_CFG_SWIVEL = common dso_local global i32 0, align 4
@RX_SWIVEL_OFF_VAL = common dso_local global i32 0, align 4
@RX_CFG_DESC_RING = common dso_local global i32 0, align 4
@RX_CFG_COMP_RING = common dso_local global i32 0, align 4
@N_RX_DESC_RINGS = common dso_local global i32 0, align 4
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@RX_CFG_DESC_RING1 = common dso_local global i32 0, align 4
@REG_RX_CFG = common dso_local global i64 0, align 8
@REG_RX_DB_HI = common dso_local global i64 0, align 8
@REG_RX_DB_LOW = common dso_local global i64 0, align 8
@REG_RX_KICK = common dso_local global i64 0, align 8
@REG_PLUS_RX_DB1_HI = common dso_local global i64 0, align 8
@REG_PLUS_RX_DB1_LOW = common dso_local global i64 0, align 8
@REG_PLUS_RX_KICK1 = common dso_local global i64 0, align 8
@REG_RX_CB_HI = common dso_local global i64 0, align 8
@REG_RX_CB_LOW = common dso_local global i64 0, align 8
@MAX_RX_COMP_RINGS = common dso_local global i32 0, align 4
@REG_INTR_STATUS_ALIAS = common dso_local global i64 0, align 8
@INTR_RX_DONE = common dso_local global i32 0, align 4
@INTR_RX_BUF_UNAVAIL = common dso_local global i32 0, align 4
@REG_ALIAS_CLEAR = common dso_local global i64 0, align 8
@N_RX_COMP_RINGS = common dso_local global i32 0, align 4
@INTR_RX_DONE_ALT = common dso_local global i32 0, align 4
@INTR_RX_BUF_UNAVAIL_1 = common dso_local global i32 0, align 4
@RX_PAUSE_THRESH_OFF = common dso_local global i32 0, align 4
@RX_PAUSE_THRESH_QUANTUM = common dso_local global i32 0, align 4
@RX_PAUSE_THRESH_ON = common dso_local global i32 0, align 4
@REG_RX_PAUSE_THRESH = common dso_local global i64 0, align 8
@REG_RX_TABLE_ADDR = common dso_local global i64 0, align 8
@REG_RX_TABLE_DATA_LOW = common dso_local global i64 0, align 8
@REG_RX_TABLE_DATA_MID = common dso_local global i64 0, align 8
@REG_RX_TABLE_DATA_HI = common dso_local global i64 0, align 8
@REG_RX_CTRL_FIFO_ADDR = common dso_local global i64 0, align 8
@REG_RX_IPP_FIFO_ADDR = common dso_local global i64 0, align 8
@REG_RX_BLANK = common dso_local global i64 0, align 8
@RX_AE_THRESH_COMP = common dso_local global i32 0, align 4
@RX_AE_COMP_VAL = common dso_local global i32 0, align 4
@REG_RX_AE_THRESH = common dso_local global i64 0, align 8
@RX_AE1_THRESH_FREE = common dso_local global i32 0, align 4
@REG_PLUS_RX_AE1_THRESH = common dso_local global i64 0, align 8
@REG_RX_RED = common dso_local global i64 0, align 8
@RX_PAGE_SIZE = common dso_local global i32 0, align 4
@RX_PAGE_SIZE_MTU_STRIDE = common dso_local global i32 0, align 4
@RX_PAGE_SIZE_MTU_COUNT = common dso_local global i32 0, align 4
@RX_PAGE_SIZE_MTU_OFF = common dso_local global i32 0, align 4
@REG_RX_PAGE_SIZE = common dso_local global i64 0, align 8
@CAS_HP_FIRMWARE = common dso_local global i64 0, align 8
@cas_prog_null = common dso_local global i64 0, align 8
@HP_CFG_NUM_CPU = common dso_local global i32 0, align 4
@CAS_NCPUS = common dso_local global i32 0, align 4
@HP_CFG_PARSE_EN = common dso_local global i32 0, align 4
@HP_CFG_SYN_INC_MASK = common dso_local global i32 0, align 4
@HP_CFG_TCP_THRESH = common dso_local global i32 0, align 4
@HP_TCP_THRESH_VAL = common dso_local global i32 0, align 4
@REG_HP_CFG = common dso_local global i64 0, align 8
@RX_BLANK_INTR_PKT = common dso_local global i32 0, align 4
@RX_BLANK_INTR_PKT_VAL = common dso_local global i32 0, align 4
@RX_BLANK_INTR_TIME = common dso_local global i32 0, align 4
@RX_BLANK_INTR_TIME_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_init_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_init_rx_dma(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %7 = load %struct.cas*, %struct.cas** %2, align 8
  %8 = getelementptr inbounds %struct.cas, %struct.cas* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @RX_CFG_SWIVEL, align 4
  %11 = load i32, i32* @RX_SWIVEL_OFF_VAL, align 4
  %12 = call i32 @CAS_BASE(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RX_CFG_DESC_RING, align 4
  %14 = call i32 @RX_DESC_RINGN_INDEX(i32 0)
  %15 = call i32 @CAS_BASE(i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @RX_CFG_COMP_RING, align 4
  %19 = call i32 @RX_COMP_RINGN_INDEX(i32 0)
  %20 = call i32 @CAS_BASE(i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @N_RX_DESC_RINGS, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.cas*, %struct.cas** %2, align 8
  %27 = getelementptr inbounds %struct.cas, %struct.cas* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @RX_CFG_DESC_RING1, align 4
  %34 = call i32 @RX_DESC_RINGN_INDEX(i32 1)
  %35 = call i32 @CAS_BASE(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %25, %1
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.cas*, %struct.cas** %2, align 8
  %41 = getelementptr inbounds %struct.cas, %struct.cas* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_RX_CFG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.cas*, %struct.cas** %2, align 8
  %47 = getelementptr inbounds %struct.cas, %struct.cas* %46, i32 0, i32 10
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cas*, %struct.cas** %2, align 8
  %52 = getelementptr inbounds %struct.cas, %struct.cas* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %56, %57
  %59 = ashr i32 %58, 32
  %60 = load %struct.cas*, %struct.cas** %2, align 8
  %61 = getelementptr inbounds %struct.cas, %struct.cas* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @REG_RX_DB_HI, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.cas*, %struct.cas** %2, align 8
  %70 = getelementptr inbounds %struct.cas, %struct.cas* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @REG_RX_DB_LOW, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = call i32 @RX_DESC_RINGN_SIZE(i32 0)
  %76 = sub nsw i32 %75, 4
  %77 = load %struct.cas*, %struct.cas** %2, align 8
  %78 = getelementptr inbounds %struct.cas, %struct.cas* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @REG_RX_KICK, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  %83 = load %struct.cas*, %struct.cas** %2, align 8
  %84 = getelementptr inbounds %struct.cas, %struct.cas* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %127

89:                                               ; preds = %38
  %90 = load %struct.cas*, %struct.cas** %2, align 8
  %91 = getelementptr inbounds %struct.cas, %struct.cas* %90, i32 0, i32 10
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.cas*, %struct.cas** %2, align 8
  %96 = getelementptr inbounds %struct.cas, %struct.cas* %95, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %100, %101
  %103 = ashr i32 %102, 32
  %104 = load %struct.cas*, %struct.cas** %2, align 8
  %105 = getelementptr inbounds %struct.cas, %struct.cas* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @REG_PLUS_RX_DB1_HI, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %110, %111
  %113 = load %struct.cas*, %struct.cas** %2, align 8
  %114 = getelementptr inbounds %struct.cas, %struct.cas* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @REG_PLUS_RX_DB1_LOW, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  %119 = call i32 @RX_DESC_RINGN_SIZE(i32 1)
  %120 = sub nsw i32 %119, 4
  %121 = load %struct.cas*, %struct.cas** %2, align 8
  %122 = getelementptr inbounds %struct.cas, %struct.cas* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @REG_PLUS_RX_KICK1, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  br label %127

127:                                              ; preds = %89, %38
  %128 = load %struct.cas*, %struct.cas** %2, align 8
  %129 = getelementptr inbounds %struct.cas, %struct.cas* %128, i32 0, i32 9
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.cas*, %struct.cas** %2, align 8
  %134 = getelementptr inbounds %struct.cas, %struct.cas* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %132, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %138, %139
  %141 = ashr i32 %140, 32
  %142 = load %struct.cas*, %struct.cas** %2, align 8
  %143 = getelementptr inbounds %struct.cas, %struct.cas* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @REG_RX_CB_HI, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 %141, i64 %146)
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %148, %149
  %151 = load %struct.cas*, %struct.cas** %2, align 8
  %152 = getelementptr inbounds %struct.cas, %struct.cas* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @REG_RX_CB_LOW, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i32 %150, i64 %155)
  %157 = load %struct.cas*, %struct.cas** %2, align 8
  %158 = getelementptr inbounds %struct.cas, %struct.cas* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %206

163:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %164

164:                                              ; preds = %202, %163
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @MAX_RX_COMP_RINGS, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %205

168:                                              ; preds = %164
  %169 = load %struct.cas*, %struct.cas** %2, align 8
  %170 = getelementptr inbounds %struct.cas, %struct.cas* %169, i32 0, i32 9
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.cas*, %struct.cas** %2, align 8
  %177 = getelementptr inbounds %struct.cas, %struct.cas* %176, i32 0, i32 8
  %178 = load i64, i64* %177, align 8
  %179 = sub i64 %175, %178
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %181, %182
  %184 = ashr i32 %183, 32
  %185 = load %struct.cas*, %struct.cas** %2, align 8
  %186 = getelementptr inbounds %struct.cas, %struct.cas* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i64 @REG_PLUS_RX_CBN_HI(i32 %188)
  %190 = add nsw i64 %187, %189
  %191 = call i32 @writel(i32 %184, i64 %190)
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %192, %193
  %195 = load %struct.cas*, %struct.cas** %2, align 8
  %196 = getelementptr inbounds %struct.cas, %struct.cas* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i64 @REG_PLUS_RX_CBN_LOW(i32 %198)
  %200 = add nsw i64 %197, %199
  %201 = call i32 @writel(i32 %194, i64 %200)
  br label %202

202:                                              ; preds = %168
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %164

205:                                              ; preds = %164
  br label %206

206:                                              ; preds = %205, %127
  %207 = load %struct.cas*, %struct.cas** %2, align 8
  %208 = getelementptr inbounds %struct.cas, %struct.cas* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @REG_INTR_STATUS_ALIAS, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @readl(i64 %211)
  %213 = load i32, i32* @INTR_RX_DONE, align 4
  %214 = load i32, i32* @INTR_RX_BUF_UNAVAIL, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.cas*, %struct.cas** %2, align 8
  %217 = getelementptr inbounds %struct.cas, %struct.cas* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @REG_ALIAS_CLEAR, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @writel(i32 %215, i64 %220)
  %222 = load %struct.cas*, %struct.cas** %2, align 8
  %223 = getelementptr inbounds %struct.cas, %struct.cas* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %275

228:                                              ; preds = %206
  store i32 1, i32* %5, align 4
  br label %229

229:                                              ; preds = %241, %228
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @N_RX_COMP_RINGS, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %229
  %234 = load %struct.cas*, %struct.cas** %2, align 8
  %235 = getelementptr inbounds %struct.cas, %struct.cas* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = call i64 @REG_PLUS_INTRN_STATUS_ALIAS(i32 %237)
  %239 = add nsw i64 %236, %238
  %240 = call i32 @readl(i64 %239)
  br label %241

241:                                              ; preds = %233
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %5, align 4
  br label %229

244:                                              ; preds = %229
  %245 = load i32, i32* @N_RX_COMP_RINGS, align 4
  %246 = icmp sgt i32 %245, 1
  br i1 %246, label %247, label %257

247:                                              ; preds = %244
  %248 = load i32, i32* @INTR_RX_DONE_ALT, align 4
  %249 = load i32, i32* @INTR_RX_BUF_UNAVAIL_1, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.cas*, %struct.cas** %2, align 8
  %252 = getelementptr inbounds %struct.cas, %struct.cas* %251, i32 0, i32 6
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @REG_PLUS_ALIASN_CLEAR(i32 1)
  %255 = add nsw i64 %253, %254
  %256 = call i32 @writel(i32 %250, i64 %255)
  br label %257

257:                                              ; preds = %247, %244
  store i32 2, i32* %5, align 4
  br label %258

258:                                              ; preds = %271, %257
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* @N_RX_COMP_RINGS, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  %263 = load i32, i32* @INTR_RX_DONE_ALT, align 4
  %264 = load %struct.cas*, %struct.cas** %2, align 8
  %265 = getelementptr inbounds %struct.cas, %struct.cas* %264, i32 0, i32 6
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %5, align 4
  %268 = call i64 @REG_PLUS_ALIASN_CLEAR(i32 %267)
  %269 = add nsw i64 %266, %268
  %270 = call i32 @writel(i32 %263, i64 %269)
  br label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %5, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %5, align 4
  br label %258

274:                                              ; preds = %258
  br label %275

275:                                              ; preds = %274, %206
  %276 = load i32, i32* @RX_PAUSE_THRESH_OFF, align 4
  %277 = load %struct.cas*, %struct.cas** %2, align 8
  %278 = getelementptr inbounds %struct.cas, %struct.cas* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @RX_PAUSE_THRESH_QUANTUM, align 4
  %281 = sdiv i32 %279, %280
  %282 = call i32 @CAS_BASE(i32 %276, i32 %281)
  store i32 %282, i32* %4, align 4
  %283 = load i32, i32* @RX_PAUSE_THRESH_ON, align 4
  %284 = load %struct.cas*, %struct.cas** %2, align 8
  %285 = getelementptr inbounds %struct.cas, %struct.cas* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @RX_PAUSE_THRESH_QUANTUM, align 4
  %288 = sdiv i32 %286, %287
  %289 = call i32 @CAS_BASE(i32 %283, i32 %288)
  %290 = load i32, i32* %4, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %4, align 4
  %292 = load i32, i32* %4, align 4
  %293 = load %struct.cas*, %struct.cas** %2, align 8
  %294 = getelementptr inbounds %struct.cas, %struct.cas* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @REG_RX_PAUSE_THRESH, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @writel(i32 %292, i64 %297)
  store i32 0, i32* %5, align 4
  br label %299

299:                                              ; preds = %328, %275
  %300 = load i32, i32* %5, align 4
  %301 = icmp slt i32 %300, 64
  br i1 %301, label %302, label %331

302:                                              ; preds = %299
  %303 = load i32, i32* %5, align 4
  %304 = load %struct.cas*, %struct.cas** %2, align 8
  %305 = getelementptr inbounds %struct.cas, %struct.cas* %304, i32 0, i32 6
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @REG_RX_TABLE_ADDR, align 8
  %308 = add nsw i64 %306, %307
  %309 = call i32 @writel(i32 %303, i64 %308)
  %310 = load %struct.cas*, %struct.cas** %2, align 8
  %311 = getelementptr inbounds %struct.cas, %struct.cas* %310, i32 0, i32 6
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @REG_RX_TABLE_DATA_LOW, align 8
  %314 = add nsw i64 %312, %313
  %315 = call i32 @writel(i32 0, i64 %314)
  %316 = load %struct.cas*, %struct.cas** %2, align 8
  %317 = getelementptr inbounds %struct.cas, %struct.cas* %316, i32 0, i32 6
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @REG_RX_TABLE_DATA_MID, align 8
  %320 = add nsw i64 %318, %319
  %321 = call i32 @writel(i32 0, i64 %320)
  %322 = load %struct.cas*, %struct.cas** %2, align 8
  %323 = getelementptr inbounds %struct.cas, %struct.cas* %322, i32 0, i32 6
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @REG_RX_TABLE_DATA_HI, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 @writel(i32 0, i64 %326)
  br label %328

328:                                              ; preds = %302
  %329 = load i32, i32* %5, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %5, align 4
  br label %299

331:                                              ; preds = %299
  %332 = load %struct.cas*, %struct.cas** %2, align 8
  %333 = getelementptr inbounds %struct.cas, %struct.cas* %332, i32 0, i32 6
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @REG_RX_CTRL_FIFO_ADDR, align 8
  %336 = add nsw i64 %334, %335
  %337 = call i32 @writel(i32 0, i64 %336)
  %338 = load %struct.cas*, %struct.cas** %2, align 8
  %339 = getelementptr inbounds %struct.cas, %struct.cas* %338, i32 0, i32 6
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @REG_RX_IPP_FIFO_ADDR, align 8
  %342 = add nsw i64 %340, %341
  %343 = call i32 @writel(i32 0, i64 %342)
  %344 = load %struct.cas*, %struct.cas** %2, align 8
  %345 = getelementptr inbounds %struct.cas, %struct.cas* %344, i32 0, i32 6
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @REG_RX_BLANK, align 8
  %348 = add nsw i64 %346, %347
  %349 = call i32 @writel(i32 0, i64 %348)
  %350 = load i32, i32* @RX_AE_THRESH_COMP, align 4
  %351 = load i32, i32* @RX_AE_COMP_VAL, align 4
  %352 = call i32 @CAS_BASE(i32 %350, i32 %351)
  store i32 %352, i32* %4, align 4
  %353 = load i32, i32* %4, align 4
  %354 = load %struct.cas*, %struct.cas** %2, align 8
  %355 = getelementptr inbounds %struct.cas, %struct.cas* %354, i32 0, i32 6
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @REG_RX_AE_THRESH, align 8
  %358 = add nsw i64 %356, %357
  %359 = call i32 @writel(i32 %353, i64 %358)
  %360 = load %struct.cas*, %struct.cas** %2, align 8
  %361 = getelementptr inbounds %struct.cas, %struct.cas* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %377

366:                                              ; preds = %331
  %367 = load i32, i32* @RX_AE1_THRESH_FREE, align 4
  %368 = call i32 @RX_AE_FREEN_VAL(i32 1)
  %369 = call i32 @CAS_BASE(i32 %367, i32 %368)
  store i32 %369, i32* %4, align 4
  %370 = load i32, i32* %4, align 4
  %371 = load %struct.cas*, %struct.cas** %2, align 8
  %372 = getelementptr inbounds %struct.cas, %struct.cas* %371, i32 0, i32 6
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @REG_PLUS_RX_AE1_THRESH, align 8
  %375 = add nsw i64 %373, %374
  %376 = call i32 @writel(i32 %370, i64 %375)
  br label %377

377:                                              ; preds = %366, %331
  %378 = load %struct.cas*, %struct.cas** %2, align 8
  %379 = getelementptr inbounds %struct.cas, %struct.cas* %378, i32 0, i32 6
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @REG_RX_RED, align 8
  %382 = add nsw i64 %380, %381
  %383 = call i32 @writel(i32 0, i64 %382)
  store i32 0, i32* %4, align 4
  %384 = load %struct.cas*, %struct.cas** %2, align 8
  %385 = getelementptr inbounds %struct.cas, %struct.cas* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = icmp eq i32 %386, 4096
  br i1 %387, label %388, label %389

388:                                              ; preds = %377
  store i32 1, i32* %4, align 4
  br label %403

389:                                              ; preds = %377
  %390 = load %struct.cas*, %struct.cas** %2, align 8
  %391 = getelementptr inbounds %struct.cas, %struct.cas* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 8
  %393 = icmp eq i32 %392, 8192
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  store i32 2, i32* %4, align 4
  br label %402

395:                                              ; preds = %389
  %396 = load %struct.cas*, %struct.cas** %2, align 8
  %397 = getelementptr inbounds %struct.cas, %struct.cas* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = icmp eq i32 %398, 16384
  br i1 %399, label %400, label %401

400:                                              ; preds = %395
  store i32 3, i32* %4, align 4
  br label %401

401:                                              ; preds = %400, %395
  br label %402

402:                                              ; preds = %401, %394
  br label %403

403:                                              ; preds = %402, %388
  %404 = load %struct.cas*, %struct.cas** %2, align 8
  %405 = getelementptr inbounds %struct.cas, %struct.cas* %404, i32 0, i32 7
  %406 = load %struct.TYPE_2__*, %struct.TYPE_2__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, 64
  store i32 %409, i32* %6, align 4
  %410 = load i32, i32* %6, align 4
  %411 = load %struct.cas*, %struct.cas** %2, align 8
  %412 = getelementptr inbounds %struct.cas, %struct.cas* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = icmp sgt i32 %410, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %403
  %416 = load %struct.cas*, %struct.cas** %2, align 8
  %417 = getelementptr inbounds %struct.cas, %struct.cas* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 8
  store i32 %418, i32* %6, align 4
  br label %419

419:                                              ; preds = %415, %403
  %420 = load i32, i32* %6, align 4
  %421 = icmp sle i32 %420, 1024
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  store i32 0, i32* %5, align 4
  br label %434

423:                                              ; preds = %419
  %424 = load i32, i32* %6, align 4
  %425 = icmp sle i32 %424, 2048
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store i32 1, i32* %5, align 4
  br label %433

427:                                              ; preds = %423
  %428 = load i32, i32* %6, align 4
  %429 = icmp sle i32 %428, 4096
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 2, i32* %5, align 4
  br label %432

431:                                              ; preds = %427
  store i32 3, i32* %5, align 4
  br label %432

432:                                              ; preds = %431, %430
  br label %433

433:                                              ; preds = %432, %426
  br label %434

434:                                              ; preds = %433, %422
  %435 = load i32, i32* %5, align 4
  %436 = add nsw i32 %435, 10
  %437 = shl i32 1, %436
  %438 = load %struct.cas*, %struct.cas** %2, align 8
  %439 = getelementptr inbounds %struct.cas, %struct.cas* %438, i32 0, i32 5
  store i32 %437, i32* %439, align 4
  %440 = load i32, i32* @RX_PAGE_SIZE, align 4
  %441 = load i32, i32* %4, align 4
  %442 = call i32 @CAS_BASE(i32 %440, i32 %441)
  store i32 %442, i32* %4, align 4
  %443 = load i32, i32* @RX_PAGE_SIZE_MTU_STRIDE, align 4
  %444 = load i32, i32* %5, align 4
  %445 = call i32 @CAS_BASE(i32 %443, i32 %444)
  %446 = load i32, i32* %4, align 4
  %447 = or i32 %446, %445
  store i32 %447, i32* %4, align 4
  %448 = load i32, i32* @RX_PAGE_SIZE_MTU_COUNT, align 4
  %449 = load %struct.cas*, %struct.cas** %2, align 8
  %450 = getelementptr inbounds %struct.cas, %struct.cas* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* %5, align 4
  %453 = add nsw i32 %452, 10
  %454 = ashr i32 %451, %453
  %455 = call i32 @CAS_BASE(i32 %448, i32 %454)
  %456 = load i32, i32* %4, align 4
  %457 = or i32 %456, %455
  store i32 %457, i32* %4, align 4
  %458 = load i32, i32* @RX_PAGE_SIZE_MTU_OFF, align 4
  %459 = call i32 @CAS_BASE(i32 %458, i32 1)
  %460 = load i32, i32* %4, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %4, align 4
  %462 = load i32, i32* %4, align 4
  %463 = load %struct.cas*, %struct.cas** %2, align 8
  %464 = getelementptr inbounds %struct.cas, %struct.cas* %463, i32 0, i32 6
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @REG_RX_PAGE_SIZE, align 8
  %467 = add nsw i64 %465, %466
  %468 = call i32 @writel(i32 %462, i64 %467)
  %469 = load i64, i64* @CAS_HP_FIRMWARE, align 8
  %470 = load i64, i64* @cas_prog_null, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %473

472:                                              ; preds = %434
  br label %500

473:                                              ; preds = %434
  %474 = load i32, i32* @HP_CFG_NUM_CPU, align 4
  %475 = load i32, i32* @CAS_NCPUS, align 4
  %476 = icmp sgt i32 %475, 63
  br i1 %476, label %477, label %478

477:                                              ; preds = %473
  br label %480

478:                                              ; preds = %473
  %479 = load i32, i32* @CAS_NCPUS, align 4
  br label %480

480:                                              ; preds = %478, %477
  %481 = phi i32 [ 0, %477 ], [ %479, %478 ]
  %482 = call i32 @CAS_BASE(i32 %474, i32 %481)
  store i32 %482, i32* %4, align 4
  %483 = load i32, i32* @HP_CFG_PARSE_EN, align 4
  %484 = load i32, i32* @HP_CFG_SYN_INC_MASK, align 4
  %485 = or i32 %483, %484
  %486 = load i32, i32* %4, align 4
  %487 = or i32 %486, %485
  store i32 %487, i32* %4, align 4
  %488 = load i32, i32* @HP_CFG_TCP_THRESH, align 4
  %489 = load i32, i32* @HP_TCP_THRESH_VAL, align 4
  %490 = call i32 @CAS_BASE(i32 %488, i32 %489)
  %491 = load i32, i32* %4, align 4
  %492 = or i32 %491, %490
  store i32 %492, i32* %4, align 4
  %493 = load i32, i32* %4, align 4
  %494 = load %struct.cas*, %struct.cas** %2, align 8
  %495 = getelementptr inbounds %struct.cas, %struct.cas* %494, i32 0, i32 6
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @REG_HP_CFG, align 8
  %498 = add nsw i64 %496, %497
  %499 = call i32 @writel(i32 %493, i64 %498)
  br label %500

500:                                              ; preds = %480, %472
  ret void
}

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i32 @RX_DESC_RINGN_INDEX(i32) #1

declare dso_local i32 @RX_COMP_RINGN_INDEX(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @RX_DESC_RINGN_SIZE(i32) #1

declare dso_local i64 @REG_PLUS_RX_CBN_HI(i32) #1

declare dso_local i64 @REG_PLUS_RX_CBN_LOW(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @REG_PLUS_INTRN_STATUS_ALIAS(i32) #1

declare dso_local i64 @REG_PLUS_ALIASN_CLEAR(i32) #1

declare dso_local i32 @RX_AE_FREEN_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
