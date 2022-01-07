; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_ipq806x_gmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_ipq806x_gmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, %struct.ipq806x_gmac* }
%struct.ipq806x_gmac = type { i32, i32, i32, i32, %struct.platform_device* }
%struct.stmmac_resources = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"device tree parsing error\0A\00", align 1
@QSGMII_PCS_CAL_LCKDT_CTL = common dso_local global i32 0, align 4
@QSGMII_PCS_CAL_LCKDT_CTL_RST = common dso_local global i32 0, align 4
@NSS_COMMON_GMAC_CTL_IFG_OFFSET = common dso_local global i32 0, align 4
@NSS_COMMON_GMAC_CTL_IFG_LIMIT_OFFSET = common dso_local global i32 0, align 4
@NSS_COMMON_GMAC_CTL_CSYS_REQ = common dso_local global i32 0, align 4
@NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported PHY mode: \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSS_COMMON_CLK_SRC_CTRL = common dso_local global i32 0, align 4
@NSS_COMMON_CLK_GATE = common dso_local global i32 0, align 4
@QSGMII_PHY_CDR_EN = common dso_local global i32 0, align 4
@QSGMII_PHY_RX_FRONT_EN = common dso_local global i32 0, align 4
@QSGMII_PHY_RX_SIGNAL_DETECT_EN = common dso_local global i32 0, align 4
@QSGMII_PHY_TX_DRIVER_EN = common dso_local global i32 0, align 4
@QSGMII_PHY_QSGMII_EN = common dso_local global i32 0, align 4
@QSGMII_PHY_PHASE_LOOP_GAIN_OFFSET = common dso_local global i32 0, align 4
@QSGMII_PHY_RX_DC_BIAS_OFFSET = common dso_local global i32 0, align 4
@QSGMII_PHY_RX_INPUT_EQU_OFFSET = common dso_local global i32 0, align 4
@QSGMII_PHY_CDR_PI_SLEW_OFFSET = common dso_local global i32 0, align 4
@QSGMII_PHY_TX_DRV_AMP_OFFSET = common dso_local global i32 0, align 4
@ipq806x_gmac_fix_mac_speed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ipq806x_gmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipq806x_gmac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.plat_stmmacenet_data*, align 8
  %5 = alloca %struct.stmmac_resources, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ipq806x_gmac*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @stmmac_get_platform_resources(%struct.platform_device* %12, %struct.stmmac_resources* %5)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %235

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.stmmac_resources, %struct.stmmac_resources* %5, i32 0, i32 0
  %21 = call %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device* %19, i32* %20)
  store %struct.plat_stmmacenet_data* %21, %struct.plat_stmmacenet_data** %4, align 8
  %22 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %23 = call i64 @IS_ERR(%struct.plat_stmmacenet_data* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %27 = call i32 @PTR_ERR(%struct.plat_stmmacenet_data* %26)
  store i32 %27, i32* %2, align 4
  br label %235

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.ipq806x_gmac* @devm_kzalloc(%struct.device* %29, i32 24, i32 %30)
  store %struct.ipq806x_gmac* %31, %struct.ipq806x_gmac** %7, align 8
  %32 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %33 = icmp ne %struct.ipq806x_gmac* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %230

37:                                               ; preds = %28
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %40 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %39, i32 0, i32 4
  store %struct.platform_device* %38, %struct.platform_device** %40, align 8
  %41 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %42 = call i32 @ipq806x_gmac_of_parse(%struct.ipq806x_gmac* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %230

48:                                               ; preds = %37
  %49 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %50 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @QSGMII_PCS_CAL_LCKDT_CTL, align 4
  %53 = load i32, i32* @QSGMII_PCS_CAL_LCKDT_CTL_RST, align 4
  %54 = call i32 @regmap_write(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @NSS_COMMON_GMAC_CTL_IFG_OFFSET, align 4
  %56 = shl i32 12, %55
  %57 = load i32, i32* @NSS_COMMON_GMAC_CTL_IFG_LIMIT_OFFSET, align 4
  %58 = shl i32 12, %57
  %59 = or i32 %56, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @NSS_COMMON_GMAC_CTL_CSYS_REQ, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %64 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %75 [
    i32 129, label %66
    i32 128, label %70
  ]

66:                                               ; preds = %48
  %67 = load i32, i32* @NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %85

70:                                               ; preds = %48
  %71 = load i32, i32* @NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %85

75:                                               ; preds = %48
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %79 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @phy_modes(i32 %80)
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %230

85:                                               ; preds = %70, %66
  %86 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %87 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %90 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @NSS_COMMON_GMAC_CTL(i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @regmap_write(i32 %88, i32 %92, i32 %93)
  %95 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %96 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NSS_COMMON_CLK_SRC_CTRL, align 4
  %99 = call i32 @regmap_read(i32 %97, i32 %98, i32* %8)
  %100 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %101 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @NSS_COMMON_CLK_SRC_CTRL_OFFSET(i32 %102)
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %8, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %109 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %135 [
    i32 129, label %111
    i32 128, label %123
  ]

111:                                              ; preds = %85
  %112 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %113 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @NSS_COMMON_CLK_SRC_CTRL_RGMII(i32 %114)
  %116 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %117 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @NSS_COMMON_CLK_SRC_CTRL_OFFSET(i32 %118)
  %120 = shl i32 %115, %119
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %145

123:                                              ; preds = %85
  %124 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %125 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @NSS_COMMON_CLK_SRC_CTRL_SGMII(i32 %126)
  %128 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %129 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @NSS_COMMON_CLK_SRC_CTRL_OFFSET(i32 %130)
  %132 = shl i32 %127, %131
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %145

135:                                              ; preds = %85
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %139 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @phy_modes(i32 %140)
  %142 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %9, align 4
  br label %230

145:                                              ; preds = %123, %111
  %146 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %147 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @NSS_COMMON_CLK_SRC_CTRL, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @regmap_write(i32 %148, i32 %149, i32 %150)
  %152 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %153 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @NSS_COMMON_CLK_GATE, align 4
  %156 = call i32 @regmap_read(i32 %154, i32 %155, i32* %8)
  %157 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %158 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @NSS_COMMON_CLK_GATE_PTP_EN(i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  %163 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %164 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @NSS_COMMON_CLK_GATE, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @regmap_write(i32 %165, i32 %166, i32 %167)
  %169 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %170 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 128
  br i1 %172, label %173, label %213

173:                                              ; preds = %145
  %174 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %175 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %178 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @QSGMII_PHY_SGMII_CTL(i32 %179)
  %181 = load i32, i32* @QSGMII_PHY_CDR_EN, align 4
  %182 = load i32, i32* @QSGMII_PHY_RX_FRONT_EN, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @QSGMII_PHY_RX_SIGNAL_DETECT_EN, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @QSGMII_PHY_TX_DRIVER_EN, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @QSGMII_PHY_QSGMII_EN, align 4
  %189 = or i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* @QSGMII_PHY_PHASE_LOOP_GAIN_OFFSET, align 4
  %192 = zext i32 %191 to i64
  %193 = shl i64 4, %192
  %194 = or i64 %190, %193
  %195 = load i32, i32* @QSGMII_PHY_RX_DC_BIAS_OFFSET, align 4
  %196 = zext i32 %195 to i64
  %197 = shl i64 3, %196
  %198 = or i64 %194, %197
  %199 = load i32, i32* @QSGMII_PHY_RX_INPUT_EQU_OFFSET, align 4
  %200 = zext i32 %199 to i64
  %201 = shl i64 1, %200
  %202 = or i64 %198, %201
  %203 = load i32, i32* @QSGMII_PHY_CDR_PI_SLEW_OFFSET, align 4
  %204 = zext i32 %203 to i64
  %205 = shl i64 2, %204
  %206 = or i64 %202, %205
  %207 = load i32, i32* @QSGMII_PHY_TX_DRV_AMP_OFFSET, align 4
  %208 = zext i32 %207 to i64
  %209 = shl i64 12, %208
  %210 = or i64 %206, %209
  %211 = trunc i64 %210 to i32
  %212 = call i32 @regmap_write(i32 %176, i32 %180, i32 %211)
  br label %213

213:                                              ; preds = %173, %145
  %214 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %215 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %214, i32 0, i32 0
  store i32 1, i32* %215, align 8
  %216 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %7, align 8
  %217 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %218 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %217, i32 0, i32 2
  store %struct.ipq806x_gmac* %216, %struct.ipq806x_gmac** %218, align 8
  %219 = load i32, i32* @ipq806x_gmac_fix_mac_speed, align 4
  %220 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %221 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %225 = call i32 @stmmac_dvr_probe(%struct.device* %223, %struct.plat_stmmacenet_data* %224, %struct.stmmac_resources* %5)
  store i32 %225, i32* %9, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %213
  br label %230

229:                                              ; preds = %213
  store i32 0, i32* %2, align 4
  br label %235

230:                                              ; preds = %228, %135, %75, %45, %34
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %4, align 8
  %233 = call i32 @stmmac_remove_config_dt(%struct.platform_device* %231, %struct.plat_stmmacenet_data* %232)
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %230, %229, %25, %16
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @stmmac_get_platform_resources(%struct.platform_device*, %struct.stmmac_resources*) #1

declare dso_local %struct.plat_stmmacenet_data* @stmmac_probe_config_dt(%struct.platform_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local i32 @PTR_ERR(%struct.plat_stmmacenet_data*) #1

declare dso_local %struct.ipq806x_gmac* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ipq806x_gmac_of_parse(%struct.ipq806x_gmac*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @NSS_COMMON_GMAC_CTL(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @NSS_COMMON_CLK_SRC_CTRL_OFFSET(i32) #1

declare dso_local i32 @NSS_COMMON_CLK_SRC_CTRL_RGMII(i32) #1

declare dso_local i32 @NSS_COMMON_CLK_SRC_CTRL_SGMII(i32) #1

declare dso_local i32 @NSS_COMMON_CLK_GATE_PTP_EN(i32) #1

declare dso_local i32 @QSGMII_PHY_SGMII_CTL(i32) #1

declare dso_local i32 @stmmac_dvr_probe(%struct.device*, %struct.plat_stmmacenet_data*, %struct.stmmac_resources*) #1

declare dso_local i32 @stmmac_remove_config_dt(%struct.platform_device*, %struct.plat_stmmacenet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
