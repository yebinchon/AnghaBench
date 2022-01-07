; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i64, i32*, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@CAWR_RR_DIS = common dso_local global i32 0, align 4
@REG_CAWR = common dso_local global i64 0, align 8
@CAS_FLAG_TARGET_ABORT = common dso_local global i32 0, align 4
@INF_BURST_EN = common dso_local global i32 0, align 4
@REG_INF_BURST = common dso_local global i64 0, align 8
@REG_MAC_SEND_PAUSE = common dso_local global i64 0, align 8
@REG_MAC_IPG0 = common dso_local global i64 0, align 8
@REG_MAC_IPG1 = common dso_local global i64 0, align 8
@REG_MAC_IPG2 = common dso_local global i64 0, align 8
@REG_MAC_SLOT_TIME = common dso_local global i64 0, align 8
@ETH_ZLEN = common dso_local global i32 0, align 4
@REG_MAC_FRAMESIZE_MIN = common dso_local global i64 0, align 8
@MAC_FRAMESIZE_MAX_BURST = common dso_local global i32 0, align 4
@MAC_FRAMESIZE_MAX_FRAME = common dso_local global i32 0, align 4
@CAS_MAX_MTU = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@REG_MAC_FRAMESIZE_MAX = common dso_local global i64 0, align 8
@CAS_FLAG_SATURN = common dso_local global i32 0, align 4
@REG_MAC_PA_SIZE = common dso_local global i64 0, align 8
@REG_MAC_JAM_SIZE = common dso_local global i64 0, align 8
@REG_MAC_ATTEMPT_LIMIT = common dso_local global i64 0, align 8
@REG_MAC_CTRL_TYPE = common dso_local global i64 0, align 8
@REG_MAC_RANDOM_SEED = common dso_local global i64 0, align 8
@REG_MAC_ADDR_FILTER0 = common dso_local global i64 0, align 8
@REG_MAC_ADDR_FILTER1 = common dso_local global i64 0, align 8
@REG_MAC_ADDR_FILTER2 = common dso_local global i64 0, align 8
@REG_MAC_ADDR_FILTER2_1_MASK = common dso_local global i64 0, align 8
@REG_MAC_ADDR_FILTER0_MASK = common dso_local global i64 0, align 8
@N_TX_RINGS = common dso_local global i64 0, align 8
@MAC_TX_FRAME_XMIT = common dso_local global i32 0, align 4
@REG_MAC_TX_MASK = common dso_local global i64 0, align 8
@MAC_RX_FRAME_RECV = common dso_local global i32 0, align 4
@REG_MAC_RX_MASK = common dso_local global i64 0, align 8
@REG_MAC_CTRL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_init_mac(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %5 = load %struct.cas*, %struct.cas** %2, align 8
  %6 = getelementptr inbounds %struct.cas, %struct.cas* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8* %10, i8** %3, align 8
  %11 = load %struct.cas*, %struct.cas** %2, align 8
  %12 = call i32 @cas_mac_reset(%struct.cas* %11)
  %13 = load i32, i32* @CAWR_RR_DIS, align 4
  %14 = load %struct.cas*, %struct.cas** %2, align 8
  %15 = getelementptr inbounds %struct.cas, %struct.cas* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_CAWR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.cas*, %struct.cas** %2, align 8
  %21 = getelementptr inbounds %struct.cas, %struct.cas* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAS_FLAG_TARGET_ABORT, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i32, i32* @INF_BURST_EN, align 4
  %28 = load %struct.cas*, %struct.cas** %2, align 8
  %29 = getelementptr inbounds %struct.cas, %struct.cas* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_INF_BURST, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.cas*, %struct.cas** %2, align 8
  %36 = getelementptr inbounds %struct.cas, %struct.cas* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_MAC_SEND_PAUSE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 7152, i64 %39)
  %41 = load %struct.cas*, %struct.cas** %2, align 8
  %42 = getelementptr inbounds %struct.cas, %struct.cas* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @REG_MAC_IPG0, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.cas*, %struct.cas** %2, align 8
  %48 = getelementptr inbounds %struct.cas, %struct.cas* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @REG_MAC_IPG1, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 8, i64 %51)
  %53 = load %struct.cas*, %struct.cas** %2, align 8
  %54 = getelementptr inbounds %struct.cas, %struct.cas* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REG_MAC_IPG2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 4, i64 %57)
  %59 = load %struct.cas*, %struct.cas** %2, align 8
  %60 = getelementptr inbounds %struct.cas, %struct.cas* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG_MAC_SLOT_TIME, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 64, i64 %63)
  %65 = load i32, i32* @ETH_ZLEN, align 4
  %66 = add nsw i32 %65, 4
  %67 = load %struct.cas*, %struct.cas** %2, align 8
  %68 = getelementptr inbounds %struct.cas, %struct.cas* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @REG_MAC_FRAMESIZE_MIN, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* @MAC_FRAMESIZE_MAX_BURST, align 4
  %74 = call i32 @CAS_BASE(i32 %73, i32 8192)
  %75 = load i32, i32* @MAC_FRAMESIZE_MAX_FRAME, align 4
  %76 = load i32, i32* @CAS_MAX_MTU, align 4
  %77 = load i32, i32* @ETH_HLEN, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 4
  %80 = add nsw i32 %79, 4
  %81 = call i32 @CAS_BASE(i32 %75, i32 %80)
  %82 = or i32 %74, %81
  %83 = load %struct.cas*, %struct.cas** %2, align 8
  %84 = getelementptr inbounds %struct.cas, %struct.cas* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @REG_MAC_FRAMESIZE_MAX, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load %struct.cas*, %struct.cas** %2, align 8
  %90 = getelementptr inbounds %struct.cas, %struct.cas* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CAS_FLAG_SATURN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %34
  %96 = load %struct.cas*, %struct.cas** %2, align 8
  %97 = getelementptr inbounds %struct.cas, %struct.cas* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.cas*, %struct.cas** %2, align 8
  %102 = getelementptr inbounds %struct.cas, %struct.cas* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @REG_MAC_PA_SIZE, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 65, i64 %105)
  br label %114

