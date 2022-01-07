; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_copper_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_copper_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i8*, i64 }

@MAC_MI_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@MAC_MI_MODE = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_SHDWSEL_PWRCTL = common dso_local global i32 0, align 4
@ASIC_REV_5703 = common dso_local global i64 0, align 8
@ASIC_REV_5704 = common dso_local global i64 0, align 8
@ASIC_REV_5705 = common dso_local global i64 0, align 8
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@TG3_PHY_ID_MASK = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM5401 = common dso_local global i32 0, align 4
@INIT_COMPLETE = common dso_local global i32 0, align 4
@TG3_PHY_ID_REV_MASK = common dso_local global i32 0, align 4
@TG3_PHY_REV_BCM5401_B0 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@CHIPREV_ID_5701_A0 = common dso_local global i64 0, align 8
@CHIPREV_ID_5701_B0 = common dso_local global i64 0, align 8
@MII_TG3_MISC_SHDW = common dso_local global i32 0, align 4
@MII_TG3_ISTAT = common dso_local global i32 0, align 4
@TG3_PHYFLG_USE_MI_INTERRUPT = common dso_local global i32 0, align 4
@MII_TG3_IMASK = common dso_local global i32 0, align 4
@MII_TG3_INT_LINKCHG = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_FET = common dso_local global i32 0, align 4
@ASIC_REV_5700 = common dso_local global i64 0, align 8
@ASIC_REV_5701 = common dso_local global i64 0, align 8
@LED_CTRL_MODE_PHY_1 = common dso_local global i64 0, align 8
@MII_TG3_EXT_CTRL = common dso_local global i32 0, align 4
@MII_TG3_EXT_CTRL_LNK3_LED_MODE = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i8* null, align 8
@TG3_PHYFLG_MDIX_STATE = common dso_local global i32 0, align 4
@TG3_PHYFLG_CAPACITIVE_COUPLING = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_SHDWSEL_MISCTEST = common dso_local global i32 0, align 4
@MII_TG3_AUX_STAT = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@TG3_PHYFLG_KEEP_LINK_ON_PWRDN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_TG3_FET_GEN_STAT = common dso_local global i32 0, align 4
@MII_TG3_FET_GEN_STAT_MDIXSTAT = common dso_local global i32 0, align 4
@MII_TG3_EXT_STAT = common dso_local global i32 0, align 4
@MII_TG3_EXT_STAT_MDIX = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_LOW_POWER = common dso_local global i32 0, align 4
@ROBOSWITCH = common dso_local global i32 0, align 4
@MAC_MODE_PORT_INT_LPBACK = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_MASK = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@MAC_MODE_PORT_MODE_MII = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_GMII = common dso_local global i32 0, align 4
@RGMII_MODE = common dso_local global i32 0, align 4
@MAC_LED_CTRL = common dso_local global i32 0, align 4
@LED_CTRL_1000MBPS_ON = common dso_local global i32 0, align 4
@LED_CTRL_100MBPS_ON = common dso_local global i32 0, align 4
@LED_CTRL_LNKLED_OVERRIDE = common dso_local global i32 0, align 4
@MAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@MAC_MODE_LINK_POLARITY = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM5411 = common dso_local global i32 0, align 4
@CHIPREV_ID_5700_ALTIMA = common dso_local global i64 0, align 8
@MAC_MODE = common dso_local global i32 0, align 4
@USE_LINKCHG_REG = common dso_local global i32 0, align 4
@MAC_EVENT = common dso_local global i32 0, align 4
@MAC_EVENT_LNKSTATE_CHANGED = common dso_local global i32 0, align 4
@PCIX_MODE = common dso_local global i32 0, align 4
@PCI_HIGH_SPEED = common dso_local global i32 0, align 4
@MAC_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS_SYNC_CHANGED = common dso_local global i32 0, align 4
@MAC_STATUS_CFG_CHANGED = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX_MAGIC2 = common dso_local global i32 0, align 4
@CLKREQ_BUG = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_CLKREQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_setup_copper_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_setup_copper_phy(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.tg3*, %struct.tg3** %4, align 8
  %22 = call i32 @tg3_clear_mac_status(%struct.tg3* %21)
  %23 = load %struct.tg3*, %struct.tg3** %4, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i32, i32* @MAC_MI_MODE, align 4
  %31 = load %struct.tg3*, %struct.tg3** %4, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @tw32_f(i32 %30, i32 %36)
  %38 = call i32 @udelay(i32 80)
  br label %39

39:                                               ; preds = %29, %2
  %40 = load %struct.tg3*, %struct.tg3** %4, align 8
  %41 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_PWRCTL, align 4
  %42 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %40, i32 %41, i32 0)
  %43 = load %struct.tg3*, %struct.tg3** %4, align 8
  %44 = call i64 @tg3_asic_rev(%struct.tg3* %43)
  %45 = load i64, i64* @ASIC_REV_5703, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load %struct.tg3*, %struct.tg3** %4, align 8
  %49 = call i64 @tg3_asic_rev(%struct.tg3* %48)
  %50 = load i64, i64* @ASIC_REV_5704, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.tg3*, %struct.tg3** %4, align 8
  %54 = call i64 @tg3_asic_rev(%struct.tg3* %53)
  %55 = load i64, i64* @ASIC_REV_5705, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %52, %47, %39
  %58 = load %struct.tg3*, %struct.tg3** %4, align 8
  %59 = getelementptr inbounds %struct.tg3, %struct.tg3* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.tg3*, %struct.tg3** %4, align 8
  %64 = load i32, i32* @MII_BMSR, align 4
  %65 = call i64 @tg3_readphy(%struct.tg3* %63, i32 %64, i32* %7)
  %66 = load %struct.tg3*, %struct.tg3** %4, align 8
  %67 = load i32, i32* @MII_BMSR, align 4
  %68 = call i64 @tg3_readphy(%struct.tg3* %66, i32 %67, i32* %7)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @BMSR_LSTATUS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %70, %62
  br label %77

