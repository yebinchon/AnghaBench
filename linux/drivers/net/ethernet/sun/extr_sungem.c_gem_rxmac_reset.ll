; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_rxmac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_rxmac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i32, i32, i32, i64, i64, i64, i64, i32**, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { %struct.gem_rxd* }
%struct.gem_rxd = type { i32 }
%struct.net_device = type { i32 }

@MAC_RXRST_CMD = common dso_local global i32 0, align 4
@MAC_RXRST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"RX MAC will not reset, resetting whole chip\0A\00", align 1
@MAC_RXCFG_ENAB = common dso_local global i32 0, align 4
@MAC_RXCFG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"RX MAC will not disable, resetting whole chip\0A\00", align 1
@RXDMA_CFG = common dso_local global i64 0, align 8
@RXDMA_CFG_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"RX DMA will not disable, resetting whole chip\0A\00", align 1
@GREG_SWRST_RXRST = common dso_local global i32 0, align 4
@GREG_SWRST = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"RX reset command will not execute, resetting whole chip\0A\00", align 1
@RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Parts of RX ring empty, resetting whole chip\0A\00", align 1
@INIT_BLOCK_TX_RING_SIZE = common dso_local global i32 0, align 4
@RXDMA_DBHI = common dso_local global i64 0, align 8
@RXDMA_DBLOW = common dso_local global i64 0, align 8
@RXDMA_KICK = common dso_local global i64 0, align 8
@RXDMA_CFG_BASE = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@RXDMA_CFG_FTHRESH_128 = common dso_local global i32 0, align 4
@GREG_BIFCFG = common dso_local global i64 0, align 8
@GREG_BIFCFG_M66EN = common dso_local global i32 0, align 4
@RXDMA_BLANK_IPKTS = common dso_local global i32 0, align 4
@RXDMA_BLANK_ITIME = common dso_local global i32 0, align 4
@RXDMA_BLANK = common dso_local global i64 0, align 8
@RXDMA_PTHRESH_OFF = common dso_local global i32 0, align 4
@RXDMA_PTHRESH_ON = common dso_local global i32 0, align 4
@RXDMA_PTHRESH = common dso_local global i64 0, align 8
@MAC_RXSTAT_RCV = common dso_local global i32 0, align 4
@MAC_RXMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem*)* @gem_rxmac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_rxmac_reset(%struct.gem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gem_rxd*, align 8
  store %struct.gem* %0, %struct.gem** %3, align 8
  %10 = load %struct.gem*, %struct.gem** %3, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 10
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load i32, i32* @MAC_RXRST_CMD, align 4
  %14 = load %struct.gem*, %struct.gem** %3, align 8
  %15 = getelementptr inbounds %struct.gem, %struct.gem* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAC_RXRST, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %36, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 5000
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.gem*, %struct.gem** %3, align 8
  %25 = getelementptr inbounds %struct.gem, %struct.gem* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAC_RXRST, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = load i32, i32* @MAC_RXRST_CMD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %39

34:                                               ; preds = %23
  %35 = call i32 @udelay(i32 10)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %20

39:                                               ; preds = %33, %20
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 5000
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %336

45:                                               ; preds = %39
  %46 = load %struct.gem*, %struct.gem** %3, align 8
  %47 = getelementptr inbounds %struct.gem, %struct.gem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load %struct.gem*, %struct.gem** %3, align 8
  %53 = getelementptr inbounds %struct.gem, %struct.gem* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MAC_RXCFG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %74, %45
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 5000
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load %struct.gem*, %struct.gem** %3, align 8
  %63 = getelementptr inbounds %struct.gem, %struct.gem* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAC_RXCFG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  %68 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %77

72:                                               ; preds = %61
  %73 = call i32 @udelay(i32 10)
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %58

77:                                               ; preds = %71, %58
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 5000
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netdev_err(%struct.net_device* %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %336

83:                                               ; preds = %77
  %84 = load %struct.gem*, %struct.gem** %3, align 8
  %85 = getelementptr inbounds %struct.gem, %struct.gem* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RXDMA_CFG, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel(i32 0, i64 %88)
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %106, %83
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 5000
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load %struct.gem*, %struct.gem** %3, align 8
  %95 = getelementptr inbounds %struct.gem, %struct.gem* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RXDMA_CFG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  %100 = load i32, i32* @RXDMA_CFG_ENABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  br label %109

104:                                              ; preds = %93
  %105 = call i32 @udelay(i32 10)
  br label %106

106:                                              ; preds = %104
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %90

109:                                              ; preds = %103, %90
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 5000
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 @netdev_err(%struct.net_device* %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %336

115:                                              ; preds = %109
  %116 = call i32 @mdelay(i32 5)
  %117 = load %struct.gem*, %struct.gem** %3, align 8
  %118 = getelementptr inbounds %struct.gem, %struct.gem* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @GREG_SWRST_RXRST, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.gem*, %struct.gem** %3, align 8
  %123 = getelementptr inbounds %struct.gem, %struct.gem* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @GREG_SWRST, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %144, %115
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 5000
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load %struct.gem*, %struct.gem** %3, align 8
  %133 = getelementptr inbounds %struct.gem, %struct.gem* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @GREG_SWRST, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @readl(i64 %136)
  %138 = load i32, i32* @GREG_SWRST_RXRST, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %131
  br label %147

142:                                              ; preds = %131
  %143 = call i32 @udelay(i32 10)
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %128

147:                                              ; preds = %141, %128
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 5000
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.net_device*, %struct.net_device** %4, align 8
  %152 = call i32 @netdev_err(%struct.net_device* %151, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %336

153:                                              ; preds = %147
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %184, %153
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @RX_RING_SIZE, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %154
  %159 = load %struct.gem*, %struct.gem** %3, align 8
  %160 = getelementptr inbounds %struct.gem, %struct.gem* %159, i32 0, i32 9
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load %struct.gem_rxd*, %struct.gem_rxd** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %163, i64 %165
  store %struct.gem_rxd* %166, %struct.gem_rxd** %9, align 8
  %167 = load %struct.gem*, %struct.gem** %3, align 8
  %168 = getelementptr inbounds %struct.gem, %struct.gem* %167, i32 0, i32 8
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %158
  %176 = load %struct.net_device*, %struct.net_device** %4, align 8
  %177 = call i32 @netdev_err(%struct.net_device* %176, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %336

178:                                              ; preds = %158
  %179 = load %struct.gem*, %struct.gem** %3, align 8
  %180 = call i32 @RXDCTRL_FRESH(%struct.gem* %179)
  %181 = call i32 @cpu_to_le64(i32 %180)
  %182 = load %struct.gem_rxd*, %struct.gem_rxd** %9, align 8
  %183 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  br label %154

187:                                              ; preds = %154
  %188 = load %struct.gem*, %struct.gem** %3, align 8
  %189 = getelementptr inbounds %struct.gem, %struct.gem* %188, i32 0, i32 6
  store i64 0, i64* %189, align 8
  %190 = load %struct.gem*, %struct.gem** %3, align 8
  %191 = getelementptr inbounds %struct.gem, %struct.gem* %190, i32 0, i32 7
  store i64 0, i64* %191, align 8
  %192 = load %struct.gem*, %struct.gem** %3, align 8
  %193 = getelementptr inbounds %struct.gem, %struct.gem* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* @INIT_BLOCK_TX_RING_SIZE, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 %197, 4
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = ashr i32 %203, 32
  %205 = load %struct.gem*, %struct.gem** %3, align 8
  %206 = getelementptr inbounds %struct.gem, %struct.gem* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @RXDMA_DBHI, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @writel(i32 %204, i64 %209)
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.gem*, %struct.gem** %3, align 8
  %213 = getelementptr inbounds %struct.gem, %struct.gem* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @RXDMA_DBLOW, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel(i32 %211, i64 %216)
  %218 = load i32, i32* @RX_RING_SIZE, align 4
  %219 = sub nsw i32 %218, 4
  %220 = load %struct.gem*, %struct.gem** %3, align 8
  %221 = getelementptr inbounds %struct.gem, %struct.gem* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @RXDMA_KICK, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @writel(i32 %219, i64 %224)
  %226 = load i32, i32* @RXDMA_CFG_BASE, align 4
  %227 = load i32, i32* @RX_OFFSET, align 4
  %228 = shl i32 %227, 10
  %229 = or i32 %226, %228
  %230 = load i32, i32* @ETH_HLEN, align 4
  %231 = shl i32 %230, 13
  %232 = or i32 %229, %231
  %233 = load i32, i32* @RXDMA_CFG_FTHRESH_128, align 4
  %234 = or i32 %232, %233
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.gem*, %struct.gem** %3, align 8
  %237 = getelementptr inbounds %struct.gem, %struct.gem* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @RXDMA_CFG, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @writel(i32 %235, i64 %240)
  %242 = load %struct.gem*, %struct.gem** %3, align 8
  %243 = getelementptr inbounds %struct.gem, %struct.gem* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @GREG_BIFCFG, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @readl(i64 %246)
  %248 = load i32, i32* @GREG_BIFCFG_M66EN, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %187
  %252 = load i32, i32* @RXDMA_BLANK_IPKTS, align 4
  %253 = and i32 5, %252
  %254 = load i32, i32* @RXDMA_BLANK_ITIME, align 4
  %255 = and i32 32768, %254
  %256 = or i32 %253, %255
  %257 = load %struct.gem*, %struct.gem** %3, align 8
  %258 = getelementptr inbounds %struct.gem, %struct.gem* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @RXDMA_BLANK, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @writel(i32 %256, i64 %261)
  br label %275

263:                                              ; preds = %187
  %264 = load i32, i32* @RXDMA_BLANK_IPKTS, align 4
  %265 = and i32 5, %264
  %266 = load i32, i32* @RXDMA_BLANK_ITIME, align 4
  %267 = and i32 16384, %266
  %268 = or i32 %265, %267
  %269 = load %struct.gem*, %struct.gem** %3, align 8
  %270 = getelementptr inbounds %struct.gem, %struct.gem* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @RXDMA_BLANK, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 @writel(i32 %268, i64 %273)
  br label %275

275:                                              ; preds = %263, %251
  %276 = load %struct.gem*, %struct.gem** %3, align 8
  %277 = getelementptr inbounds %struct.gem, %struct.gem* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = sdiv i32 %278, 64
  %280 = shl i32 %279, 0
  %281 = load i32, i32* @RXDMA_PTHRESH_OFF, align 4
  %282 = and i32 %280, %281
  store i32 %282, i32* %8, align 4
  %283 = load %struct.gem*, %struct.gem** %3, align 8
  %284 = getelementptr inbounds %struct.gem, %struct.gem* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = sdiv i32 %285, 64
  %287 = shl i32 %286, 12
  %288 = load i32, i32* @RXDMA_PTHRESH_ON, align 4
  %289 = and i32 %287, %288
  %290 = load i32, i32* %8, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.gem*, %struct.gem** %3, align 8
  %294 = getelementptr inbounds %struct.gem, %struct.gem* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @RXDMA_PTHRESH, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @writel(i32 %292, i64 %297)
  %299 = load %struct.gem*, %struct.gem** %3, align 8
  %300 = getelementptr inbounds %struct.gem, %struct.gem* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @RXDMA_CFG, align 8
  %303 = add nsw i64 %301, %302
  %304 = call i32 @readl(i64 %303)
  store i32 %304, i32* %8, align 4
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @RXDMA_CFG_ENABLE, align 4
  %307 = or i32 %305, %306
  %308 = load %struct.gem*, %struct.gem** %3, align 8
  %309 = getelementptr inbounds %struct.gem, %struct.gem* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @RXDMA_CFG, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @writel(i32 %307, i64 %312)
  %314 = load i32, i32* @MAC_RXSTAT_RCV, align 4
  %315 = load %struct.gem*, %struct.gem** %3, align 8
  %316 = getelementptr inbounds %struct.gem, %struct.gem* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @MAC_RXMASK, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @writel(i32 %314, i64 %319)
  %321 = load %struct.gem*, %struct.gem** %3, align 8
  %322 = getelementptr inbounds %struct.gem, %struct.gem* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @MAC_RXCFG, align 8
  %325 = add nsw i64 %323, %324
  %326 = call i32 @readl(i64 %325)
  store i32 %326, i32* %8, align 4
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %329 = or i32 %327, %328
  %330 = load %struct.gem*, %struct.gem** %3, align 8
  %331 = getelementptr inbounds %struct.gem, %struct.gem* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @MAC_RXCFG, align 8
  %334 = add nsw i64 %332, %333
  %335 = call i32 @writel(i32 %329, i64 %334)
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %275, %175, %150, %112, %80, %42
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @RXDCTRL_FRESH(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