107:                                              ; preds = %95, %34
  %108 = load %struct.cas*, %struct.cas** %2, align 8
  %109 = getelementptr inbounds %struct.cas, %struct.cas* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @REG_MAC_PA_SIZE, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 7, i64 %112)
  br label %114

114:                                              ; preds = %107, %100
  %115 = load %struct.cas*, %struct.cas** %2, align 8
  %116 = getelementptr inbounds %struct.cas, %struct.cas* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @REG_MAC_JAM_SIZE, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 4, i64 %119)
  %121 = load %struct.cas*, %struct.cas** %2, align 8
  %122 = getelementptr inbounds %struct.cas, %struct.cas* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @REG_MAC_ATTEMPT_LIMIT, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 16, i64 %125)
  %127 = load %struct.cas*, %struct.cas** %2, align 8
  %128 = getelementptr inbounds %struct.cas, %struct.cas* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @REG_MAC_CTRL_TYPE, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 34824, i64 %131)
  %133 = load i8*, i8** %3, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 5
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl i32 %140, 8
  %142 = or i32 %136, %141
  %143 = and i32 %142, 1023
  %144 = load %struct.cas*, %struct.cas** %2, align 8
  %145 = getelementptr inbounds %struct.cas, %struct.cas* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @REG_MAC_RANDOM_SEED, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @writel(i32 %143, i64 %148)
  %150 = load %struct.cas*, %struct.cas** %2, align 8
  %151 = getelementptr inbounds %struct.cas, %struct.cas* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @REG_MAC_ADDR_FILTER0, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 0, i64 %154)
  %156 = load %struct.cas*, %struct.cas** %2, align 8
  %157 = getelementptr inbounds %struct.cas, %struct.cas* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @REG_MAC_ADDR_FILTER1, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 0, i64 %160)
  %162 = load %struct.cas*, %struct.cas** %2, align 8
  %163 = getelementptr inbounds %struct.cas, %struct.cas* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @REG_MAC_ADDR_FILTER2, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i32 0, i64 %166)
  %168 = load %struct.cas*, %struct.cas** %2, align 8
  %169 = getelementptr inbounds %struct.cas, %struct.cas* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @REG_MAC_ADDR_FILTER2_1_MASK, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 0, i64 %172)
  %174 = load %struct.cas*, %struct.cas** %2, align 8
  %175 = getelementptr inbounds %struct.cas, %struct.cas* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @REG_MAC_ADDR_FILTER0_MASK, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writel(i32 0, i64 %178)
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %191, %114
  %181 = load i32, i32* %4, align 4
  %182 = icmp slt i32 %181, 45
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load %struct.cas*, %struct.cas** %2, align 8
  %185 = getelementptr inbounds %struct.cas, %struct.cas* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = call i64 @REG_MAC_ADDRN(i32 %187)
  %189 = add nsw i64 %186, %188
  %190 = call i32 @writel(i32 0, i64 %189)
  br label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %180

