; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_set_link_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_set_link_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_6__*)* }
%struct.netdev_queue = type { i32 }

@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@phy_serialink = common dso_local global i64 0, align 8
@phy_serdes = common dso_local global i64 0, align 8
@PCS_MIILP = common dso_local global i64 0, align 8
@PCS_MIIADV_FD = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Link is up at %d Mbps, %s-duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@MAC_TXCFG_EIPG0 = common dso_local global i32 0, align 4
@MAC_TXCFG_NGU = common dso_local global i32 0, align 4
@MAC_TXCFG_ICS = common dso_local global i32 0, align 4
@MAC_TXCFG_ICOLL = common dso_local global i32 0, align 4
@MAC_TXCFG = common dso_local global i64 0, align 8
@MAC_XIFCFG_OE = common dso_local global i32 0, align 4
@MAC_XIFCFG_LLED = common dso_local global i32 0, align 4
@phy_mii_mdio0 = common dso_local global i64 0, align 8
@phy_mii_mdio1 = common dso_local global i64 0, align 8
@MAC_XIFCFG_DISE = common dso_local global i32 0, align 4
@MAC_XIFCFG_FLED = common dso_local global i32 0, align 4
@MAC_XIFCFG_GMII = common dso_local global i32 0, align 4
@MAC_XIFCFG = common dso_local global i64 0, align 8
@MAC_TXCFG_TCE = common dso_local global i32 0, align 4
@MAC_RXCFG = common dso_local global i64 0, align 8
@MAC_RXCFG_RCE = common dso_local global i32 0, align 4
@PCS_MIIADV_SP = common dso_local global i32 0, align 4
@PCS_MIIADV_AP = common dso_local global i32 0, align 4
@MAC_STIME = common dso_local global i64 0, align 8
@MAC_MCCFG = common dso_local global i64 0, align 8
@MAC_MCCFG_SPE = common dso_local global i32 0, align 4
@MAC_MCCFG_RPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Pause is enabled (rxfifo: %d off: %d on: %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Pause is disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem*)* @gem_set_link_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_set_link_modes(%struct.gem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %3, align 8
  %11 = load %struct.gem*, %struct.gem** %3, align 8
  %12 = getelementptr inbounds %struct.gem, %struct.gem* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %13, i32 0)
  store %struct.netdev_queue* %14, %struct.netdev_queue** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @SPEED_10, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.gem*, %struct.gem** %3, align 8
  %17 = call i64 @found_mii_phy(%struct.gem* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %1
  %20 = load %struct.gem*, %struct.gem** %3, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %26, align 8
  %28 = load %struct.gem*, %struct.gem** %3, align 8
  %29 = getelementptr inbounds %struct.gem, %struct.gem* %28, i32 0, i32 6
  %30 = call i64 %27(%struct.TYPE_6__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %337

33:                                               ; preds = %19
  %34 = load %struct.gem*, %struct.gem** %3, align 8
  %35 = getelementptr inbounds %struct.gem, %struct.gem* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DUPLEX_FULL, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load %struct.gem*, %struct.gem** %3, align 8
  %42 = getelementptr inbounds %struct.gem, %struct.gem* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %6, align 4
  %45 = load %struct.gem*, %struct.gem** %3, align 8
  %46 = getelementptr inbounds %struct.gem, %struct.gem* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %82

49:                                               ; preds = %1
  %50 = load %struct.gem*, %struct.gem** %3, align 8
  %51 = getelementptr inbounds %struct.gem, %struct.gem* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @phy_serialink, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.gem*, %struct.gem** %3, align 8
  %57 = getelementptr inbounds %struct.gem, %struct.gem* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @phy_serdes, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55, %49
  %62 = load %struct.gem*, %struct.gem** %3, align 8
  %63 = getelementptr inbounds %struct.gem, %struct.gem* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PCS_MIILP, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @PCS_MIIADV_FD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %61
  %73 = load %struct.gem*, %struct.gem** %3, align 8
  %74 = getelementptr inbounds %struct.gem, %struct.gem* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @phy_serdes, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %61
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32, i32* @SPEED_1000, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %55
  br label %82

82:                                               ; preds = %81, %33
  %83 = load %struct.gem*, %struct.gem** %3, align 8
  %84 = load i32, i32* @link, align 4
  %85 = load %struct.gem*, %struct.gem** %3, align 8
  %86 = getelementptr inbounds %struct.gem, %struct.gem* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %93 = call i32 @netif_info(%struct.gem* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %88, i8* %92)
  %94 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %95 = call i32 (...) @smp_processor_id()
  %96 = call i32 @__netif_tx_lock(%struct.netdev_queue* %94, i32 %95)
  %97 = load i32, i32* @MAC_TXCFG_EIPG0, align 4
  %98 = load i32, i32* @MAC_TXCFG_NGU, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %82
  %103 = load i32, i32* @MAC_TXCFG_ICS, align 4
  %104 = load i32, i32* @MAC_TXCFG_ICOLL, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %109

108:                                              ; preds = %82
  br label %109

109:                                              ; preds = %108, %102
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.gem*, %struct.gem** %3, align 8
  %112 = getelementptr inbounds %struct.gem, %struct.gem* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MAC_TXCFG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load i32, i32* @MAC_XIFCFG_OE, align 4
  %118 = load i32, i32* @MAC_XIFCFG_LLED, align 4
  %119 = or i32 %117, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %109
  %123 = load %struct.gem*, %struct.gem** %3, align 8
  %124 = getelementptr inbounds %struct.gem, %struct.gem* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @phy_mii_mdio0, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.gem*, %struct.gem** %3, align 8
  %130 = getelementptr inbounds %struct.gem, %struct.gem* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @phy_mii_mdio1, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128, %122
  %135 = load i32, i32* @MAC_XIFCFG_DISE, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %146

138:                                              ; preds = %128, %109
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* @MAC_XIFCFG_FLED, align 4
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %141, %138
  br label %146

146:                                              ; preds = %145, %134
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @SPEED_1000, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* @MAC_XIFCFG_GMII, align 4
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.gem*, %struct.gem** %3, align 8
  %157 = getelementptr inbounds %struct.gem, %struct.gem* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MAC_XIFCFG, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @SPEED_1000, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %199

165:                                              ; preds = %154
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %199, label %168

168:                                              ; preds = %165
  %169 = load %struct.gem*, %struct.gem** %3, align 8
  %170 = getelementptr inbounds %struct.gem, %struct.gem* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @MAC_TXCFG, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @readl(i64 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @MAC_TXCFG_TCE, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.gem*, %struct.gem** %3, align 8
  %179 = getelementptr inbounds %struct.gem, %struct.gem* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @MAC_TXCFG, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writel(i32 %177, i64 %182)
  %184 = load %struct.gem*, %struct.gem** %3, align 8
  %185 = getelementptr inbounds %struct.gem, %struct.gem* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @MAC_RXCFG, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @readl(i64 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @MAC_RXCFG_RCE, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.gem*, %struct.gem** %3, align 8
  %194 = getelementptr inbounds %struct.gem, %struct.gem* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MAC_RXCFG, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @writel(i32 %192, i64 %197)
  br label %232

199:                                              ; preds = %165, %154
  %200 = load %struct.gem*, %struct.gem** %3, align 8
  %201 = getelementptr inbounds %struct.gem, %struct.gem* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MAC_TXCFG, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @readl(i64 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @MAC_TXCFG_TCE, align 4
  %208 = xor i32 %207, -1
  %209 = and i32 %206, %208
  %210 = load %struct.gem*, %struct.gem** %3, align 8
  %211 = getelementptr inbounds %struct.gem, %struct.gem* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MAC_TXCFG, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 %209, i64 %214)
  %216 = load %struct.gem*, %struct.gem** %3, align 8
  %217 = getelementptr inbounds %struct.gem, %struct.gem* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @MAC_RXCFG, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @readl(i64 %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @MAC_RXCFG_RCE, align 4
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  %226 = load %struct.gem*, %struct.gem** %3, align 8
  %227 = getelementptr inbounds %struct.gem, %struct.gem* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @MAC_RXCFG, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writel(i32 %225, i64 %230)
  br label %232

232:                                              ; preds = %199, %168
  %233 = load %struct.gem*, %struct.gem** %3, align 8
  %234 = getelementptr inbounds %struct.gem, %struct.gem* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @phy_serialink, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load %struct.gem*, %struct.gem** %3, align 8
  %240 = getelementptr inbounds %struct.gem, %struct.gem* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @phy_serdes, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %238, %232
  %245 = load %struct.gem*, %struct.gem** %3, align 8
  %246 = getelementptr inbounds %struct.gem, %struct.gem* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @PCS_MIILP, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @readl(i64 %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* @PCS_MIIADV_SP, align 4
  %253 = load i32, i32* @PCS_MIIADV_AP, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %251, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %244
  store i32 1, i32* %7, align 4
  br label %258

258:                                              ; preds = %257, %244
  br label %259

259:                                              ; preds = %258, %238
  %260 = load i32, i32* %5, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %259
  %263 = load %struct.gem*, %struct.gem** %3, align 8
  %264 = getelementptr inbounds %struct.gem, %struct.gem* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @MAC_STIME, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @writel(i32 512, i64 %267)
  br label %276

269:                                              ; preds = %259
  %270 = load %struct.gem*, %struct.gem** %3, align 8
  %271 = getelementptr inbounds %struct.gem, %struct.gem* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @MAC_STIME, align 8
  %274 = add nsw i64 %272, %273
  %275 = call i32 @writel(i32 64, i64 %274)
  br label %276

276:                                              ; preds = %269, %262
  %277 = load %struct.gem*, %struct.gem** %3, align 8
  %278 = getelementptr inbounds %struct.gem, %struct.gem* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @MAC_MCCFG, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @readl(i64 %281)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %276
  %286 = load i32, i32* @MAC_MCCFG_SPE, align 4
  %287 = load i32, i32* @MAC_MCCFG_RPE, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* %8, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %8, align 4
  br label %298

291:                                              ; preds = %276
  %292 = load i32, i32* @MAC_MCCFG_SPE, align 4
  %293 = load i32, i32* @MAC_MCCFG_RPE, align 4
  %294 = or i32 %292, %293
  %295 = xor i32 %294, -1
  %296 = load i32, i32* %8, align 4
  %297 = and i32 %296, %295
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %291, %285
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.gem*, %struct.gem** %3, align 8
  %301 = getelementptr inbounds %struct.gem, %struct.gem* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @MAC_MCCFG, align 8
  %304 = add nsw i64 %302, %303
  %305 = call i32 @writel(i32 %299, i64 %304)
  %306 = load %struct.gem*, %struct.gem** %3, align 8
  %307 = call i32 @gem_start_dma(%struct.gem* %306)
  %308 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %309 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %308)
  %310 = load %struct.gem*, %struct.gem** %3, align 8
  %311 = call i64 @netif_msg_link(%struct.gem* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %336

313:                                              ; preds = %298
  %314 = load i32, i32* %7, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %330

316:                                              ; preds = %313
  %317 = load %struct.gem*, %struct.gem** %3, align 8
  %318 = getelementptr inbounds %struct.gem, %struct.gem* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.gem*, %struct.gem** %3, align 8
  %321 = getelementptr inbounds %struct.gem, %struct.gem* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.gem*, %struct.gem** %3, align 8
  %324 = getelementptr inbounds %struct.gem, %struct.gem* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.gem*, %struct.gem** %3, align 8
  %327 = getelementptr inbounds %struct.gem, %struct.gem* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32, i8*, ...) @netdev_info(i32 %319, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %322, i32 %325, i32 %328)
  br label %335

330:                                              ; preds = %313
  %331 = load %struct.gem*, %struct.gem** %3, align 8
  %332 = getelementptr inbounds %struct.gem, %struct.gem* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 (i32, i8*, ...) @netdev_info(i32 %333, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %335

335:                                              ; preds = %330, %316
  br label %336

336:                                              ; preds = %335, %298
  store i32 0, i32* %2, align 4
  br label %337

337:                                              ; preds = %336, %32
  %338 = load i32, i32* %2, align 4
  ret i32 %338
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @found_mii_phy(%struct.gem*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_info(%struct.gem*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gem_start_dma(%struct.gem*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

declare dso_local i64 @netif_msg_link(%struct.gem*) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
