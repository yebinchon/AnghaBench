; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma.c_bgmac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma.c_bgmac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32, %struct.TYPE_12__, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.ssb_sprom, %struct.bcma_chipinfo }
%struct.TYPE_14__ = type { i64 }
%struct.ssb_sprom = type { i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bcma_chipinfo = type { i32, i32 }
%struct.mii_bus = type { i32 }
%struct.bgmac = type { i32, %struct.mii_bus*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_13__, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.bcma_device* }
%struct.TYPE_11__ = type { i32 }
%struct.phy_device = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported core_unit %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@BCMA_CORE_4706_MAC_GBIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"GMAC CMN core not found (required for BCM4706)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BGMAC_PHY_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"No PHY found\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Found PHY addr: %d%s\0A\00", align 1
@BGMAC_PHY_NOREGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" (NOREGS)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PHY_ID_BCM54210E = common dso_local global i32 0, align 4
@PHY_BRCM_EN_MASTER_MODE = common dso_local global i32 0, align 4
@BCMA_HOSTTYPE_PCI = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"PCI setup not implemented\0A\00", align 1
@BGMAC_BFL_ENETROBO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Support for Roboswitch not implemented\0A\00", align 1
@BGMAC_BFL_ENETADM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"Support for ADMtek ethernet switch not implemented\0A\00", align 1
@BGMAC_FEAT_CLKCTLST = common dso_local global i32 0, align 4
@BGMAC_FEAT_FLW_CTRL2 = common dso_local global i32 0, align 4
@BGMAC_FEAT_SET_RXQ_CLK = common dso_local global i32 0, align 4
@BGMAC_FEAT_FLW_CTRL1 = common dso_local global i32 0, align 4
@BGMAC_FEAT_SW_TYPE_PHY = common dso_local global i32 0, align 4
@BCMA_PKG_ID_BCM47188 = common dso_local global i32 0, align 4
@BCMA_PKG_ID_BCM47186 = common dso_local global i32 0, align 4
@BGMAC_FEAT_SW_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_FEAT_IOST_ATTACHED = common dso_local global i32 0, align 4
@BCMA_PKG_ID_BCM5358 = common dso_local global i32 0, align 4
@BGMAC_FEAT_SW_TYPE_EPHYRMII = common dso_local global i32 0, align 4
@BCMA_PKG_ID_BCM47189 = common dso_local global i32 0, align 4
@BGMAC_FEAT_CC4_IF_SW_TYPE = common dso_local global i32 0, align 4
@BGMAC_FEAT_CC4_IF_SW_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_FEAT_IRQ_ID_OOB_6 = common dso_local global i32 0, align 4
@BGMAC_FEAT_CC7_IF_TYPE_RGMII = common dso_local global i32 0, align 4
@BGMAC_FEAT_NO_RESET = common dso_local global i32 0, align 4
@BGMAC_FEAT_FORCE_SPEED_2500 = common dso_local global i32 0, align 4
@BGMAC_FEAT_MISC_PLL_REQ = common dso_local global i32 0, align 4
@BGMAC_FEAT_CMN_PHY_CTL = common dso_local global i32 0, align 4
@BGMAC_FEAT_NO_CLR_MIB = common dso_local global i32 0, align 4
@BGMAC_FEAT_CMDCFG_SR_REV4 = common dso_local global i32 0, align 4
@BGMAC_FEAT_TX_MASK_SETUP = common dso_local global i32 0, align 4
@BGMAC_FEAT_RX_MASK_SETUP = common dso_local global i32 0, align 4
@bcma_bgmac_read = common dso_local global i32 0, align 4
@bcma_bgmac_write = common dso_local global i32 0, align 4
@bcma_bgmac_idm_read = common dso_local global i32 0, align 4
@bcma_bgmac_idm_write = common dso_local global i32 0, align 4
@bcma_bgmac_clk_enabled = common dso_local global i32 0, align 4
@bcma_bgmac_clk_enable = common dso_local global i32 0, align 4
@bcma_bgmac_cco_ctl_maskset = common dso_local global i32 0, align 4
@bcma_bgmac_get_bus_clock = common dso_local global i32 0, align 4
@bcma_bgmac_cmn_maskset32 = common dso_local global i32 0, align 4
@bcma_phy_connect = common dso_local global i32 0, align 4
@bgmac_phy_connect_direct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*)* @bgmac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_probe(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca %struct.bcma_chipinfo*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca %struct.bgmac*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy_device*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %11 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %12 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store %struct.bcma_chipinfo* %14, %struct.bcma_chipinfo** %4, align 8
  %15 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %16 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  store %struct.ssb_sprom* %18, %struct.ssb_sprom** %5, align 8
  store i32* null, i32** %8, align 8
  %19 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %20 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %19, i32 0, i32 5
  %21 = call %struct.bgmac* @bgmac_alloc(i32* %20)
  store %struct.bgmac* %21, %struct.bgmac** %7, align 8
  %22 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %23 = icmp ne %struct.bgmac* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %607

27:                                               ; preds = %1
  %28 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %29 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %30 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  store %struct.bcma_device* %28, %struct.bcma_device** %31, align 8
  %32 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %33 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %36 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %35, i32 0, i32 18
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %38 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %41 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %40, i32 0, i32 17
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %43 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %44 = call i32 @bcma_set_drvdata(%struct.bcma_device* %42, %struct.bgmac* %43)
  %45 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %46 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %45, i32 0, i32 13
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %27
  %52 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %53 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %52, i32 0, i32 13
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32* @of_get_mac_address(i64 %56)
  store i32* %57, i32** %8, align 8
  br label %58

58:                                               ; preds = %51, %27
  %59 = load i32*, i32** %8, align 8
  %60 = call i64 @IS_ERR_OR_NULL(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %64 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %78 [
    i32 0, label %66
    i32 1, label %70
    i32 2, label %74
  ]

66:                                               ; preds = %62
  %67 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %68 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %8, align 8
  br label %88

70:                                               ; preds = %62
  %71 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %72 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %8, align 8
  br label %88

74:                                               ; preds = %62
  %75 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %76 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %8, align 8
  br label %88

78:                                               ; preds = %62
  %79 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %80 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %79, i32 0, i32 13
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %83 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ENOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %9, align 4
  br label %603

88:                                               ; preds = %74, %70, %66
  br label %89

89:                                               ; preds = %88, %58
  %90 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %91 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %90, i32 0, i32 16
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @ether_addr_copy(i32 %94, i32* %95)
  %97 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %98 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @BCMA_CORE_4706_MAC_GBIT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %89
  %104 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %105 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %104, i32 0, i32 2
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %103
  %112 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %113 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %112, i32 0, i32 13
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %603

118:                                              ; preds = %103, %89
  %119 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %120 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %119, i32 0, i32 2
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %126 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %129 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %149 [
    i32 0, label %131
    i32 1, label %137
    i32 2, label %143
  ]

131:                                              ; preds = %118
  %132 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %133 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %136 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %135, i32 0, i32 14
  store i32 %134, i32* %136, align 8
  br label %149

137:                                              ; preds = %118
  %138 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %139 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %142 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %141, i32 0, i32 14
  store i32 %140, i32* %142, align 8
  br label %149

143:                                              ; preds = %118
  %144 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %145 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %148 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %147, i32 0, i32 14
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %118, %143, %137, %131
  %150 = load i32, i32* @BGMAC_PHY_MASK, align 4
  %151 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %152 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %151, i32 0, i32 14
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %156 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @BGMAC_PHY_MASK, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %149
  %161 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %162 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %161, i32 0, i32 13
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i32, i32* @ENODEV, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %603

167:                                              ; preds = %149
  %168 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %169 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %168, i32 0, i32 13
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %172 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %171, i32 0, i32 14
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %175 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %174, i32 0, i32 14
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @BGMAC_PHY_NOREGS, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %181 = call i32 @dev_info(%struct.TYPE_16__* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %173, i8* %180)
  %182 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %183 = call i32 @bgmac_is_bcm4707_family(%struct.bcma_device* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %243, label %185

185:                                              ; preds = %167
  %186 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %187 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 128
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %192 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %243, label %195

195:                                              ; preds = %190, %185
  %196 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %197 = call %struct.mii_bus* @bcma_mdio_mii_register(%struct.bgmac* %196)
  store %struct.mii_bus* %197, %struct.mii_bus** %6, align 8
  %198 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %199 = call i64 @IS_ERR(%struct.mii_bus* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %203 = call i32 @PTR_ERR(%struct.mii_bus* %202)
  store i32 %203, i32* %9, align 4
  br label %603

204:                                              ; preds = %195
  %205 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %206 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %207 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %206, i32 0, i32 1
  store %struct.mii_bus* %205, %struct.mii_bus** %207, align 8
  %208 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %209 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %208, i32 0, i32 1
  %210 = load %struct.mii_bus*, %struct.mii_bus** %209, align 8
  %211 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %212 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %211, i32 0, i32 14
  %213 = load i32, i32* %212, align 8
  %214 = call %struct.phy_device* @mdiobus_get_phy(%struct.mii_bus* %210, i32 %213)
  store %struct.phy_device* %214, %struct.phy_device** %10, align 8
  %215 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %216 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 128
  br i1 %218, label %219, label %242

219:                                              ; preds = %204
  %220 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %221 = icmp ne %struct.phy_device* %220, null
  br i1 %221, label %222, label %242

222:                                              ; preds = %219
  %223 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %224 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %223, i32 0, i32 1
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %229 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %228, i32 0, i32 1
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %227, %232
  %234 = load i32, i32* @PHY_ID_BCM54210E, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %222
  %237 = load i32, i32* @PHY_BRCM_EN_MASTER_MODE, align 4
  %238 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %239 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %236, %222, %219, %204
  br label %243

243:                                              ; preds = %242, %190, %167
  %244 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %245 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %244, i32 0, i32 2
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @BCMA_HOSTTYPE_PCI, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %243
  %252 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %253 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %252, i32 0, i32 13
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %254, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %256 = load i32, i32* @ENOTSUPP, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %9, align 4
  br label %598

258:                                              ; preds = %243
  %259 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %260 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @BGMAC_BFL_ENETROBO, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %269 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %271 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %258
  %275 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %276 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %275, i32 0, i32 13
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %276, align 8
  %278 = call i32 @dev_warn(%struct.TYPE_16__* %277, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %279

279:                                              ; preds = %274, %258
  %280 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %281 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @BGMAC_BFL_ENETADM, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %279
  %287 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %288 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %287, i32 0, i32 13
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %288, align 8
  %290 = call i32 @dev_warn(%struct.TYPE_16__* %289, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %291

291:                                              ; preds = %286, %279
  %292 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %293 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  switch i32 %294, label %484 [
    i32 134, label %295
    i32 133, label %301
    i32 130, label %312
    i32 129, label %312
    i32 128, label %368
    i32 132, label %431
    i32 136, label %468
    i32 135, label %468
    i32 131, label %468
  ]

295:                                              ; preds = %291
  %296 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %297 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %298 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  br label %301

301:                                              ; preds = %291, %295
  %302 = load i32, i32* @BGMAC_FEAT_FLW_CTRL2, align 4
  %303 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %304 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %303, i32 0, i32 12
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = load i32, i32* @BGMAC_FEAT_SET_RXQ_CLK, align 4
  %308 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %309 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %308, i32 0, i32 12
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %307
  store i32 %311, i32* %309, align 8
  br label %495

312:                                              ; preds = %291, %291
  %313 = load i32, i32* @BGMAC_FEAT_SET_RXQ_CLK, align 4
  %314 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %315 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %319 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %320 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %319, i32 0, i32 12
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = load i32, i32* @BGMAC_FEAT_FLW_CTRL1, align 4
  %324 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %325 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %324, i32 0, i32 12
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load i32, i32* @BGMAC_FEAT_SW_TYPE_PHY, align 4
  %329 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %330 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %329, i32 0, i32 12
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %328
  store i32 %332, i32* %330, align 8
  %333 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %334 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @BCMA_PKG_ID_BCM47188, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %344, label %338

338:                                              ; preds = %312
  %339 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %340 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @BCMA_PKG_ID_BCM47186, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %355

344:                                              ; preds = %338, %312
  %345 = load i32, i32* @BGMAC_FEAT_SW_TYPE_RGMII, align 4
  %346 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %347 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %346, i32 0, i32 12
  %348 = load i32, i32* %347, align 8
  %349 = or i32 %348, %345
  store i32 %349, i32* %347, align 8
  %350 = load i32, i32* @BGMAC_FEAT_IOST_ATTACHED, align 4
  %351 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %352 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %351, i32 0, i32 12
  %353 = load i32, i32* %352, align 8
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 8
  br label %355

355:                                              ; preds = %344, %338
  %356 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %357 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @BCMA_PKG_ID_BCM5358, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %367

361:                                              ; preds = %355
  %362 = load i32, i32* @BGMAC_FEAT_SW_TYPE_EPHYRMII, align 4
  %363 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %364 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %363, i32 0, i32 12
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %361, %355
  br label %495

368:                                              ; preds = %291
  %369 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %370 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %371 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %370, i32 0, i32 12
  %372 = load i32, i32* %371, align 8
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 8
  %374 = load i32, i32* @BGMAC_FEAT_SET_RXQ_CLK, align 4
  %375 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %376 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %375, i32 0, i32 12
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 8
  %379 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %380 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @BCMA_PKG_ID_BCM47189, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %390

384:                                              ; preds = %368
  %385 = load i32, i32* @BGMAC_FEAT_IOST_ATTACHED, align 4
  %386 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %387 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %386, i32 0, i32 12
  %388 = load i32, i32* %387, align 8
  %389 = or i32 %388, %385
  store i32 %389, i32* %387, align 8
  br label %390

390:                                              ; preds = %384, %368
  %391 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %392 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %413

395:                                              ; preds = %390
  %396 = load i32, i32* @BGMAC_FEAT_CC4_IF_SW_TYPE, align 4
  %397 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %398 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %397, i32 0, i32 12
  %399 = load i32, i32* %398, align 8
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 8
  %401 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %402 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @BCMA_PKG_ID_BCM47189, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %395
  %407 = load i32, i32* @BGMAC_FEAT_CC4_IF_SW_TYPE_RGMII, align 4
  %408 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %409 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %408, i32 0, i32 12
  %410 = load i32, i32* %409, align 8
  %411 = or i32 %410, %407
  store i32 %411, i32* %409, align 8
  br label %412

412:                                              ; preds = %406, %395
  br label %430

413:                                              ; preds = %390
  %414 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %415 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %429

418:                                              ; preds = %413
  %419 = load i32, i32* @BGMAC_FEAT_IRQ_ID_OOB_6, align 4
  %420 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %421 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %420, i32 0, i32 12
  %422 = load i32, i32* %421, align 8
  %423 = or i32 %422, %419
  store i32 %423, i32* %421, align 8
  %424 = load i32, i32* @BGMAC_FEAT_CC7_IF_TYPE_RGMII, align 4
  %425 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %426 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %425, i32 0, i32 12
  %427 = load i32, i32* %426, align 8
  %428 = or i32 %427, %424
  store i32 %428, i32* %426, align 8
  br label %429

429:                                              ; preds = %418, %413
  br label %430

430:                                              ; preds = %429, %412
  br label %495

431:                                              ; preds = %291
  %432 = load i32, i32* @BGMAC_FEAT_SET_RXQ_CLK, align 4
  %433 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %434 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %433, i32 0, i32 12
  %435 = load i32, i32* %434, align 8
  %436 = or i32 %435, %432
  store i32 %436, i32* %434, align 8
  %437 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %438 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %439 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %438, i32 0, i32 12
  %440 = load i32, i32* %439, align 8
  %441 = or i32 %440, %437
  store i32 %441, i32* %439, align 8
  %442 = load i32, i32* @BGMAC_FEAT_FLW_CTRL1, align 4
  %443 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %444 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %443, i32 0, i32 12
  %445 = load i32, i32* %444, align 8
  %446 = or i32 %445, %442
  store i32 %446, i32* %444, align 8
  %447 = load i32, i32* @BGMAC_FEAT_SW_TYPE_PHY, align 4
  %448 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %449 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %448, i32 0, i32 12
  %450 = load i32, i32* %449, align 8
  %451 = or i32 %450, %447
  store i32 %451, i32* %449, align 8
  %452 = load %struct.bcma_chipinfo*, %struct.bcma_chipinfo** %4, align 8
  %453 = getelementptr inbounds %struct.bcma_chipinfo, %struct.bcma_chipinfo* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = icmp eq i32 %454, 10
  br i1 %455, label %456, label %467

456:                                              ; preds = %431
  %457 = load i32, i32* @BGMAC_FEAT_SW_TYPE_RGMII, align 4
  %458 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %459 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %458, i32 0, i32 12
  %460 = load i32, i32* %459, align 8
  %461 = or i32 %460, %457
  store i32 %461, i32* %459, align 8
  %462 = load i32, i32* @BGMAC_FEAT_IOST_ATTACHED, align 4
  %463 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %464 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %463, i32 0, i32 12
  %465 = load i32, i32* %464, align 8
  %466 = or i32 %465, %462
  store i32 %466, i32* %464, align 8
  br label %467

467:                                              ; preds = %456, %431
  br label %495

468:                                              ; preds = %291, %291, %291
  %469 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %470 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %471 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %470, i32 0, i32 12
  %472 = load i32, i32* %471, align 8
  %473 = or i32 %472, %469
  store i32 %473, i32* %471, align 8
  %474 = load i32, i32* @BGMAC_FEAT_NO_RESET, align 4
  %475 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %476 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %475, i32 0, i32 12
  %477 = load i32, i32* %476, align 8
  %478 = or i32 %477, %474
  store i32 %478, i32* %476, align 8
  %479 = load i32, i32* @BGMAC_FEAT_FORCE_SPEED_2500, align 4
  %480 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %481 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %480, i32 0, i32 12
  %482 = load i32, i32* %481, align 8
  %483 = or i32 %482, %479
  store i32 %483, i32* %481, align 8
  br label %495

484:                                              ; preds = %291
  %485 = load i32, i32* @BGMAC_FEAT_CLKCTLST, align 4
  %486 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %487 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %486, i32 0, i32 12
  %488 = load i32, i32* %487, align 8
  %489 = or i32 %488, %485
  store i32 %489, i32* %487, align 8
  %490 = load i32, i32* @BGMAC_FEAT_SET_RXQ_CLK, align 4
  %491 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %492 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %491, i32 0, i32 12
  %493 = load i32, i32* %492, align 8
  %494 = or i32 %493, %490
  store i32 %494, i32* %492, align 8
  br label %495

495:                                              ; preds = %484, %468, %467, %430, %367, %301
  %496 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %497 = call i32 @bgmac_is_bcm4707_family(%struct.bcma_device* %496)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %511, label %499

499:                                              ; preds = %495
  %500 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %501 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 8
  %504 = icmp sgt i32 %503, 2
  br i1 %504, label %505, label %511

505:                                              ; preds = %499
  %506 = load i32, i32* @BGMAC_FEAT_MISC_PLL_REQ, align 4
  %507 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %508 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %507, i32 0, i32 12
  %509 = load i32, i32* %508, align 8
  %510 = or i32 %509, %506
  store i32 %510, i32* %508, align 8
  br label %511

511:                                              ; preds = %505, %499, %495
  %512 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %513 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @BCMA_CORE_4706_MAC_GBIT, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %529

518:                                              ; preds = %511
  %519 = load i32, i32* @BGMAC_FEAT_CMN_PHY_CTL, align 4
  %520 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %521 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %520, i32 0, i32 12
  %522 = load i32, i32* %521, align 8
  %523 = or i32 %522, %519
  store i32 %523, i32* %521, align 8
  %524 = load i32, i32* @BGMAC_FEAT_NO_CLR_MIB, align 4
  %525 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %526 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %525, i32 0, i32 12
  %527 = load i32, i32* %526, align 8
  %528 = or i32 %527, %524
  store i32 %528, i32* %526, align 8
  br label %529

529:                                              ; preds = %518, %511
  %530 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %531 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 8
  %534 = icmp sge i32 %533, 4
  br i1 %534, label %535, label %551

535:                                              ; preds = %529
  %536 = load i32, i32* @BGMAC_FEAT_CMDCFG_SR_REV4, align 4
  %537 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %538 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %537, i32 0, i32 12
  %539 = load i32, i32* %538, align 8
  %540 = or i32 %539, %536
  store i32 %540, i32* %538, align 8
  %541 = load i32, i32* @BGMAC_FEAT_TX_MASK_SETUP, align 4
  %542 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %543 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %542, i32 0, i32 12
  %544 = load i32, i32* %543, align 8
  %545 = or i32 %544, %541
  store i32 %545, i32* %543, align 8
  %546 = load i32, i32* @BGMAC_FEAT_RX_MASK_SETUP, align 4
  %547 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %548 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %547, i32 0, i32 12
  %549 = load i32, i32* %548, align 8
  %550 = or i32 %549, %546
  store i32 %550, i32* %548, align 8
  br label %551

551:                                              ; preds = %535, %529
  %552 = load i32, i32* @bcma_bgmac_read, align 4
  %553 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %554 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %553, i32 0, i32 11
  store i32 %552, i32* %554, align 4
  %555 = load i32, i32* @bcma_bgmac_write, align 4
  %556 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %557 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %556, i32 0, i32 10
  store i32 %555, i32* %557, align 8
  %558 = load i32, i32* @bcma_bgmac_idm_read, align 4
  %559 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %560 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %559, i32 0, i32 9
  store i32 %558, i32* %560, align 4
  %561 = load i32, i32* @bcma_bgmac_idm_write, align 4
  %562 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %563 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %562, i32 0, i32 8
  store i32 %561, i32* %563, align 8
  %564 = load i32, i32* @bcma_bgmac_clk_enabled, align 4
  %565 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %566 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %565, i32 0, i32 7
  store i32 %564, i32* %566, align 4
  %567 = load i32, i32* @bcma_bgmac_clk_enable, align 4
  %568 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %569 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %568, i32 0, i32 6
  store i32 %567, i32* %569, align 8
  %570 = load i32, i32* @bcma_bgmac_cco_ctl_maskset, align 4
  %571 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %572 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %571, i32 0, i32 5
  store i32 %570, i32* %572, align 4
  %573 = load i32, i32* @bcma_bgmac_get_bus_clock, align 4
  %574 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %575 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %574, i32 0, i32 4
  store i32 %573, i32* %575, align 8
  %576 = load i32, i32* @bcma_bgmac_cmn_maskset32, align 4
  %577 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %578 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %577, i32 0, i32 3
  store i32 %576, i32* %578, align 4
  %579 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %580 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %579, i32 0, i32 1
  %581 = load %struct.mii_bus*, %struct.mii_bus** %580, align 8
  %582 = icmp ne %struct.mii_bus* %581, null
  br i1 %582, label %583, label %587

583:                                              ; preds = %551
  %584 = load i32, i32* @bcma_phy_connect, align 4
  %585 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %586 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %585, i32 0, i32 2
  store i32 %584, i32* %586, align 8
  br label %591

587:                                              ; preds = %551
  %588 = load i32, i32* @bgmac_phy_connect_direct, align 4
  %589 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %590 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %589, i32 0, i32 2
  store i32 %588, i32* %590, align 8
  br label %591

591:                                              ; preds = %587, %583
  %592 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %593 = call i32 @bgmac_enet_probe(%struct.bgmac* %592)
  store i32 %593, i32* %9, align 4
  %594 = load i32, i32* %9, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %591
  br label %598

597:                                              ; preds = %591
  store i32 0, i32* %2, align 4
  br label %607

598:                                              ; preds = %596, %251
  %599 = load %struct.bgmac*, %struct.bgmac** %7, align 8
  %600 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %599, i32 0, i32 1
  %601 = load %struct.mii_bus*, %struct.mii_bus** %600, align 8
  %602 = call i32 @bcma_mdio_mii_unregister(%struct.mii_bus* %601)
  br label %603

603:                                              ; preds = %598, %201, %160, %111, %78
  %604 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %605 = call i32 @bcma_set_drvdata(%struct.bcma_device* %604, %struct.bgmac* null)
  %606 = load i32, i32* %9, align 4
  store i32 %606, i32* %2, align 4
  br label %607

607:                                              ; preds = %603, %597, %24
  %608 = load i32, i32* %2, align 4
  ret i32 %608
}

declare dso_local %struct.bgmac* @bgmac_alloc(i32*) #1

declare dso_local i32 @bcma_set_drvdata(%struct.bcma_device*, %struct.bgmac*) #1

declare dso_local i32* @of_get_mac_address(i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_16__*, i8*, i32, i8*) #1

declare dso_local i32 @bgmac_is_bcm4707_family(%struct.bcma_device*) #1

declare dso_local %struct.mii_bus* @bcma_mdio_mii_register(%struct.bgmac*) #1

declare dso_local i64 @IS_ERR(%struct.mii_bus*) #1

declare dso_local i32 @PTR_ERR(%struct.mii_bus*) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(%struct.mii_bus*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @bgmac_enet_probe(%struct.bgmac*) #1

declare dso_local i32 @bcma_mdio_mii_unregister(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