194:                                              ; preds = %180
  %195 = load i8*, i8** %3, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 4
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = shl i32 %198, 8
  %200 = load i8*, i8** %3, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 5
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = or i32 %199, %203
  %205 = load %struct.cas*, %struct.cas** %2, align 8
  %206 = getelementptr inbounds %struct.cas, %struct.cas* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @REG_MAC_ADDRN(i32 0)
  %209 = add nsw i64 %207, %208
  %210 = call i32 @writel(i32 %204, i64 %209)
  %211 = load i8*, i8** %3, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = shl i32 %214, 8
  %216 = load i8*, i8** %3, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 3
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = or i32 %215, %219
  %221 = load %struct.cas*, %struct.cas** %2, align 8
  %222 = getelementptr inbounds %struct.cas, %struct.cas* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @REG_MAC_ADDRN(i32 1)
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %220, i64 %225)
  %227 = load i8*, i8** %3, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = shl i32 %230, 8
  %232 = load i8*, i8** %3, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = or i32 %231, %235
  %237 = load %struct.cas*, %struct.cas** %2, align 8
  %238 = getelementptr inbounds %struct.cas, %struct.cas* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @REG_MAC_ADDRN(i32 2)
  %241 = add nsw i64 %239, %240
  %242 = call i32 @writel(i32 %236, i64 %241)
  %243 = load %struct.cas*, %struct.cas** %2, align 8
  %244 = getelementptr inbounds %struct.cas, %struct.cas* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @REG_MAC_ADDRN(i32 42)
  %247 = add nsw i64 %245, %246
  %248 = call i32 @writel(i32 1, i64 %247)
  %249 = load %struct.cas*, %struct.cas** %2, align 8
  %250 = getelementptr inbounds %struct.cas, %struct.cas* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = call i64 @REG_MAC_ADDRN(i32 43)
  %253 = add nsw i64 %251, %252
  %254 = call i32 @writel(i32 49664, i64 %253)
  %255 = load %struct.cas*, %struct.cas** %2, align 8
  %256 = getelementptr inbounds %struct.cas, %struct.cas* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @REG_MAC_ADDRN(i32 44)
  %259 = add nsw i64 %257, %258
  %260 = call i32 @writel(i32 384, i64 %259)
  %261 = load %struct.cas*, %struct.cas** %2, align 8
  %262 = call i32 @cas_setup_multicast(%struct.cas* %261)
  %263 = load %struct.cas*, %struct.cas** %2, align 8
  %264 = getelementptr inbounds %struct.cas, %struct.cas* %263, i32 0, i32 3
  store i32 %262, i32* %264, align 8
  %265 = load %struct.cas*, %struct.cas** %2, align 8
  %266 = getelementptr inbounds %struct.cas, %struct.cas* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* @N_TX_RINGS, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  %270 = call i32 @spin_lock(i32* %269)
  %271 = load %struct.cas*, %struct.cas** %2, align 8
  %272 = call i32 @cas_clear_mac_err(%struct.cas* %271)
  %273 = load %struct.cas*, %struct.cas** %2, align 8
  %274 = getelementptr inbounds %struct.cas, %struct.cas* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* @N_TX_RINGS, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = call i32 @spin_unlock(i32* %277)
  %279 = load i32, i32* @MAC_TX_FRAME_XMIT, align 4
  %280 = load %struct.cas*, %struct.cas** %2, align 8
  %281 = getelementptr inbounds %struct.cas, %struct.cas* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @REG_MAC_TX_MASK, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @writel(i32 %279, i64 %284)
  %286 = load i32, i32* @MAC_RX_FRAME_RECV, align 4
  %287 = load %struct.cas*, %struct.cas** %2, align 8
  %288 = getelementptr inbounds %struct.cas, %struct.cas* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @REG_MAC_RX_MASK, align 8
  %291 = add nsw i64 %289, %290
  %292 = call i32 @writel(i32 %286, i64 %291)
  %293 = load %struct.cas*, %struct.cas** %2, align 8
  %294 = getelementptr inbounds %struct.cas, %struct.cas* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @REG_MAC_CTRL_MASK, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @writel(i32 -1, i64 %297)
  ret void
}

declare dso_local i32 @cas_mac_reset(%struct.cas*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CAS_BASE(i32, i32) #1

declare dso_local i64 @REG_MAC_ADDRN(i32) #1

declare dso_local i32 @cas_setup_multicast(%struct.cas*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cas_clear_mac_err(%struct.cas*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
