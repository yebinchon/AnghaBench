; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32, i64, i32 }

@PCS_DATAPATH_MODE_MII = common dso_local global i32 0, align 4
@REG_PCS_DATAPATH_MODE = common dso_local global i64 0, align 8
@PHY_LUCENT_B0 = common dso_local global i32 0, align 4
@LUCENT_MII_REG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@PHY_BROADCOM_B0 = common dso_local global i32 0, align 4
@BROADCOM_MII_REG8 = common dso_local global i32 0, align 4
@BROADCOM_MII_REG7 = common dso_local global i32 0, align 4
@BROADCOM_MII_REG5 = common dso_local global i32 0, align 4
@PHY_BROADCOM_5411 = common dso_local global i32 0, align 4
@BROADCOM_MII_REG4 = common dso_local global i32 0, align 4
@CAS_FLAG_SATURN = common dso_local global i32 0, align 4
@CAS_PHY_MII_MDIO0 = common dso_local global i32 0, align 4
@SATURN_PCFG_FSI = common dso_local global i32 0, align 4
@REG_SATURN_PCFG = common dso_local global i64 0, align 8
@PHY_NS_DP83065 = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@CAS_ADVERTISE_PAUSE = common dso_local global i32 0, align 4
@CAS_ADVERTISE_ASYM_PAUSE = common dso_local global i32 0, align 4
@CAS_FLAG_1000MB_CAP = common dso_local global i32 0, align 4
@CAS_MII_1000_CTRL = common dso_local global i32 0, align 4
@CAS_ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@CAS_ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@PCS_DATAPATH_MODE_SERDES = common dso_local global i32 0, align 4
@REG_PCS_MII_CTRL = common dso_local global i64 0, align 8
@PCS_MII_RESET = common dso_local global i32 0, align 4
@STOP_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PCS reset bit would not clear [%08x]\0A\00", align 1
@REG_PCS_STATE_MACHINE = common dso_local global i64 0, align 8
@REG_PCS_CFG = common dso_local global i64 0, align 8
@REG_PCS_MII_ADVERT = common dso_local global i64 0, align 8
@PCS_MII_ADVERT_HD = common dso_local global i32 0, align 4
@PCS_MII_ADVERT_FD = common dso_local global i32 0, align 4
@PCS_MII_ADVERT_SYM_PAUSE = common dso_local global i32 0, align 4
@PCS_MII_ADVERT_ASYM_PAUSE = common dso_local global i32 0, align 4
@PCS_CFG_EN = common dso_local global i32 0, align 4
@PCS_SERDES_CTRL_SYNCD_EN = common dso_local global i32 0, align 4
@REG_PCS_SERDES_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_phy_init(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %6 = load %struct.cas*, %struct.cas** %2, align 8
  %7 = getelementptr inbounds %struct.cas, %struct.cas* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @CAS_PHY_MII(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %195

11:                                               ; preds = %1
  %12 = load i32, i32* @PCS_DATAPATH_MODE_MII, align 4
  %13 = load %struct.cas*, %struct.cas** %2, align 8
  %14 = getelementptr inbounds %struct.cas, %struct.cas* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REG_PCS_DATAPATH_MODE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.cas*, %struct.cas** %2, align 8
  %20 = call i32 @cas_mif_poll(%struct.cas* %19, i32 0)
  %21 = load %struct.cas*, %struct.cas** %2, align 8
  %22 = call i32 @cas_reset_mii_phy(%struct.cas* %21)
  %23 = load i32, i32* @PHY_LUCENT_B0, align 4
  %24 = load %struct.cas*, %struct.cas** %2, align 8
  %25 = getelementptr inbounds %struct.cas, %struct.cas* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %11
  %29 = load %struct.cas*, %struct.cas** %2, align 8
  %30 = load i32, i32* @LUCENT_MII_REG, align 4
  %31 = call i32 @cas_phy_write(%struct.cas* %29, i32 %30, i32 32768)
  %32 = load %struct.cas*, %struct.cas** %2, align 8
  %33 = load i32, i32* @MII_BMCR, align 4
  %34 = call i32 @cas_phy_write(%struct.cas* %32, i32 %33, i32 241)
  %35 = load %struct.cas*, %struct.cas** %2, align 8
  %36 = load i32, i32* @LUCENT_MII_REG, align 4
  %37 = call i32 @cas_phy_write(%struct.cas* %35, i32 %36, i32 0)
  br label %142

38:                                               ; preds = %11
  %39 = load i32, i32* @PHY_BROADCOM_B0, align 4
  %40 = load %struct.cas*, %struct.cas** %2, align 8
  %41 = getelementptr inbounds %struct.cas, %struct.cas* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, -4
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %38
  %46 = load %struct.cas*, %struct.cas** %2, align 8
  %47 = load i32, i32* @BROADCOM_MII_REG8, align 4
  %48 = call i32 @cas_phy_write(%struct.cas* %46, i32 %47, i32 3104)
  %49 = load %struct.cas*, %struct.cas** %2, align 8
  %50 = load i32, i32* @BROADCOM_MII_REG7, align 4
  %51 = call i32 @cas_phy_write(%struct.cas* %49, i32 %50, i32 18)
  %52 = load %struct.cas*, %struct.cas** %2, align 8
  %53 = load i32, i32* @BROADCOM_MII_REG5, align 4
  %54 = call i32 @cas_phy_write(%struct.cas* %52, i32 %53, i32 6148)
  %55 = load %struct.cas*, %struct.cas** %2, align 8
  %56 = load i32, i32* @BROADCOM_MII_REG7, align 4
  %57 = call i32 @cas_phy_write(%struct.cas* %55, i32 %56, i32 19)
  %58 = load %struct.cas*, %struct.cas** %2, align 8
  %59 = load i32, i32* @BROADCOM_MII_REG5, align 4
  %60 = call i32 @cas_phy_write(%struct.cas* %58, i32 %59, i32 4612)
  %61 = load %struct.cas*, %struct.cas** %2, align 8
  %62 = load i32, i32* @BROADCOM_MII_REG7, align 4
  %63 = call i32 @cas_phy_write(%struct.cas* %61, i32 %62, i32 32774)
  %64 = load %struct.cas*, %struct.cas** %2, align 8
  %65 = load i32, i32* @BROADCOM_MII_REG5, align 4
  %66 = call i32 @cas_phy_write(%struct.cas* %64, i32 %65, i32 306)
  %67 = load %struct.cas*, %struct.cas** %2, align 8
  %68 = load i32, i32* @BROADCOM_MII_REG7, align 4
  %69 = call i32 @cas_phy_write(%struct.cas* %67, i32 %68, i32 32774)
  %70 = load %struct.cas*, %struct.cas** %2, align 8
  %71 = load i32, i32* @BROADCOM_MII_REG5, align 4
  %72 = call i32 @cas_phy_write(%struct.cas* %70, i32 %71, i32 562)
  %73 = load %struct.cas*, %struct.cas** %2, align 8
  %74 = load i32, i32* @BROADCOM_MII_REG7, align 4
  %75 = call i32 @cas_phy_write(%struct.cas* %73, i32 %74, i32 8223)
  %76 = load %struct.cas*, %struct.cas** %2, align 8
  %77 = load i32, i32* @BROADCOM_MII_REG5, align 4
  %78 = call i32 @cas_phy_write(%struct.cas* %76, i32 %77, i32 2592)
  br label %141

79:                                               ; preds = %38
  %80 = load i32, i32* @PHY_BROADCOM_5411, align 4
  %81 = load %struct.cas*, %struct.cas** %2, align 8
  %82 = getelementptr inbounds %struct.cas, %struct.cas* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.cas*, %struct.cas** %2, align 8
  %87 = load i32, i32* @BROADCOM_MII_REG4, align 4
  %88 = call i32 @cas_phy_read(%struct.cas* %86, i32 %87)
  store i32 %88, i32* %3, align 4
  %89 = load %struct.cas*, %struct.cas** %2, align 8
  %90 = load i32, i32* @BROADCOM_MII_REG4, align 4
  %91 = call i32 @cas_phy_read(%struct.cas* %89, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load %struct.cas*, %struct.cas** %2, align 8
  %97 = load i32, i32* @BROADCOM_MII_REG4, align 4
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, -129
  %100 = call i32 @cas_phy_write(%struct.cas* %96, i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %95, %85
  br label %140

102:                                              ; preds = %79
  %103 = load %struct.cas*, %struct.cas** %2, align 8
  %104 = getelementptr inbounds %struct.cas, %struct.cas* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CAS_FLAG_SATURN, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %102
  %110 = load %struct.cas*, %struct.cas** %2, align 8
  %111 = getelementptr inbounds %struct.cas, %struct.cas* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CAS_PHY_MII_MDIO0, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @SATURN_PCFG_FSI, align 4
  br label %119

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = load %struct.cas*, %struct.cas** %2, align 8
  %122 = getelementptr inbounds %struct.cas, %struct.cas* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @REG_SATURN_PCFG, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  %127 = load i64, i64* @PHY_NS_DP83065, align 8
  %128 = load %struct.cas*, %struct.cas** %2, align 8
  %129 = getelementptr inbounds %struct.cas, %struct.cas* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp eq i64 %127, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load %struct.cas*, %struct.cas** %2, align 8
  %135 = call i32 @cas_saturn_firmware_load(%struct.cas* %134)
  br label %136

136:                                              ; preds = %133, %119
  %137 = load %struct.cas*, %struct.cas** %2, align 8
  %138 = call i32 @cas_phy_powerup(%struct.cas* %137)
  br label %139

139:                                              ; preds = %136, %102
  br label %140

140:                                              ; preds = %139, %101
  br label %141

141:                                              ; preds = %140, %45
  br label %142

142:                                              ; preds = %141, %28
  %143 = load %struct.cas*, %struct.cas** %2, align 8
  %144 = load i32, i32* @MII_BMCR, align 4
  %145 = call i32 @cas_phy_read(%struct.cas* %143, i32 %144)
  store i32 %145, i32* %3, align 4
  %146 = load i32, i32* @BMCR_ANENABLE, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %3, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %3, align 4
  %150 = load %struct.cas*, %struct.cas** %2, align 8
  %151 = load i32, i32* @MII_BMCR, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @cas_phy_write(%struct.cas* %150, i32 %151, i32 %152)
  %154 = call i32 @udelay(i32 10)
  %155 = load %struct.cas*, %struct.cas** %2, align 8
  %156 = load i32, i32* @MII_ADVERTISE, align 4
  %157 = load %struct.cas*, %struct.cas** %2, align 8
  %158 = load i32, i32* @MII_ADVERTISE, align 4
  %159 = call i32 @cas_phy_read(%struct.cas* %157, i32 %158)
  %160 = load i32, i32* @ADVERTISE_10HALF, align 4
  %161 = load i32, i32* @ADVERTISE_10FULL, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @ADVERTISE_100HALF, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @ADVERTISE_100FULL, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @CAS_ADVERTISE_PAUSE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @CAS_ADVERTISE_ASYM_PAUSE, align 4
  %170 = or i32 %168, %169
  %171 = or i32 %159, %170
  %172 = call i32 @cas_phy_write(%struct.cas* %155, i32 %156, i32 %171)
  %173 = load %struct.cas*, %struct.cas** %2, align 8
  %174 = getelementptr inbounds %struct.cas, %struct.cas* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %142
  %180 = load %struct.cas*, %struct.cas** %2, align 8
  %181 = load i32, i32* @CAS_MII_1000_CTRL, align 4
  %182 = call i32 @cas_phy_read(%struct.cas* %180, i32 %181)
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* @CAS_ADVERTISE_1000HALF, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %3, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %3, align 4
  %187 = load i32, i32* @CAS_ADVERTISE_1000FULL, align 4
  %188 = load i32, i32* %3, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %3, align 4
  %190 = load %struct.cas*, %struct.cas** %2, align 8
  %191 = load i32, i32* @CAS_MII_1000_CTRL, align 4
  %192 = load i32, i32* %3, align 4
  %193 = call i32 @cas_phy_write(%struct.cas* %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %179, %142
  br label %310

195:                                              ; preds = %1
  %196 = load i32, i32* @PCS_DATAPATH_MODE_SERDES, align 4
  %197 = load %struct.cas*, %struct.cas** %2, align 8
  %198 = getelementptr inbounds %struct.cas, %struct.cas* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @REG_PCS_DATAPATH_MODE, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @writel(i32 %196, i64 %201)
  %203 = load %struct.cas*, %struct.cas** %2, align 8
  %204 = getelementptr inbounds %struct.cas, %struct.cas* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CAS_FLAG_SATURN, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %195
  %210 = load %struct.cas*, %struct.cas** %2, align 8
  %211 = getelementptr inbounds %struct.cas, %struct.cas* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @REG_SATURN_PCFG, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 0, i64 %214)
  br label %216

216:                                              ; preds = %209, %195
  %217 = load %struct.cas*, %struct.cas** %2, align 8
  %218 = getelementptr inbounds %struct.cas, %struct.cas* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @readl(i64 %221)
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* @PCS_MII_RESET, align 4
  %224 = load i32, i32* %4, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* %4, align 4
  %227 = load %struct.cas*, %struct.cas** %2, align 8
  %228 = getelementptr inbounds %struct.cas, %struct.cas* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @writel(i32 %226, i64 %231)
  %233 = load i32, i32* @STOP_TRIES, align 4
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %250, %216
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %5, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = call i32 @udelay(i32 10)
  %240 = load %struct.cas*, %struct.cas** %2, align 8
  %241 = getelementptr inbounds %struct.cas, %struct.cas* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @readl(i64 %244)
  %246 = load i32, i32* @PCS_MII_RESET, align 4
  %247 = and i32 %245, %246
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %251

250:                                              ; preds = %238
  br label %234

251:                                              ; preds = %249, %234
  %252 = load i32, i32* %5, align 4
  %253 = icmp sle i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %251
  %255 = load %struct.cas*, %struct.cas** %2, align 8
  %256 = getelementptr inbounds %struct.cas, %struct.cas* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.cas*, %struct.cas** %2, align 8
  %259 = getelementptr inbounds %struct.cas, %struct.cas* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @REG_PCS_STATE_MACHINE, align 8
  %262 = add nsw i64 %260, %261
  %263 = call i32 @readl(i64 %262)
  %264 = call i32 @netdev_warn(i32 %257, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %254, %251
  %266 = load %struct.cas*, %struct.cas** %2, align 8
  %267 = getelementptr inbounds %struct.cas, %struct.cas* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @REG_PCS_CFG, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @writel(i32 0, i64 %270)
  %272 = load %struct.cas*, %struct.cas** %2, align 8
  %273 = getelementptr inbounds %struct.cas, %struct.cas* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @REG_PCS_MII_ADVERT, align 8
  %276 = add nsw i64 %274, %275
  %277 = call i32 @readl(i64 %276)
  store i32 %277, i32* %4, align 4
  %278 = load i32, i32* @PCS_MII_ADVERT_HD, align 4
  %279 = xor i32 %278, -1
  %280 = load i32, i32* %4, align 4
  %281 = and i32 %280, %279
  store i32 %281, i32* %4, align 4
  %282 = load i32, i32* @PCS_MII_ADVERT_FD, align 4
  %283 = load i32, i32* @PCS_MII_ADVERT_SYM_PAUSE, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @PCS_MII_ADVERT_ASYM_PAUSE, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* %4, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %4, align 4
  %289 = load i32, i32* %4, align 4
  %290 = load %struct.cas*, %struct.cas** %2, align 8
  %291 = getelementptr inbounds %struct.cas, %struct.cas* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @REG_PCS_MII_ADVERT, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @writel(i32 %289, i64 %294)
  %296 = load i32, i32* @PCS_CFG_EN, align 4
  %297 = load %struct.cas*, %struct.cas** %2, align 8
  %298 = getelementptr inbounds %struct.cas, %struct.cas* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @REG_PCS_CFG, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @writel(i32 %296, i64 %301)
  %303 = load i32, i32* @PCS_SERDES_CTRL_SYNCD_EN, align 4
  %304 = load %struct.cas*, %struct.cas** %2, align 8
  %305 = getelementptr inbounds %struct.cas, %struct.cas* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @REG_PCS_SERDES_CTRL, align 8
  %308 = add nsw i64 %306, %307
  %309 = call i32 @writel(i32 %303, i64 %308)
  br label %310

310:                                              ; preds = %265, %194
  ret void
}

declare dso_local i64 @CAS_PHY_MII(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_reset_mii_phy(%struct.cas*) #1

declare dso_local i32 @cas_phy_write(%struct.cas*, i32, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @cas_saturn_firmware_load(%struct.cas*) #1

declare dso_local i32 @cas_phy_powerup(%struct.cas*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
