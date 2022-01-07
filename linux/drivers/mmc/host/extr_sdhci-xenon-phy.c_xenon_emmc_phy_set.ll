; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i64, i64, %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_params* }
%struct.xenon_emmc_phy_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.xenon_emmc_phy_params = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"eMMC PHY setting starts\0A\00", align 1
@XENON_FC_DQ_RECEN = common dso_local global i32 0, align 4
@XENON_FC_CMD_RECEN = common dso_local global i32 0, align 4
@XENON_FC_QSP_RECEN = common dso_local global i32 0, align 4
@XENON_OEN_QSN = common dso_local global i32 0, align 4
@XENON_FC_ALL_CMOS_RECEIVER = common dso_local global i32 0, align 4
@EMMC_5_0_PHY = common dso_local global i64 0, align 8
@XENON_EMMC_5_0_PHY_PAD_CONTROL = common dso_local global i32 0, align 4
@XENON_EMMC5_FC_CMD_PU = common dso_local global i32 0, align 4
@XENON_EMMC5_FC_DQ_PU = common dso_local global i32 0, align 4
@XENON_EMMC5_FC_CMD_PD = common dso_local global i32 0, align 4
@XENON_EMMC5_FC_DQ_PD = common dso_local global i32 0, align 4
@XENON_EMMC_PHY_PAD_CONTROL1 = common dso_local global i32 0, align 4
@XENON_EMMC5_1_FC_CMD_PU = common dso_local global i32 0, align 4
@XENON_EMMC5_1_FC_DQ_PU = common dso_local global i32 0, align 4
@XENON_EMMC5_1_FC_CMD_PD = common dso_local global i32 0, align 4
@XENON_EMMC5_1_FC_DQ_PD = common dso_local global i32 0, align 4
@MMC_TIMING_LEGACY = common dso_local global i8 0, align 1
@MMC_TYPE_SDIO = common dso_local global i64 0, align 8
@XENON_TIMING_ADJUST_SDIO_MODE = common dso_local global i32 0, align 4
@XENON_ZNR_MASK = common dso_local global i32 0, align 4
@XENON_ZNR_SHIFT = common dso_local global i32 0, align 4
@XENON_ZPR_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@XENON_DQ_DDR_MODE_MASK = common dso_local global i32 0, align 4
@XENON_DQ_DDR_MODE_SHIFT = common dso_local global i32 0, align 4
@XENON_CMD_DDR_MODE = common dso_local global i32 0, align 4
@XENON_DQ_ASYNC_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"eMMC PHY setting completes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8)* @xenon_emmc_phy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_emmc_phy_set(%struct.sdhci_host* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.xenon_priv*, align 8
  %8 = alloca %struct.xenon_emmc_phy_params*, align 8
  %9 = alloca %struct.xenon_emmc_phy_regs*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i8 %1, i8* %4, align 1
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %6, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %13 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.xenon_priv* %13, %struct.xenon_priv** %7, align 8
  %14 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %15 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %14, i32 0, i32 3
  %16 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %15, align 8
  store %struct.xenon_emmc_phy_params* %16, %struct.xenon_emmc_phy_params** %8, align 8
  %17 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %18 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %17, i32 0, i32 2
  %19 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %18, align 8
  store %struct.xenon_emmc_phy_regs* %19, %struct.xenon_emmc_phy_regs** %9, align 8
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mmc_dev(i32 %22)
  %24 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %27 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sdhci_readl(%struct.sdhci_host* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @XENON_FC_DQ_RECEN, align 4
  %31 = load i32, i32* @XENON_FC_CMD_RECEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @XENON_FC_QSP_RECEN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @XENON_OEN_QSN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @XENON_FC_ALL_CMOS_RECEIVER, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %45 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sdhci_writel(%struct.sdhci_host* %42, i32 %43, i32 %46)
  %48 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %49 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EMMC_5_0_PHY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %2
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = load i32, i32* @XENON_EMMC_5_0_PHY_PAD_CONTROL, align 4
  %56 = call i32 @sdhci_readl(%struct.sdhci_host* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @XENON_EMMC5_FC_CMD_PU, align 4
  %58 = load i32, i32* @XENON_EMMC5_FC_DQ_PU, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @XENON_EMMC5_FC_CMD_PD, align 4
  %63 = load i32, i32* @XENON_EMMC5_FC_DQ_PD, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @XENON_EMMC_5_0_PHY_PAD_CONTROL, align 4
  %71 = call i32 @sdhci_writel(%struct.sdhci_host* %68, i32 %69, i32 %70)
  br label %91

72:                                               ; preds = %2
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %74 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %75 = call i32 @sdhci_readl(%struct.sdhci_host* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @XENON_EMMC5_1_FC_CMD_PU, align 4
  %77 = load i32, i32* @XENON_EMMC5_1_FC_DQ_PU, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @XENON_EMMC5_1_FC_CMD_PD, align 4
  %82 = load i32, i32* @XENON_EMMC5_1_FC_DQ_PD, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %90 = call i32 @sdhci_writel(%struct.sdhci_host* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %72, %53
  %92 = load i8, i8* %4, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @MMC_TIMING_LEGACY, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %99 = load i8, i8* %4, align 1
  %100 = call i64 @xenon_emmc_phy_slow_mode(%struct.sdhci_host* %98, i8 zeroext %99)
  br label %249

101:                                              ; preds = %91
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %103 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %104 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @sdhci_readl(%struct.sdhci_host* %102, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %108 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load i32, i32* @XENON_TIMING_ADJUST_SDIO_MODE, align 4
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %121

116:                                              ; preds = %101
  %117 = load i32, i32* @XENON_TIMING_ADJUST_SDIO_MODE, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %116, %112
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %125 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sdhci_writel(%struct.sdhci_host* %122, i32 %123, i32 %126)
  %128 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %129 = load i8, i8* %4, align 1
  %130 = call i64 @xenon_emmc_phy_slow_mode(%struct.sdhci_host* %128, i8 zeroext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %249

133:                                              ; preds = %121
  %134 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %135 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %136 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @sdhci_readl(%struct.sdhci_host* %134, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* @XENON_ZNR_MASK, align 4
  %140 = load i32, i32* @XENON_ZNR_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* @XENON_ZPR_MASK, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %5, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %5, align 4
  %147 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %8, align 8
  %148 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @XENON_ZNR_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %8, align 8
  %153 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %151, %154
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %161 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @sdhci_writel(%struct.sdhci_host* %158, i32 %159, i32 %162)
  %164 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %165 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %166 = call i32 @sdhci_readl(%struct.sdhci_host* %164, i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %5, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %174 = call i32 @sdhci_writew(%struct.sdhci_host* %171, i32 %172, i32 %173)
  %175 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %176 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %177 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @sdhci_readl(%struct.sdhci_host* %175, i32 %178)
  store i32 %179, i32* %5, align 4
  %180 = load i8, i8* %4, align 1
  %181 = zext i8 %180 to i32
  switch i32 %181, label %204 [
    i32 129, label %182
    i32 128, label %194
    i32 130, label %194
  ]

182:                                              ; preds = %133
  %183 = load i32, i32* @XENON_DQ_DDR_MODE_MASK, align 4
  %184 = load i32, i32* @XENON_DQ_DDR_MODE_SHIFT, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* @XENON_CMD_DDR_MODE, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* %5, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* @XENON_DQ_ASYNC_MODE, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %5, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %5, align 4
  br label %216

194:                                              ; preds = %133, %133
  %195 = load i32, i32* @XENON_DQ_DDR_MODE_MASK, align 4
  %196 = load i32, i32* @XENON_DQ_DDR_MODE_SHIFT, align 4
  %197 = shl i32 %195, %196
  %198 = load i32, i32* @XENON_CMD_DDR_MODE, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @XENON_DQ_ASYNC_MODE, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %216

204:                                              ; preds = %133
  %205 = load i32, i32* @XENON_DQ_DDR_MODE_MASK, align 4
  %206 = load i32, i32* @XENON_DQ_DDR_MODE_SHIFT, align 4
  %207 = shl i32 %205, %206
  %208 = load i32, i32* @XENON_CMD_DDR_MODE, align 4
  %209 = or i32 %207, %208
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %5, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* @XENON_DQ_ASYNC_MODE, align 4
  %214 = load i32, i32* %5, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %204, %194, %182
  %217 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %220 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sdhci_writel(%struct.sdhci_host* %217, i32 %218, i32 %221)
  %223 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %224 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %225 = call i32 @sdhci_readl(%struct.sdhci_host* %223, i32 %224)
  store i32 %225, i32* %5, align 4
  %226 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %227 = load i32, i32* %5, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %5, align 4
  %229 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %232 = call i32 @sdhci_writew(%struct.sdhci_host* %229, i32 %230, i32 %231)
  %233 = load i8, i8* %4, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp eq i32 %234, 129
  br i1 %235, label %236, label %245

236:                                              ; preds = %216
  %237 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %238 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %239 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %242 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @sdhci_writel(%struct.sdhci_host* %237, i32 %240, i32 %243)
  br label %248

245:                                              ; preds = %216
  %246 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %247 = call i32 @xenon_emmc_phy_disable_strobe(%struct.sdhci_host* %246)
  br label %248

248:                                              ; preds = %245, %236
  br label %249

249:                                              ; preds = %248, %132, %97
  %250 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %251 = call i32 @xenon_emmc_phy_init(%struct.sdhci_host* %250)
  %252 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %253 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @mmc_dev(i32 %254)
  %256 = call i32 @dev_dbg(i32 %255, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i64 @xenon_emmc_phy_slow_mode(%struct.sdhci_host*, i8 zeroext) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @xenon_emmc_phy_disable_strobe(%struct.sdhci_host*) #1

declare dso_local i32 @xenon_emmc_phy_init(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
