; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.subsys_tbl_ent = type { i32 }

@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@ENABLE_APE = common dso_local global i32 0, align 4
@TG3_APE_LOCK_PHY0 = common dso_local global i32 0, align 4
@TG3_APE_LOCK_PHY1 = common dso_local global i32 0, align 4
@TG3_APE_LOCK_PHY2 = common dso_local global i32 0, align 4
@TG3_APE_LOCK_PHY3 = common dso_local global i32 0, align 4
@ENABLE_ASF = common dso_local global i32 0, align 4
@TG3_PHYFLG_ANY_SERDES = common dso_local global i32 0, align 4
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@TG3_PHYFLG_1G_ON_VAUX_OK = common dso_local global i32 0, align 4
@TG3_PHYFLG_KEEP_LINK_ON_PWRDN = common dso_local global i32 0, align 4
@USE_PHYLIB = common dso_local global i32 0, align 4
@TG3_PHY_ID_INVALID = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@TG3_PHY_ID_MASK = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM8002 = common dso_local global i32 0, align 4
@TG3_PHYFLG_PHY_SERDES = common dso_local global i32 0, align 4
@IS_SSB_CORE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ASIC_REV_5719 = common dso_local global i64 0, align 8
@ASIC_REV_5720 = common dso_local global i64 0, align 8
@ASIC_REV_57766 = common dso_local global i64 0, align 8
@ASIC_REV_5762 = common dso_local global i64 0, align 8
@ASIC_REV_5717 = common dso_local global i64 0, align 8
@CHIPREV_ID_5717_A0 = common dso_local global i64 0, align 8
@ASIC_REV_57765 = common dso_local global i64 0, align 8
@CHIPREV_ID_57765_A0 = common dso_local global i64 0, align 8
@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@TG3_CPMU_DBTMR1_LNKIDLE_2047US = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM5401 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_probe(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.subsys_tbl_ent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = load i32, i32* @PAUSE_AUTONEG, align 4
  %14 = call i32 @tg3_flag_set(%struct.tg3* %12, i32 %13)
  %15 = load i32, i32* @FLOW_CTRL_TX, align 4
  %16 = load i32, i32* @FLOW_CTRL_RX, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.tg3*, %struct.tg3** %3, align 8
  %22 = load i32, i32* @ENABLE_APE, align 4
  %23 = call i64 @tg3_flag(%struct.tg3* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %1
  %26 = load %struct.tg3*, %struct.tg3** %3, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %45 [
    i32 0, label %29
    i32 1, label %33
    i32 2, label %37
    i32 3, label %41
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @TG3_APE_LOCK_PHY0, align 4
  %31 = load %struct.tg3*, %struct.tg3** %3, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load i32, i32* @TG3_APE_LOCK_PHY1, align 4
  %35 = load %struct.tg3*, %struct.tg3** %3, align 8
  %36 = getelementptr inbounds %struct.tg3, %struct.tg3* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %45

37:                                               ; preds = %25
  %38 = load i32, i32* @TG3_APE_LOCK_PHY2, align 4
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %25
  %42 = load i32, i32* @TG3_APE_LOCK_PHY3, align 4
  %43 = load %struct.tg3*, %struct.tg3** %3, align 8
  %44 = getelementptr inbounds %struct.tg3, %struct.tg3* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %25, %41, %37, %33, %29
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.tg3*, %struct.tg3** %3, align 8
  %48 = load i32, i32* @ENABLE_ASF, align 4
  %49 = call i64 @tg3_flag(%struct.tg3* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %46
  %52 = load %struct.tg3*, %struct.tg3** %3, align 8
  %53 = getelementptr inbounds %struct.tg3, %struct.tg3* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %51
  %59 = load %struct.tg3*, %struct.tg3** %3, align 8
  %60 = getelementptr inbounds %struct.tg3, %struct.tg3* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @TG3_PHYFLG_1G_ON_VAUX_OK, align 4
  %67 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.tg3*, %struct.tg3** %3, align 8
  %71 = getelementptr inbounds %struct.tg3, %struct.tg3* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %65, %58, %51, %46
  %75 = load %struct.tg3*, %struct.tg3** %3, align 8
  %76 = load i32, i32* @USE_PHYLIB, align 4
  %77 = call i64 @tg3_flag(%struct.tg3* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.tg3*, %struct.tg3** %3, align 8
  %81 = call i32 @tg3_phy_init(%struct.tg3* %80)
  store i32 %81, i32* %2, align 4
  br label %362

82:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  %83 = load %struct.tg3*, %struct.tg3** %3, align 8
  %84 = load i32, i32* @ENABLE_ASF, align 4
  %85 = call i64 @tg3_flag(%struct.tg3* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.tg3*, %struct.tg3** %3, align 8
  %89 = load i32, i32* @ENABLE_APE, align 4
  %90 = call i64 @tg3_flag(%struct.tg3* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87, %82
  %93 = load i32, i32* @TG3_PHY_ID_INVALID, align 4
  store i32 %93, i32* %7, align 4
  store i32 %93, i32* %6, align 4
  br label %121

94:                                               ; preds = %87
  %95 = load %struct.tg3*, %struct.tg3** %3, align 8
  %96 = load i32, i32* @MII_PHYSID1, align 4
  %97 = call i32 @tg3_readphy(%struct.tg3* %95, i32 %96, i32* %4)
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load %struct.tg3*, %struct.tg3** %3, align 8
  %101 = load i32, i32* @MII_PHYSID2, align 4
  %102 = call i32 @tg3_readphy(%struct.tg3* %100, i32 %101, i32* %5)
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, 65535
  %107 = shl i32 %106, 10
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 64512
  %110 = shl i32 %109, 16
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, 1023
  %115 = shl i32 %114, 0
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %120 = and i32 %118, %119
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %94, %92
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = call i64 @TG3_KNOWN_PHY_ID(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.tg3*, %struct.tg3** %3, align 8
  %131 = getelementptr inbounds %struct.tg3, %struct.tg3* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @TG3_PHY_ID_BCM8002, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %137 = load %struct.tg3*, %struct.tg3** %3, align 8
  %138 = getelementptr inbounds %struct.tg3, %struct.tg3* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %148

141:                                              ; preds = %128
  %142 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.tg3*, %struct.tg3** %3, align 8
  %145 = getelementptr inbounds %struct.tg3, %struct.tg3* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %135
  br label %195

149:                                              ; preds = %124, %121
  %150 = load %struct.tg3*, %struct.tg3** %3, align 8
  %151 = getelementptr inbounds %struct.tg3, %struct.tg3* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @TG3_PHY_ID_INVALID, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %194

156:                                              ; preds = %149
  %157 = load %struct.tg3*, %struct.tg3** %3, align 8
  %158 = call %struct.subsys_tbl_ent* @tg3_lookup_by_subsys(%struct.tg3* %157)
  store %struct.subsys_tbl_ent* %158, %struct.subsys_tbl_ent** %9, align 8
  %159 = load %struct.subsys_tbl_ent*, %struct.subsys_tbl_ent** %9, align 8
  %160 = icmp ne %struct.subsys_tbl_ent* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.subsys_tbl_ent*, %struct.subsys_tbl_ent** %9, align 8
  %163 = getelementptr inbounds %struct.subsys_tbl_ent, %struct.subsys_tbl_ent* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.tg3*, %struct.tg3** %3, align 8
  %166 = getelementptr inbounds %struct.tg3, %struct.tg3* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  br label %176

167:                                              ; preds = %156
  %168 = load %struct.tg3*, %struct.tg3** %3, align 8
  %169 = load i32, i32* @IS_SSB_CORE, align 4
  %170 = call i64 @tg3_flag(%struct.tg3* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %362

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %175, %161
  %177 = load %struct.tg3*, %struct.tg3** %3, align 8
  %178 = getelementptr inbounds %struct.tg3, %struct.tg3* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.tg3*, %struct.tg3** %3, align 8
  %183 = getelementptr inbounds %struct.tg3, %struct.tg3* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @TG3_PHY_ID_BCM8002, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181, %176
  %188 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %189 = load %struct.tg3*, %struct.tg3** %3, align 8
  %190 = getelementptr inbounds %struct.tg3, %struct.tg3* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %181
  br label %194

194:                                              ; preds = %193, %155
  br label %195

195:                                              ; preds = %194, %148
  %196 = load %struct.tg3*, %struct.tg3** %3, align 8
  %197 = getelementptr inbounds %struct.tg3, %struct.tg3* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %270, label %202

202:                                              ; preds = %195
  %203 = load %struct.tg3*, %struct.tg3** %3, align 8
  %204 = call i64 @tg3_asic_rev(%struct.tg3* %203)
  %205 = load i64, i64* @ASIC_REV_5719, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %242, label %207

207:                                              ; preds = %202
  %208 = load %struct.tg3*, %struct.tg3** %3, align 8
  %209 = call i64 @tg3_asic_rev(%struct.tg3* %208)
  %210 = load i64, i64* @ASIC_REV_5720, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %242, label %212

212:                                              ; preds = %207
  %213 = load %struct.tg3*, %struct.tg3** %3, align 8
  %214 = call i64 @tg3_asic_rev(%struct.tg3* %213)
  %215 = load i64, i64* @ASIC_REV_57766, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %242, label %217

217:                                              ; preds = %212
  %218 = load %struct.tg3*, %struct.tg3** %3, align 8
  %219 = call i64 @tg3_asic_rev(%struct.tg3* %218)
  %220 = load i64, i64* @ASIC_REV_5762, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %242, label %222

222:                                              ; preds = %217
  %223 = load %struct.tg3*, %struct.tg3** %3, align 8
  %224 = call i64 @tg3_asic_rev(%struct.tg3* %223)
  %225 = load i64, i64* @ASIC_REV_5717, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.tg3*, %struct.tg3** %3, align 8
  %229 = call i64 @tg3_chip_rev_id(%struct.tg3* %228)
  %230 = load i64, i64* @CHIPREV_ID_5717_A0, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %242, label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.tg3*, %struct.tg3** %3, align 8
  %234 = call i64 @tg3_asic_rev(%struct.tg3* %233)
  %235 = load i64, i64* @ASIC_REV_57765, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %270

237:                                              ; preds = %232
  %238 = load %struct.tg3*, %struct.tg3** %3, align 8
  %239 = call i64 @tg3_chip_rev_id(%struct.tg3* %238)
  %240 = load i64, i64* @CHIPREV_ID_57765_A0, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %270

242:                                              ; preds = %237, %227, %217, %212, %207, %202
  %243 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %244 = load %struct.tg3*, %struct.tg3** %3, align 8
  %245 = getelementptr inbounds %struct.tg3, %struct.tg3* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %249 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.tg3*, %struct.tg3** %3, align 8
  %252 = getelementptr inbounds %struct.tg3, %struct.tg3* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 4
  %254 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %255 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.tg3*, %struct.tg3** %3, align 8
  %258 = getelementptr inbounds %struct.tg3, %struct.tg3* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 1
  store i32 %256, i32* %259, align 4
  %260 = load %struct.tg3*, %struct.tg3** %3, align 8
  %261 = getelementptr inbounds %struct.tg3, %struct.tg3* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 2
  store i32 1, i32* %262, align 4
  %263 = load %struct.tg3*, %struct.tg3** %3, align 8
  %264 = getelementptr inbounds %struct.tg3, %struct.tg3* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 3
  store i32 1, i32* %265, align 4
  %266 = load i32, i32* @TG3_CPMU_DBTMR1_LNKIDLE_2047US, align 4
  %267 = load %struct.tg3*, %struct.tg3** %3, align 8
  %268 = getelementptr inbounds %struct.tg3, %struct.tg3* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 4
  store i32 %266, i32* %269, align 4
  br label %270

270:                                              ; preds = %242, %237, %232, %195
  %271 = load %struct.tg3*, %struct.tg3** %3, align 8
  %272 = call i32 @tg3_phy_init_link_config(%struct.tg3* %271)
  %273 = load %struct.tg3*, %struct.tg3** %3, align 8
  %274 = getelementptr inbounds %struct.tg3, %struct.tg3* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %341, label %279

279:                                              ; preds = %270
  %280 = load %struct.tg3*, %struct.tg3** %3, align 8
  %281 = getelementptr inbounds %struct.tg3, %struct.tg3* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %341, label %286

286:                                              ; preds = %279
  %287 = load %struct.tg3*, %struct.tg3** %3, align 8
  %288 = load i32, i32* @ENABLE_APE, align 4
  %289 = call i64 @tg3_flag(%struct.tg3* %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %341, label %291

291:                                              ; preds = %286
  %292 = load %struct.tg3*, %struct.tg3** %3, align 8
  %293 = load i32, i32* @ENABLE_ASF, align 4
  %294 = call i64 @tg3_flag(%struct.tg3* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %341, label %296

296:                                              ; preds = %291
  %297 = load %struct.tg3*, %struct.tg3** %3, align 8
  %298 = load i32, i32* @MII_BMSR, align 4
  %299 = call i32 @tg3_readphy(%struct.tg3* %297, i32 %298, i32* %10)
  %300 = load %struct.tg3*, %struct.tg3** %3, align 8
  %301 = load i32, i32* @MII_BMSR, align 4
  %302 = call i32 @tg3_readphy(%struct.tg3* %300, i32 %301, i32* %10)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %296
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @BMSR_LSTATUS, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %342

310:                                              ; preds = %304, %296
  %311 = load %struct.tg3*, %struct.tg3** %3, align 8
  %312 = call i32 @tg3_phy_reset(%struct.tg3* %311)
  store i32 %312, i32* %8, align 4
  %313 = load i32, i32* %8, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* %8, align 4
  store i32 %316, i32* %2, align 4
  br label %362

317:                                              ; preds = %310
  %318 = load %struct.tg3*, %struct.tg3** %3, align 8
  %319 = call i32 @tg3_phy_set_wirespeed(%struct.tg3* %318)
  %320 = load %struct.tg3*, %struct.tg3** %3, align 8
  %321 = call i32 @tg3_phy_copper_an_config_ok(%struct.tg3* %320, i32* %11)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %340, label %323

323:                                              ; preds = %317
  %324 = load %struct.tg3*, %struct.tg3** %3, align 8
  %325 = load %struct.tg3*, %struct.tg3** %3, align 8
  %326 = getelementptr inbounds %struct.tg3, %struct.tg3* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.tg3*, %struct.tg3** %3, align 8
  %330 = getelementptr inbounds %struct.tg3, %struct.tg3* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @tg3_phy_autoneg_cfg(%struct.tg3* %324, i32 %328, i32 %332)
  %334 = load %struct.tg3*, %struct.tg3** %3, align 8
  %335 = load i32, i32* @MII_BMCR, align 4
  %336 = load i32, i32* @BMCR_ANENABLE, align 4
  %337 = load i32, i32* @BMCR_ANRESTART, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @tg3_writephy(%struct.tg3* %334, i32 %335, i32 %338)
  br label %340

340:                                              ; preds = %323, %317
  br label %341

341:                                              ; preds = %340, %291, %286, %279, %270
  br label %342

342:                                              ; preds = %341, %309
  %343 = load %struct.tg3*, %struct.tg3** %3, align 8
  %344 = getelementptr inbounds %struct.tg3, %struct.tg3* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %347 = and i32 %345, %346
  %348 = load i32, i32* @TG3_PHY_ID_BCM5401, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %360

350:                                              ; preds = %342
  %351 = load %struct.tg3*, %struct.tg3** %3, align 8
  %352 = call i32 @tg3_init_5401phy_dsp(%struct.tg3* %351)
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %8, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = load i32, i32* %8, align 4
  store i32 %356, i32* %2, align 4
  br label %362

357:                                              ; preds = %350
  %358 = load %struct.tg3*, %struct.tg3** %3, align 8
  %359 = call i32 @tg3_init_5401phy_dsp(%struct.tg3* %358)
  store i32 %359, i32* %8, align 4
  br label %360

360:                                              ; preds = %357, %342
  %361 = load i32, i32* %8, align 4
  store i32 %361, i32* %2, align 4
  br label %362

362:                                              ; preds = %360, %355, %315, %172, %79
  %363 = load i32, i32* %2, align 4
  ret i32 %363
}

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_phy_init(%struct.tg3*) #1

declare dso_local i32 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i64 @TG3_KNOWN_PHY_ID(i32) #1

declare dso_local %struct.subsys_tbl_ent* @tg3_lookup_by_subsys(%struct.tg3*) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_init_link_config(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_reset(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_set_wirespeed(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_copper_an_config_ok(%struct.tg3*, i32*) #1

declare dso_local i32 @tg3_phy_autoneg_cfg(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_init_5401phy_dsp(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