77:                                               ; preds = %76, %57, %52
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.tg3*, %struct.tg3** %4, align 8
  %82 = call i32 @tg3_phy_reset(%struct.tg3* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.tg3*, %struct.tg3** %4, align 8
  %85 = getelementptr inbounds %struct.tg3, %struct.tg3* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @TG3_PHY_ID_BCM5401, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %177

91:                                               ; preds = %83
  %92 = load %struct.tg3*, %struct.tg3** %4, align 8
  %93 = load i32, i32* @MII_BMSR, align 4
  %94 = call i64 @tg3_readphy(%struct.tg3* %92, i32 %93, i32* %7)
  %95 = load %struct.tg3*, %struct.tg3** %4, align 8
  %96 = load i32, i32* @MII_BMSR, align 4
  %97 = call i64 @tg3_readphy(%struct.tg3* %95, i32 %96, i32* %7)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %91
  %100 = load %struct.tg3*, %struct.tg3** %4, align 8
  %101 = load i32, i32* @INIT_COMPLETE, align 4
  %102 = call i64 @tg3_flag(%struct.tg3* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99, %91
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %99
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @BMSR_LSTATUS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %176, label %110

110:                                              ; preds = %105
  %111 = load %struct.tg3*, %struct.tg3** %4, align 8
  %112 = call i32 @tg3_init_5401phy_dsp(%struct.tg3* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %3, align 4
  br label %829

117:                                              ; preds = %110
  %118 = load %struct.tg3*, %struct.tg3** %4, align 8
  %119 = load i32, i32* @MII_BMSR, align 4
  %120 = call i64 @tg3_readphy(%struct.tg3* %118, i32 %119, i32* %7)
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %138, %117
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 1000
  br i1 %123, label %124, label %141

124:                                              ; preds = %121
  %125 = call i32 @udelay(i32 10)
  %126 = load %struct.tg3*, %struct.tg3** %4, align 8
  %127 = load i32, i32* @MII_BMSR, align 4
  %128 = call i64 @tg3_readphy(%struct.tg3* %126, i32 %127, i32* %7)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @BMSR_LSTATUS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 @udelay(i32 40)
  br label %141

137:                                              ; preds = %130, %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %121

141:                                              ; preds = %135, %121
  %142 = load %struct.tg3*, %struct.tg3** %4, align 8
  %143 = getelementptr inbounds %struct.tg3, %struct.tg3* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TG3_PHY_ID_REV_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @TG3_PHY_REV_BCM5401_B0, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @BMSR_LSTATUS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %175, label %154

154:                                              ; preds = %149
  %155 = load %struct.tg3*, %struct.tg3** %4, align 8
  %156 = getelementptr inbounds %struct.tg3, %struct.tg3* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SPEED_1000, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %154
  %162 = load %struct.tg3*, %struct.tg3** %4, align 8
  %163 = call i32 @tg3_phy_reset(%struct.tg3* %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load %struct.tg3*, %struct.tg3** %4, align 8
  %168 = call i32 @tg3_init_5401phy_dsp(%struct.tg3* %167)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %166, %161
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %3, align 4
  br label %829

174:                                              ; preds = %169
  br label %175

175:                                              ; preds = %174, %154, %149, %141
  br label %176

176:                                              ; preds = %175, %105
  br label %200

177:                                              ; preds = %83
  %178 = load %struct.tg3*, %struct.tg3** %4, align 8
  %179 = call i64 @tg3_chip_rev_id(%struct.tg3* %178)
  %180 = load i64, i64* @CHIPREV_ID_5701_A0, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load %struct.tg3*, %struct.tg3** %4, align 8
  %184 = call i64 @tg3_chip_rev_id(%struct.tg3* %183)
  %185 = load i64, i64* @CHIPREV_ID_5701_B0, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %182, %177
  %188 = load %struct.tg3*, %struct.tg3** %4, align 8
  %189 = call i32 @tg3_writephy(%struct.tg3* %188, i32 21, i32 2677)
  %190 = load %struct.tg3*, %struct.tg3** %4, align 8
  %191 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %192 = call i32 @tg3_writephy(%struct.tg3* %190, i32 %191, i32 35944)
  %193 = load %struct.tg3*, %struct.tg3** %4, align 8
  %194 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %195 = call i32 @tg3_writephy(%struct.tg3* %193, i32 %194, i32 36200)
  %196 = load %struct.tg3*, %struct.tg3** %4, align 8
  %197 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %198 = call i32 @tg3_writephy(%struct.tg3* %196, i32 %197, i32 35944)
  br label %199

199:                                              ; preds = %187, %182
  br label %200

200:                                              ; preds = %199, %176
  %201 = load %struct.tg3*, %struct.tg3** %4, align 8
  %202 = load i32, i32* @MII_TG3_ISTAT, align 4
  %203 = call i64 @tg3_readphy(%struct.tg3* %201, i32 %202, i32* %8)
  %204 = load %struct.tg3*, %struct.tg3** %4, align 8
  %205 = load i32, i32* @MII_TG3_ISTAT, align 4
  %206 = call i64 @tg3_readphy(%struct.tg3* %204, i32 %205, i32* %8)
  %207 = load %struct.tg3*, %struct.tg3** %4, align 8
  %208 = getelementptr inbounds %struct.tg3, %struct.tg3* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @TG3_PHYFLG_USE_MI_INTERRUPT, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %200
  %214 = load %struct.tg3*, %struct.tg3** %4, align 8
  %215 = load i32, i32* @MII_TG3_IMASK, align 4
  %216 = load i32, i32* @MII_TG3_INT_LINKCHG, align 4
  %217 = xor i32 %216, -1
  %218 = call i32 @tg3_writephy(%struct.tg3* %214, i32 %215, i32 %217)
  br label %231

219:                                              ; preds = %200
  %220 = load %struct.tg3*, %struct.tg3** %4, align 8
  %221 = getelementptr inbounds %struct.tg3, %struct.tg3* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %219
  %227 = load %struct.tg3*, %struct.tg3** %4, align 8
  %228 = load i32, i32* @MII_TG3_IMASK, align 4
  %229 = call i32 @tg3_writephy(%struct.tg3* %227, i32 %228, i32 -1)
  br label %230

230:                                              ; preds = %226, %219
  br label %231

231:                                              ; preds = %230, %213
  %232 = load %struct.tg3*, %struct.tg3** %4, align 8
  %233 = call i64 @tg3_asic_rev(%struct.tg3* %232)
  %234 = load i64, i64* @ASIC_REV_5700, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load %struct.tg3*, %struct.tg3** %4, align 8
  %238 = call i64 @tg3_asic_rev(%struct.tg3* %237)
  %239 = load i64, i64* @ASIC_REV_5701, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %236, %231
  %242 = load %struct.tg3*, %struct.tg3** %4, align 8
  %243 = getelementptr inbounds %struct.tg3, %struct.tg3* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @LED_CTRL_MODE_PHY_1, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = load %struct.tg3*, %struct.tg3** %4, align 8
  %249 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %250 = load i32, i32* @MII_TG3_EXT_CTRL_LNK3_LED_MODE, align 4
  %251 = call i32 @tg3_writephy(%struct.tg3* %248, i32 %249, i32 %250)
  br label %256

252:                                              ; preds = %241
  %253 = load %struct.tg3*, %struct.tg3** %4, align 8
  %254 = load i32, i32* @MII_TG3_EXT_CTRL, align 4
  %255 = call i32 @tg3_writephy(%struct.tg3* %253, i32 %254, i32 0)
  br label %256

256:                                              ; preds = %252, %247
  br label %257

257:                                              ; preds = %256, %236
  store i32 0, i32* %6, align 4
  %258 = load i32, i32* @SPEED_UNKNOWN, align 4
  store i32 %258, i32* %11, align 4
  %259 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  store i8* %259, i8** %12, align 8
  %260 = load i32, i32* @TG3_PHYFLG_MDIX_STATE, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.tg3*, %struct.tg3** %4, align 8
  %263 = getelementptr inbounds %struct.tg3, %struct.tg3* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.tg3*, %struct.tg3** %4, align 8
  %267 = getelementptr inbounds %struct.tg3, %struct.tg3* %266, i32 0, i32 6
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 5
  store i64 0, i64* %268, align 8
  %269 = load %struct.tg3*, %struct.tg3** %4, align 8
  %270 = getelementptr inbounds %struct.tg3, %struct.tg3* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @TG3_PHYFLG_CAPACITIVE_COUPLING, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %292

275:                                              ; preds = %257
  %276 = load %struct.tg3*, %struct.tg3** %4, align 8
  %277 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_MISCTEST, align 4
  %278 = call i32 @tg3_phy_auxctl_read(%struct.tg3* %276, i32 %277, i32* %8)
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %291, label %281

281:                                              ; preds = %275
  %282 = load i32, i32* %8, align 4
  %283 = and i32 %282, 1024
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %281
  %286 = load %struct.tg3*, %struct.tg3** %4, align 8
  %287 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_MISCTEST, align 4
  %288 = load i32, i32* %8, align 4
  %289 = or i32 %288, 1024
  %290 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %286, i32 %287, i32 %289)
  br label %491

291:                                              ; preds = %281, %275
  br label %292

292:                                              ; preds = %291, %257
  store i32 0, i32* %7, align 4
  store i32 0, i32* %13, align 4
  br label %293

293:                                              ; preds = %312, %292
  %294 = load i32, i32* %13, align 4
  %295 = icmp slt i32 %294, 100
  br i1 %295, label %296, label %315

296:                                              ; preds = %293
  %297 = load %struct.tg3*, %struct.tg3** %4, align 8
  %298 = load i32, i32* @MII_BMSR, align 4
  %299 = call i64 @tg3_readphy(%struct.tg3* %297, i32 %298, i32* %7)
  %300 = load %struct.tg3*, %struct.tg3** %4, align 8
  %301 = load i32, i32* @MII_BMSR, align 4
  %302 = call i64 @tg3_readphy(%struct.tg3* %300, i32 %301, i32* %7)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %296
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @BMSR_LSTATUS, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %315

310:                                              ; preds = %304, %296
  %311 = call i32 @udelay(i32 40)
  br label %312

312:                                              ; preds = %310
  %313 = load i32, i32* %13, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %13, align 4
  br label %293

315:                                              ; preds = %309, %293
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @BMSR_LSTATUS, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %490

320:                                              ; preds = %315
  %321 = load %struct.tg3*, %struct.tg3** %4, align 8
  %322 = load i32, i32* @MII_TG3_AUX_STAT, align 4
  %323 = call i64 @tg3_readphy(%struct.tg3* %321, i32 %322, i32* %15)
  store i32 0, i32* %13, align 4
  br label %324

324:                                              ; preds = %338, %320
  %325 = load i32, i32* %13, align 4
  %326 = icmp slt i32 %325, 2000
  br i1 %326, label %327, label %341

327:                                              ; preds = %324
  %328 = call i32 @udelay(i32 10)
  %329 = load %struct.tg3*, %struct.tg3** %4, align 8
  %330 = load i32, i32* @MII_TG3_AUX_STAT, align 4
  %331 = call i64 @tg3_readphy(%struct.tg3* %329, i32 %330, i32* %15)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %337, label %333

333:                                              ; preds = %327
  %334 = load i32, i32* %15, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %341

337:                                              ; preds = %333, %327
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %13, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %13, align 4
  br label %324

341:                                              ; preds = %336, %324
  %342 = load %struct.tg3*, %struct.tg3** %4, align 8
  %343 = load i32, i32* %15, align 4
  %344 = call i32 @tg3_aux_stat_to_speed_duplex(%struct.tg3* %342, i32 %343, i32* %11, i8** %12)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %345

345:                                              ; preds = %366, %341
  %346 = load i32, i32* %13, align 4
  %347 = icmp slt i32 %346, 200
  br i1 %347, label %348, label %369

348:                                              ; preds = %345
  %349 = load %struct.tg3*, %struct.tg3** %4, align 8
  %350 = load i32, i32* @MII_BMCR, align 4
  %351 = call i64 @tg3_readphy(%struct.tg3* %349, i32 %350, i32* %16)
  %352 = load %struct.tg3*, %struct.tg3** %4, align 8
  %353 = load i32, i32* @MII_BMCR, align 4
  %354 = call i64 @tg3_readphy(%struct.tg3* %352, i32 %353, i32* %16)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %348
  br label %366

357:                                              ; preds = %348
  %358 = load i32, i32* %16, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %357
  %361 = load i32, i32* %16, align 4
  %362 = icmp ne i32 %361, 32767
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  br label %369

364:                                              ; preds = %360, %357
  %365 = call i32 @udelay(i32 10)
  br label %366

366:                                              ; preds = %364, %356
  %367 = load i32, i32* %13, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %13, align 4
  br label %345

369:                                              ; preds = %363, %345
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %370 = load i32, i32* %11, align 4
  %371 = sext i32 %370 to i64
  %372 = load %struct.tg3*, %struct.tg3** %4, align 8
  %373 = getelementptr inbounds %struct.tg3, %struct.tg3* %372, i32 0, i32 6
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 0
  store i64 %371, i64* %374, align 8
  %375 = load i8*, i8** %12, align 8
  %376 = ptrtoint i8* %375 to i64
  %377 = load %struct.tg3*, %struct.tg3** %4, align 8
  %378 = getelementptr inbounds %struct.tg3, %struct.tg3* %377, i32 0, i32 6
  %379 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i32 0, i32 1
  store i64 %376, i64* %379, align 8
  %380 = load %struct.tg3*, %struct.tg3** %4, align 8
  %381 = getelementptr inbounds %struct.tg3, %struct.tg3* %380, i32 0, i32 6
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @AUTONEG_ENABLE, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %424

386:                                              ; preds = %369
  %387 = load %struct.tg3*, %struct.tg3** %4, align 8
  %388 = call i32 @tg3_phy_eee_config_ok(%struct.tg3* %387)
  store i32 %388, i32* %17, align 4
  %389 = load i32, i32* %16, align 4
  %390 = load i32, i32* @BMCR_ANENABLE, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %405

393:                                              ; preds = %386
  %394 = load i32, i32* %17, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %405

396:                                              ; preds = %393
  %397 = load %struct.tg3*, %struct.tg3** %4, align 8
  %398 = call i64 @tg3_phy_copper_an_config_ok(%struct.tg3* %397, i32* %9)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %396
  %401 = load %struct.tg3*, %struct.tg3** %4, align 8
  %402 = call i64 @tg3_phy_copper_fetch_rmtadv(%struct.tg3* %401, i32* %10)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i32 1, i32* %6, align 4
  br label %405

405:                                              ; preds = %404, %400, %396, %393, %386
  %406 = load i32, i32* %17, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %423, label %408

408:                                              ; preds = %405
  %409 = load %struct.tg3*, %struct.tg3** %4, align 8
  %410 = getelementptr inbounds %struct.tg3, %struct.tg3* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @TG3_PHYFLG_KEEP_LINK_ON_PWRDN, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %423

415:                                              ; preds = %408
  %416 = load i32, i32* %5, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %415
  %419 = load %struct.tg3*, %struct.tg3** %4, align 8
  %420 = call i32 @tg3_setup_eee(%struct.tg3* %419)
  %421 = load %struct.tg3*, %struct.tg3** %4, align 8
  %422 = call i32 @tg3_phy_reset(%struct.tg3* %421)
  br label %423

423:                                              ; preds = %418, %415, %408, %405
  br label %445

424:                                              ; preds = %369
  %425 = load i32, i32* %16, align 4
  %426 = load i32, i32* @BMCR_ANENABLE, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %444, label %429

429:                                              ; preds = %424
  %430 = load %struct.tg3*, %struct.tg3** %4, align 8
  %431 = getelementptr inbounds %struct.tg3, %struct.tg3* %430, i32 0, i32 6
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %11, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %444

436:                                              ; preds = %429
  %437 = load %struct.tg3*, %struct.tg3** %4, align 8
  %438 = getelementptr inbounds %struct.tg3, %struct.tg3* %437, i32 0, i32 6
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 4
  %440 = load i8*, i8** %439, align 8
  %441 = load i8*, i8** %12, align 8
  %442 = icmp eq i8* %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %436
  store i32 1, i32* %6, align 4
  br label %444

444:                                              ; preds = %443, %436, %429, %424
  br label %445

445:                                              ; preds = %444, %423
  %446 = load i32, i32* %6, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %489

448:                                              ; preds = %445
  %449 = load %struct.tg3*, %struct.tg3** %4, align 8
  %450 = getelementptr inbounds %struct.tg3, %struct.tg3* %449, i32 0, i32 6
  %451 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @DUPLEX_FULL, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %489

455:                                              ; preds = %448
  %456 = load %struct.tg3*, %struct.tg3** %4, align 8
  %457 = getelementptr inbounds %struct.tg3, %struct.tg3* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %455
  %463 = load i32, i32* @MII_TG3_FET_GEN_STAT, align 4
  store i32 %463, i32* %18, align 4
  %464 = load i32, i32* @MII_TG3_FET_GEN_STAT_MDIXSTAT, align 4
  store i32 %464, i32* %19, align 4
  br label %468

465:                                              ; preds = %455
  %466 = load i32, i32* @MII_TG3_EXT_STAT, align 4
  store i32 %466, i32* %18, align 4
  %467 = load i32, i32* @MII_TG3_EXT_STAT_MDIX, align 4
  store i32 %467, i32* %19, align 4
  br label %468

468:                                              ; preds = %465, %462
  %469 = load %struct.tg3*, %struct.tg3** %4, align 8
  %470 = load i32, i32* %18, align 4
  %471 = call i64 @tg3_readphy(%struct.tg3* %469, i32 %470, i32* %8)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %484, label %473

473:                                              ; preds = %468
  %474 = load i32, i32* %8, align 4
  %475 = load i32, i32* %19, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %473
  %479 = load i32, i32* @TG3_PHYFLG_MDIX_STATE, align 4
  %480 = load %struct.tg3*, %struct.tg3** %4, align 8
  %481 = getelementptr inbounds %struct.tg3, %struct.tg3* %480, i32 0, i32 2
  %482 = load i32, i32* %481, align 8
  %483 = or i32 %482, %479
  store i32 %483, i32* %481, align 8
  br label %484

484:                                              ; preds = %478, %473, %468
  %485 = load %struct.tg3*, %struct.tg3** %4, align 8
  %486 = load i32, i32* %9, align 4
  %487 = load i32, i32* %10, align 4
  %488 = call i32 @tg3_setup_flow_control(%struct.tg3* %485, i32 %486, i32 %487)
  br label %489

489:                                              ; preds = %484, %448, %445
  br label %490

490:                                              ; preds = %489, %315
  br label %491

491:                                              ; preds = %490, %285
  %492 = load i32, i32* %6, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %501

494:                                              ; preds = %491
  %495 = load %struct.tg3*, %struct.tg3** %4, align 8
  %496 = getelementptr inbounds %struct.tg3, %struct.tg3* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = load i32, i32* @TG3_PHYFLG_IS_LOW_POWER, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %545

501:                                              ; preds = %494, %491
  %502 = load %struct.tg3*, %struct.tg3** %4, align 8
  %503 = call i32 @tg3_phy_copper_begin(%struct.tg3* %502)
  %504 = load %struct.tg3*, %struct.tg3** %4, align 8
  %505 = load i32, i32* @ROBOSWITCH, align 4
  %506 = call i64 @tg3_flag(%struct.tg3* %504, i32 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %523

508:                                              ; preds = %501
  store i32 1, i32* %6, align 4
  %509 = load i64, i64* @SPEED_1000, align 8
  %510 = trunc i64 %509 to i32
  store i32 %510, i32* %11, align 4
  %511 = load i64, i64* @DUPLEX_FULL, align 8
  %512 = inttoptr i64 %511 to i8*
  store i8* %512, i8** %12, align 8
  %513 = load i32, i32* %11, align 4
  %514 = sext i32 %513 to i64
  %515 = load %struct.tg3*, %struct.tg3** %4, align 8
  %516 = getelementptr inbounds %struct.tg3, %struct.tg3* %515, i32 0, i32 6
  %517 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %516, i32 0, i32 0
  store i64 %514, i64* %517, align 8
  %518 = load i8*, i8** %12, align 8
  %519 = ptrtoint i8* %518 to i64
  %520 = load %struct.tg3*, %struct.tg3** %4, align 8
  %521 = getelementptr inbounds %struct.tg3, %struct.tg3* %520, i32 0, i32 6
  %522 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %521, i32 0, i32 1
  store i64 %519, i64* %522, align 8
  br label %523

523:                                              ; preds = %508, %501
  %524 = load %struct.tg3*, %struct.tg3** %4, align 8
  %525 = load i32, i32* @MII_BMSR, align 4
  %526 = call i64 @tg3_readphy(%struct.tg3* %524, i32 %525, i32* %7)
  %527 = load %struct.tg3*, %struct.tg3** %4, align 8
  %528 = load i32, i32* @MII_BMSR, align 4
  %529 = call i64 @tg3_readphy(%struct.tg3* %527, i32 %528, i32* %7)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %536, label %531

531:                                              ; preds = %523
  %532 = load i32, i32* %7, align 4
  %533 = load i32, i32* @BMSR_LSTATUS, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %543, label %536

536:                                              ; preds = %531, %523
  %537 = load %struct.tg3*, %struct.tg3** %4, align 8
  %538 = getelementptr inbounds %struct.tg3, %struct.tg3* %537, i32 0, i32 4
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* @MAC_MODE_PORT_INT_LPBACK, align 4
  %541 = and i32 %539, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %544

543:                                              ; preds = %536, %531
  store i32 1, i32* %6, align 4
  br label %544

544:                                              ; preds = %543, %536
  br label %545

545:                                              ; preds = %544, %494
  %546 = load i32, i32* @MAC_MODE_PORT_MODE_MASK, align 4
  %547 = xor i32 %546, -1
  %548 = load %struct.tg3*, %struct.tg3** %4, align 8
  %549 = getelementptr inbounds %struct.tg3, %struct.tg3* %548, i32 0, i32 4
  %550 = load i32, i32* %549, align 8
  %551 = and i32 %550, %547
  store i32 %551, i32* %549, align 8
  %552 = load i32, i32* %6, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %581

554:                                              ; preds = %545
  %555 = load %struct.tg3*, %struct.tg3** %4, align 8
  %556 = getelementptr inbounds %struct.tg3, %struct.tg3* %555, i32 0, i32 6
  %557 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %556, i32 0, i32 0
  %558 = load i64, i64* %557, align 8
  %559 = load i64, i64* @SPEED_100, align 8
  %560 = icmp eq i64 %558, %559
  br i1 %560, label %568, label %561

561:                                              ; preds = %554
  %562 = load %struct.tg3*, %struct.tg3** %4, align 8
  %563 = getelementptr inbounds %struct.tg3, %struct.tg3* %562, i32 0, i32 6
  %564 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = load i64, i64* @SPEED_10, align 8
  %567 = icmp eq i64 %565, %566
  br i1 %567, label %568, label %574

568:                                              ; preds = %561, %554
  %569 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %570 = load %struct.tg3*, %struct.tg3** %4, align 8
  %571 = getelementptr inbounds %struct.tg3, %struct.tg3* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 8
  %573 = or i32 %572, %569
  store i32 %573, i32* %571, align 8
  br label %580

574:                                              ; preds = %561
  %575 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %576 = load %struct.tg3*, %struct.tg3** %4, align 8
  %577 = getelementptr inbounds %struct.tg3, %struct.tg3* %576, i32 0, i32 4
  %578 = load i32, i32* %577, align 8
  %579 = or i32 %578, %575
  store i32 %579, i32* %577, align 8
  br label %580

580:                                              ; preds = %574, %568
  br label %601

581:                                              ; preds = %545
  %582 = load %struct.tg3*, %struct.tg3** %4, align 8
  %583 = getelementptr inbounds %struct.tg3, %struct.tg3* %582, i32 0, i32 2
  %584 = load i32, i32* %583, align 8
  %585 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %581
  %589 = load i32, i32* @MAC_MODE_PORT_MODE_MII, align 4
  %590 = load %struct.tg3*, %struct.tg3** %4, align 8
  %591 = getelementptr inbounds %struct.tg3, %struct.tg3* %590, i32 0, i32 4
  %592 = load i32, i32* %591, align 8
  %593 = or i32 %592, %589
  store i32 %593, i32* %591, align 8
  br label %600

594:                                              ; preds = %581
  %595 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %596 = load %struct.tg3*, %struct.tg3** %4, align 8
  %597 = getelementptr inbounds %struct.tg3, %struct.tg3* %596, i32 0, i32 4
  %598 = load i32, i32* %597, align 8
  %599 = or i32 %598, %595
  store i32 %599, i32* %597, align 8
  br label %600

600:                                              ; preds = %594, %588
  br label %601

601:                                              ; preds = %600, %580
  %602 = load %struct.tg3*, %struct.tg3** %4, align 8
  %603 = load i32, i32* @RGMII_MODE, align 4
  %604 = call i64 @tg3_flag(%struct.tg3* %602, i32 %603)
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %658

606:                                              ; preds = %601
  %607 = load i32, i32* @MAC_LED_CTRL, align 4
  %608 = call i32 @tr32(i32 %607)
  store i32 %608, i32* %20, align 4
  %609 = load i32, i32* @LED_CTRL_1000MBPS_ON, align 4
  %610 = load i32, i32* @LED_CTRL_100MBPS_ON, align 4
  %611 = or i32 %609, %610
  %612 = xor i32 %611, -1
  %613 = load i32, i32* %20, align 4
  %614 = and i32 %613, %612
  store i32 %614, i32* %20, align 4
  %615 = load %struct.tg3*, %struct.tg3** %4, align 8
  %616 = getelementptr inbounds %struct.tg3, %struct.tg3* %615, i32 0, i32 6
  %617 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %616, i32 0, i32 0
  %618 = load i64, i64* %617, align 8
  %619 = load i64, i64* @SPEED_10, align 8
  %620 = icmp eq i64 %618, %619
  br i1 %620, label %621, label %625

621:                                              ; preds = %606
  %622 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %623 = load i32, i32* %20, align 4
  %624 = or i32 %623, %622
  store i32 %624, i32* %20, align 4
  br label %653

625:                                              ; preds = %606
  %626 = load %struct.tg3*, %struct.tg3** %4, align 8
  %627 = getelementptr inbounds %struct.tg3, %struct.tg3* %626, i32 0, i32 6
  %628 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %627, i32 0, i32 0
  %629 = load i64, i64* %628, align 8
  %630 = load i64, i64* @SPEED_100, align 8
  %631 = icmp eq i64 %629, %630
  br i1 %631, label %632, label %638

632:                                              ; preds = %625
  %633 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %634 = load i32, i32* @LED_CTRL_100MBPS_ON, align 4
  %635 = or i32 %633, %634
  %636 = load i32, i32* %20, align 4
  %637 = or i32 %636, %635
  store i32 %637, i32* %20, align 4
  br label %652

638:                                              ; preds = %625
  %639 = load %struct.tg3*, %struct.tg3** %4, align 8
  %640 = getelementptr inbounds %struct.tg3, %struct.tg3* %639, i32 0, i32 6
  %641 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %640, i32 0, i32 0
  %642 = load i64, i64* %641, align 8
  %643 = load i64, i64* @SPEED_1000, align 8
  %644 = icmp eq i64 %642, %643
  br i1 %644, label %645, label %651

645:                                              ; preds = %638
  %646 = load i32, i32* @LED_CTRL_LNKLED_OVERRIDE, align 4
  %647 = load i32, i32* @LED_CTRL_1000MBPS_ON, align 4
  %648 = or i32 %646, %647
  %649 = load i32, i32* %20, align 4
  %650 = or i32 %649, %648
  store i32 %650, i32* %20, align 4
  br label %651

651:                                              ; preds = %645, %638
  br label %652

652:                                              ; preds = %651, %632
  br label %653

653:                                              ; preds = %652, %621
  %654 = load i32, i32* @MAC_LED_CTRL, align 4
  %655 = load i32, i32* %20, align 4
  %656 = call i32 @tw32(i32 %654, i32 %655)
  %657 = call i32 @udelay(i32 40)
  br label %658

658:                                              ; preds = %653, %601
  %659 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %660 = xor i32 %659, -1
  %661 = load %struct.tg3*, %struct.tg3** %4, align 8
  %662 = getelementptr inbounds %struct.tg3, %struct.tg3* %661, i32 0, i32 4
  %663 = load i32, i32* %662, align 8
  %664 = and i32 %663, %660
  store i32 %664, i32* %662, align 8
  %665 = load %struct.tg3*, %struct.tg3** %4, align 8
  %666 = getelementptr inbounds %struct.tg3, %struct.tg3* %665, i32 0, i32 6
  %667 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %666, i32 0, i32 1
  %668 = load i64, i64* %667, align 8
  %669 = load i64, i64* @DUPLEX_HALF, align 8
  %670 = icmp eq i64 %668, %669
  br i1 %670, label %671, label %677

671:                                              ; preds = %658
  %672 = load i32, i32* @MAC_MODE_HALF_DUPLEX, align 4
  %673 = load %struct.tg3*, %struct.tg3** %4, align 8
  %674 = getelementptr inbounds %struct.tg3, %struct.tg3* %673, i32 0, i32 4
  %675 = load i32, i32* %674, align 8
  %676 = or i32 %675, %672
  store i32 %676, i32* %674, align 8
  br label %677

677:                                              ; preds = %671, %658
  %678 = load %struct.tg3*, %struct.tg3** %4, align 8
  %679 = call i64 @tg3_asic_rev(%struct.tg3* %678)
  %680 = load i64, i64* @ASIC_REV_5700, align 8
  %681 = icmp eq i64 %679, %680
  br i1 %681, label %682, label %707

682:                                              ; preds = %677
  %683 = load i32, i32* %6, align 4
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %699

685:                                              ; preds = %682
  %686 = load %struct.tg3*, %struct.tg3** %4, align 8
  %687 = load %struct.tg3*, %struct.tg3** %4, align 8
  %688 = getelementptr inbounds %struct.tg3, %struct.tg3* %687, i32 0, i32 6
  %689 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %688, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = call i64 @tg3_5700_link_polarity(%struct.tg3* %686, i64 %690)
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %699

693:                                              ; preds = %685
  %694 = load i32, i32* @MAC_MODE_LINK_POLARITY, align 4
  %695 = load %struct.tg3*, %struct.tg3** %4, align 8
  %696 = getelementptr inbounds %struct.tg3, %struct.tg3* %695, i32 0, i32 4
  %697 = load i32, i32* %696, align 8
  %698 = or i32 %697, %694
  store i32 %698, i32* %696, align 8
  br label %706

699:                                              ; preds = %685, %682
  %700 = load i32, i32* @MAC_MODE_LINK_POLARITY, align 4
  %701 = xor i32 %700, -1
  %702 = load %struct.tg3*, %struct.tg3** %4, align 8
  %703 = getelementptr inbounds %struct.tg3, %struct.tg3* %702, i32 0, i32 4
  %704 = load i32, i32* %703, align 8
  %705 = and i32 %704, %701
  store i32 %705, i32* %703, align 8
  br label %706

706:                                              ; preds = %699, %693
  br label %707

707:                                              ; preds = %706, %677
  %708 = load %struct.tg3*, %struct.tg3** %4, align 8
  %709 = getelementptr inbounds %struct.tg3, %struct.tg3* %708, i32 0, i32 1
  %710 = load i32, i32* %709, align 4
  %711 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %712 = and i32 %710, %711
  %713 = load i32, i32* @TG3_PHY_ID_BCM5411, align 4
  %714 = icmp eq i32 %712, %713
  br i1 %714, label %715, label %732

715:                                              ; preds = %707
  %716 = load %struct.tg3*, %struct.tg3** %4, align 8
  %717 = call i64 @tg3_chip_rev_id(%struct.tg3* %716)
  %718 = load i64, i64* @CHIPREV_ID_5700_ALTIMA, align 8
  %719 = icmp eq i64 %717, %718
  br i1 %719, label %720, label %732

720:                                              ; preds = %715
  %721 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %722 = load %struct.tg3*, %struct.tg3** %4, align 8
  %723 = getelementptr inbounds %struct.tg3, %struct.tg3* %722, i32 0, i32 0
  %724 = load i32, i32* %723, align 8
  %725 = or i32 %724, %721
  store i32 %725, i32* %723, align 8
  %726 = load i32, i32* @MAC_MI_MODE, align 4
  %727 = load %struct.tg3*, %struct.tg3** %4, align 8
  %728 = getelementptr inbounds %struct.tg3, %struct.tg3* %727, i32 0, i32 0
  %729 = load i32, i32* %728, align 8
  %730 = call i32 @tw32_f(i32 %726, i32 %729)
  %731 = call i32 @udelay(i32 80)
  br label %732

732:                                              ; preds = %720, %715, %707
  %733 = load i32, i32* @MAC_MODE, align 4
  %734 = load %struct.tg3*, %struct.tg3** %4, align 8
  %735 = getelementptr inbounds %struct.tg3, %struct.tg3* %734, i32 0, i32 4
  %736 = load i32, i32* %735, align 8
  %737 = call i32 @tw32_f(i32 %733, i32 %736)
  %738 = call i32 @udelay(i32 40)
  %739 = load %struct.tg3*, %struct.tg3** %4, align 8
  %740 = load i32, i32* %6, align 4
  %741 = call i32 @tg3_phy_eee_adjust(%struct.tg3* %739, i32 %740)
  %742 = load %struct.tg3*, %struct.tg3** %4, align 8
  %743 = load i32, i32* @USE_LINKCHG_REG, align 4
  %744 = call i64 @tg3_flag(%struct.tg3* %742, i32 %743)
  %745 = icmp ne i64 %744, 0
  br i1 %745, label %746, label %749

746:                                              ; preds = %732
  %747 = load i32, i32* @MAC_EVENT, align 4
  %748 = call i32 @tw32_f(i32 %747, i32 0)
  br label %753

749:                                              ; preds = %732
  %750 = load i32, i32* @MAC_EVENT, align 4
  %751 = load i32, i32* @MAC_EVENT_LNKSTATE_CHANGED, align 4
  %752 = call i32 @tw32_f(i32 %750, i32 %751)
  br label %753

753:                                              ; preds = %749, %746
  %754 = call i32 @udelay(i32 40)
  %755 = load %struct.tg3*, %struct.tg3** %4, align 8
  %756 = call i64 @tg3_asic_rev(%struct.tg3* %755)
  %757 = load i64, i64* @ASIC_REV_5700, align 8
  %758 = icmp eq i64 %756, %757
  br i1 %758, label %759, label %791

759:                                              ; preds = %753
  %760 = load i32, i32* %6, align 4
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %791

762:                                              ; preds = %759
  %763 = load %struct.tg3*, %struct.tg3** %4, align 8
  %764 = getelementptr inbounds %struct.tg3, %struct.tg3* %763, i32 0, i32 6
  %765 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %764, i32 0, i32 0
  %766 = load i64, i64* %765, align 8
  %767 = load i64, i64* @SPEED_1000, align 8
  %768 = icmp eq i64 %766, %767
  br i1 %768, label %769, label %791

769:                                              ; preds = %762
  %770 = load %struct.tg3*, %struct.tg3** %4, align 8
  %771 = load i32, i32* @PCIX_MODE, align 4
  %772 = call i64 @tg3_flag(%struct.tg3* %770, i32 %771)
  %773 = icmp ne i64 %772, 0
  br i1 %773, label %779, label %774

774:                                              ; preds = %769
  %775 = load %struct.tg3*, %struct.tg3** %4, align 8
  %776 = load i32, i32* @PCI_HIGH_SPEED, align 4
  %777 = call i64 @tg3_flag(%struct.tg3* %775, i32 %776)
  %778 = icmp ne i64 %777, 0
  br i1 %778, label %779, label %791

779:                                              ; preds = %774, %769
  %780 = call i32 @udelay(i32 120)
  %781 = load i32, i32* @MAC_STATUS, align 4
  %782 = load i32, i32* @MAC_STATUS_SYNC_CHANGED, align 4
  %783 = load i32, i32* @MAC_STATUS_CFG_CHANGED, align 4
  %784 = or i32 %782, %783
  %785 = call i32 @tw32_f(i32 %781, i32 %784)
  %786 = call i32 @udelay(i32 40)
  %787 = load %struct.tg3*, %struct.tg3** %4, align 8
  %788 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX, align 4
  %789 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX_MAGIC2, align 4
  %790 = call i32 @tg3_write_mem(%struct.tg3* %787, i32 %788, i32 %789)
  br label %791

791:                                              ; preds = %779, %774, %762, %759, %753
  %792 = load %struct.tg3*, %struct.tg3** %4, align 8
  %793 = load i32, i32* @CLKREQ_BUG, align 4
  %794 = call i64 @tg3_flag(%struct.tg3* %792, i32 %793)
  %795 = icmp ne i64 %794, 0
  br i1 %795, label %796, label %825

796:                                              ; preds = %791
  %797 = load %struct.tg3*, %struct.tg3** %4, align 8
  %798 = getelementptr inbounds %struct.tg3, %struct.tg3* %797, i32 0, i32 6
  %799 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %798, i32 0, i32 0
  %800 = load i64, i64* %799, align 8
  %801 = load i64, i64* @SPEED_100, align 8
  %802 = icmp eq i64 %800, %801
  br i1 %802, label %810, label %803

803:                                              ; preds = %796
  %804 = load %struct.tg3*, %struct.tg3** %4, align 8
  %805 = getelementptr inbounds %struct.tg3, %struct.tg3* %804, i32 0, i32 6
  %806 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %805, i32 0, i32 0
  %807 = load i64, i64* %806, align 8
  %808 = load i64, i64* @SPEED_10, align 8
  %809 = icmp eq i64 %807, %808
  br i1 %809, label %810, label %817

810:                                              ; preds = %803, %796
  %811 = load %struct.tg3*, %struct.tg3** %4, align 8
  %812 = getelementptr inbounds %struct.tg3, %struct.tg3* %811, i32 0, i32 5
  %813 = load i32, i32* %812, align 4
  %814 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %815 = load i32, i32* @PCI_EXP_LNKCTL_CLKREQ_EN, align 4
  %816 = call i32 @pcie_capability_clear_word(i32 %813, i32 %814, i32 %815)
  br label %824

817:                                              ; preds = %803
  %818 = load %struct.tg3*, %struct.tg3** %4, align 8
  %819 = getelementptr inbounds %struct.tg3, %struct.tg3* %818, i32 0, i32 5
  %820 = load i32, i32* %819, align 4
  %821 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %822 = load i32, i32* @PCI_EXP_LNKCTL_CLKREQ_EN, align 4
  %823 = call i32 @pcie_capability_set_word(i32 %820, i32 %821, i32 %822)
  br label %824

824:                                              ; preds = %817, %810
  br label %825

825:                                              ; preds = %824, %791
  %826 = load %struct.tg3*, %struct.tg3** %4, align 8
  %827 = load i32, i32* %6, align 4
  %828 = call i32 @tg3_test_and_report_link_chg(%struct.tg3* %826, i32 %827)
  store i32 0, i32* %3, align 4
  br label %829

829:                                              ; preds = %825, %172, %115
  %830 = load i32, i32* %3, align 4
  ret i32 %830
}

declare dso_local i32 @tg3_clear_mac_status(%struct.tg3*) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_phy_auxctl_write(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i64 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_phy_reset(%struct.tg3*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_init_5401phy_dsp(%struct.tg3*) #1

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_auxctl_read(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_aux_stat_to_speed_duplex(%struct.tg3*, i32, i32*, i8**) #1

declare dso_local i32 @tg3_phy_eee_config_ok(%struct.tg3*) #1

declare dso_local i64 @tg3_phy_copper_an_config_ok(%struct.tg3*, i32*) #1

declare dso_local i64 @tg3_phy_copper_fetch_rmtadv(%struct.tg3*, i32*) #1

declare dso_local i32 @tg3_setup_eee(%struct.tg3*) #1

declare dso_local i32 @tg3_setup_flow_control(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_copper_begin(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i64 @tg3_5700_link_polarity(%struct.tg3*, i64) #1

declare dso_local i32 @tg3_phy_eee_adjust(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write_mem(%struct.tg3*, i32, i32) #1

declare dso_local i32 @pcie_capability_clear_word(i32, i32, i32) #1

declare dso_local i32 @pcie_capability_set_word(i32, i32, i32) #1

declare dso_local i32 @tg3_test_and_report_link_chg(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
