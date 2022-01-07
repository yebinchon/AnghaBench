; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i64, %struct.TYPE_14__*, %struct.wiphy*, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.brcms_hardware* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, i32, i32*, i8*, i8* }
%struct.wiphy = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i64, i64, i32, i32* }
%struct.brcms_hardware = type { i32, i32, i32, i64, i64, i32, i32, i32*, %struct.bcma_device*, i32, %struct.TYPE_16__*, i32, i32, i32*, i32, i64, i64, i32, i32*, %struct.TYPE_16__**, %struct.brcms_c_info* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i32, i32*, i32, i8*, i8* }
%struct.bcma_device = type { %struct.TYPE_15__*, i32, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_10__, %struct.ssb_sprom, %struct.pci_dev* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.ssb_sprom = type { i32, i32, i32, i32, i64, i32 }
%struct.pci_dev = type { i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.shared_phy_params = type { i32, i64, i32, i64, i64, i32, i64, i64, i32, i32, i32, i64, i32*, i32* }

@BCMA_HOSTTYPE_PCI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"wl%d: vendor 0x%x device 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"wl%d: brcms_b_attach: si_attach failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"wl%d: brcms_b_attach: Unsupported device\0A\00", align 1
@BCMA_CLKMODE_FAST = common dso_local global i32 0, align 4
@BRCMS_USE_COREFLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"wl%d: brcms_b_attach: validate_chip_access failed\0A\00", align 1
@BOARDREV_PROMOTABLE = common dso_local global i32 0, align 4
@BOARDREV_PROMOTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [87 x i8] c"wl%d: brcms_b_attach: Unsupported Broadcom board type (0x%x) or revision level (0x%x)\0A\00", align 1
@BFL_NOPLLDOWN = common dso_local global i32 0, align 4
@BRCMS_PLLREQ_SHARED = common dso_local global i32 0, align 4
@BCM43224_D11N_ID = common dso_local global i64 0, align 8
@BCM43224_D11N_ID_VEN1 = common dso_local global i64 0, align 8
@BCM43224_CHIP_ID = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43225 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"wl%d: brcms_b_attach: wlc_phy_shim_attach failed\0A\00", align 1
@BRCM_BAND_5G = common dso_local global i8* null, align 8
@BRCM_BAND_2G = common dso_local global i8* null, align 8
@machwcap = common dso_local global i32 0, align 4
@XMTFIFOTBL_STARTREV = common dso_local global i64 0, align 8
@xmtfifo_sz = common dso_local global i32** null, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"wl%d: brcms_b_attach: wlc_phy_attach failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"wl%d: brcms_b_attach: unsupported phy type/rev (%d/%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"wl%d: phy %u/%u radio %x/%u\0A\00", align 1
@APHY_CWMIN = common dso_local global i32 0, align 4
@PHY_CWMAX = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"wl%d: brcms_b_attach: bad macaddr\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"deviceid 0x%x nbands %d board 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"wl%d: brcms_b_attach: failed with err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, %struct.bcma_device*, i32, i32)* @brcms_b_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_attach(%struct.brcms_c_info* %0, %struct.bcma_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_c_info*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcms_hardware*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.shared_phy_params, align 8
  %15 = alloca %struct.wiphy*, align 8
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca %struct.ssb_sprom*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %6, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %19 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %18, i32 0, i32 3
  %20 = load %struct.wiphy*, %struct.wiphy** %19, align 8
  store %struct.wiphy* %20, %struct.wiphy** %15, align 8
  %21 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %22 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 3
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %16, align 8
  %26 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %27 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  store %struct.ssb_sprom* %29, %struct.ssb_sprom** %17, align 8
  %30 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %31 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BCMA_HOSTTYPE_PCI, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %4
  %38 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct.bcma_device*, i8*, i32, i32, i64, ...) @brcms_dbg_info(%struct.bcma_device* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i64 %45)
  br label %63

47:                                               ; preds = %4
  %48 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %51 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %57 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.bcma_device*, i8*, i32, i32, i64, ...) @brcms_dbg_info(%struct.bcma_device* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %55, i64 %61)
  br label %63

63:                                               ; preds = %47, %37
  store i32 1, i32* %13, align 4
  %64 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %65 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %64, i32 0, i32 7
  %66 = load %struct.brcms_hardware*, %struct.brcms_hardware** %65, align 8
  store %struct.brcms_hardware* %66, %struct.brcms_hardware** %10, align 8
  %67 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %68 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %69 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %68, i32 0, i32 20
  store %struct.brcms_c_info* %67, %struct.brcms_c_info** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %72 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %74 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %73, i32 0, i32 19
  %75 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %75, i64 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %79 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %78, i32 0, i32 10
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %82 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %84 = call i32 @brcms_b_info_init(%struct.brcms_hardware* %83)
  %85 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %86 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = call i32* @ai_attach(%struct.TYPE_15__* %87)
  %89 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %90 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %89, i32 0, i32 7
  store i32* %88, i32** %90, align 8
  %91 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %92 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %63
  %96 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  store i32 11, i32* %11, align 4
  br label %790

99:                                               ; preds = %63
  %100 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %101 = call i32 @brcms_c_chipmatch(%struct.bcma_device* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  store i32 12, i32* %11, align 4
  br label %790

107:                                              ; preds = %99
  %108 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %109 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BCMA_HOSTTYPE_PCI, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %107
  %116 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %120 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %125 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  br label %143

126:                                              ; preds = %107
  %127 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %128 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %127, i32 0, i32 0
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %134 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %136 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %135, i32 0, i32 0
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %142 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %126, %115
  %144 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %145 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %146 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %145, i32 0, i32 8
  store %struct.bcma_device* %144, %struct.bcma_device** %146, align 8
  %147 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %148 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %152 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  %153 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %154 = call i32 @brcms_c_isgoodchip(%struct.brcms_hardware* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %143
  store i32 13, i32* %11, align 4
  br label %790

157:                                              ; preds = %143
  %158 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %159 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %158, i32 0, i32 7
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @ai_clkctl_init(i32* %160)
  %162 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %163 = load i32, i32* @BCMA_CLKMODE_FAST, align 4
  %164 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %162, i32 %163)
  %165 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %166 = load i32, i32* @BRCMS_USE_COREFLAGS, align 4
  %167 = call i32 @brcms_b_corereset(%struct.brcms_hardware* %165, i32 %166)
  %168 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %169 = call i32 @brcms_b_validate_chip_access(%struct.brcms_hardware* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %157
  %172 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %172, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  store i32 14, i32* %11, align 4
  br label %790

175:                                              ; preds = %157
  %176 = load %struct.ssb_sprom*, %struct.ssb_sprom** %17, align 8
  %177 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @BOARDREV_PROMOTABLE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = load i32, i32* @BOARDREV_PROMOTED, align 4
  store i32 %183, i32* %12, align 4
  br label %184

184:                                              ; preds = %182, %175
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %188 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %187, i32 0, i32 16
  store i64 %186, i64* %188, align 8
  %189 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %190 = call i32 @brcms_c_validboardtype(%struct.brcms_hardware* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %184
  %193 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %196 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %195, i32 0, i32 7
  %197 = load i32*, i32** %196, align 8
  %198 = call i64 @ai_get_boardtype(i32* %197)
  %199 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %200 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %199, i32 0, i32 16
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %193, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i32 %194, i64 %198, i64 %201)
  store i32 15, i32* %11, align 4
  br label %790

203:                                              ; preds = %184
  %204 = load %struct.ssb_sprom*, %struct.ssb_sprom** %17, align 8
  %205 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %208 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %207, i32 0, i32 17
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ssb_sprom*, %struct.ssb_sprom** %17, align 8
  %210 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ssb_sprom*, %struct.ssb_sprom** %17, align 8
  %213 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = shl i32 %214, 16
  %216 = add nsw i32 %211, %215
  %217 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %218 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %217, i32 0, i32 5
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ssb_sprom*, %struct.ssb_sprom** %17, align 8
  %220 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.ssb_sprom*, %struct.ssb_sprom** %17, align 8
  %223 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 16
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %221, %226
  %228 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %229 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %228, i32 0, i32 15
  store i64 %227, i64* %229, align 8
  %230 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %231 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @BFL_NOPLLDOWN, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %203
  %237 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %238 = load i32, i32* @BRCMS_PLLREQ_SHARED, align 4
  %239 = call i32 @brcms_b_pllreq(%struct.brcms_hardware* %237, i32 1, i32 %238)
  br label %240

240:                                              ; preds = %236, %203
  %241 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %242 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @BCM43224_D11N_ID, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %258, label %246

246:                                              ; preds = %240
  %247 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %248 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @BCM43224_D11N_ID_VEN1, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %258, label %252

252:                                              ; preds = %246
  %253 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %254 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @BCM43224_CHIP_ID, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %252, %246, %240
  %259 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %260 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %259, i32 0, i32 6
  store i32 2, i32* %260, align 4
  br label %264

261:                                              ; preds = %252
  %262 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %263 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %262, i32 0, i32 6
  store i32 1, i32* %263, align 4
  br label %264

264:                                              ; preds = %261, %258
  %265 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %266 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %265, i32 0, i32 7
  %267 = load i32*, i32** %266, align 8
  %268 = call i64 @ai_get_chip_id(i32* %267)
  %269 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %273 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %272, i32 0, i32 6
  store i32 1, i32* %273, align 4
  br label %274

274:                                              ; preds = %271, %264
  %275 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %276 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %279 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %281 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %284 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %283, i32 0, i32 1
  store i64 %282, i64* %284, align 8
  %285 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %286 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %285, i32 0, i32 7
  %287 = load i32*, i32** %286, align 8
  %288 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %289 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %288, i32 0, i32 6
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 6
  store i32* %287, i32** %291, align 8
  %292 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %293 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %296 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %295, i32 0, i32 6
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  store i64 %294, i64* %298, align 8
  %299 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %300 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %299, i32 0, i32 17
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %303 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %302, i32 0, i32 6
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 5
  store i32 %301, i32* %305, align 8
  %306 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %307 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %306, i32 0, i32 16
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %310 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %309, i32 0, i32 6
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 4
  store i64 %308, i64* %312, align 8
  %313 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %314 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %317 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %316, i32 0, i32 6
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 1
  store i32 %315, i32* %319, align 8
  %320 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %321 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %320, i32 0, i32 15
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %324 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %323, i32 0, i32 6
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 3
  store i64 %322, i64* %326, align 8
  %327 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %328 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %331 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %330, i32 0, i32 6
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 2
  store i32 %329, i32* %333, align 4
  %334 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %335 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %336 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %339 = call i32* @wlc_phy_shim_attach(%struct.brcms_hardware* %334, i32 %337, %struct.brcms_c_info* %338)
  %340 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %341 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %340, i32 0, i32 18
  store i32* %339, i32** %341, align 8
  %342 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %343 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %342, i32 0, i32 18
  %344 = load i32*, i32** %343, align 8
  %345 = icmp eq i32* %344, null
  br i1 %345, label %346, label %350

346:                                              ; preds = %274
  %347 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %348 = load i32, i32* %8, align 4
  %349 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %347, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %348)
  store i32 25, i32* %11, align 4
  br label %790

350:                                              ; preds = %274
  %351 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %352 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %351, i32 0, i32 7
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 13
  store i32* %353, i32** %354, align 8
  %355 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %356 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %355, i32 0, i32 18
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 12
  store i32* %357, i32** %358, align 8
  %359 = load i32, i32* %8, align 4
  %360 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 0
  store i32 %359, i32* %360, align 8
  %361 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %362 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %361, i32 0, i32 4
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 1
  store i64 %363, i64* %364, align 8
  %365 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %366 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 2
  store i32 %367, i32* %368, align 8
  %369 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %370 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 3
  store i64 %371, i64* %372, align 8
  %373 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %374 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %373, i32 0, i32 7
  %375 = load i32*, i32** %374, align 8
  %376 = call i64 @ai_get_chip_id(i32* %375)
  %377 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 11
  store i64 %376, i64* %377, align 8
  %378 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %379 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %378, i32 0, i32 7
  %380 = load i32*, i32** %379, align 8
  %381 = call i32 @ai_get_chiprev(i32* %380)
  %382 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 10
  store i32 %381, i32* %382, align 8
  %383 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %384 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %383, i32 0, i32 7
  %385 = load i32*, i32** %384, align 8
  %386 = call i32 @ai_get_chippkg(i32* %385)
  %387 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 9
  store i32 %386, i32* %387, align 4
  %388 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %389 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %388, i32 0, i32 17
  %390 = load i32, i32* %389, align 8
  %391 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 8
  store i32 %390, i32* %391, align 8
  %392 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %393 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %392, i32 0, i32 7
  %394 = load i32*, i32** %393, align 8
  %395 = call i64 @ai_get_boardtype(i32* %394)
  %396 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 4
  store i64 %395, i64* %396, align 8
  %397 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %398 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %397, i32 0, i32 16
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 7
  store i64 %399, i64* %400, align 8
  %401 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %402 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %401, i32 0, i32 5
  %403 = load i32, i32* %402, align 8
  %404 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 5
  store i32 %403, i32* %404, align 8
  %405 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %406 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %405, i32 0, i32 15
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %14, i32 0, i32 6
  store i64 %407, i64* %408, align 8
  %409 = call i32 @wlc_phy_shared_attach(%struct.shared_phy_params* %14)
  %410 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %411 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %410, i32 0, i32 12
  store i32 %409, i32* %411, align 4
  %412 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %413 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %412, i32 0, i32 12
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %350
  store i32 16, i32* %11, align 4
  br label %790

417:                                              ; preds = %350
  store i32 0, i32* %12, align 4
  br label %418

418:                                              ; preds = %738, %417
  %419 = load i32, i32* %12, align 4
  %420 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %421 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %420, i32 0, i32 6
  %422 = load i32, i32* %421, align 4
  %423 = icmp slt i32 %419, %422
  br i1 %423, label %424, label %741

424:                                              ; preds = %418
  %425 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %426 = load i32, i32* %12, align 4
  %427 = call i32 @brcms_c_setxband(%struct.brcms_hardware* %425, i32 %426)
  %428 = load i32, i32* %12, align 4
  %429 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %430 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %429, i32 0, i32 10
  %431 = load %struct.TYPE_16__*, %struct.TYPE_16__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %431, i32 0, i32 0
  store i32 %428, i32* %432, align 8
  %433 = load i32, i32* %12, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %424
  %436 = load i8*, i8** @BRCM_BAND_5G, align 8
  br label %439

437:                                              ; preds = %424
  %438 = load i8*, i8** @BRCM_BAND_2G, align 8
  br label %439

439:                                              ; preds = %437, %435
  %440 = phi i8* [ %436, %435 ], [ %438, %437 ]
  %441 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %442 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %441, i32 0, i32 10
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 10
  store i8* %440, i8** %444, align 8
  %445 = load i32, i32* %12, align 4
  %446 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %447 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %446, i32 0, i32 2
  %448 = load %struct.TYPE_14__*, %struct.TYPE_14__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %448, i32 0, i32 0
  store i32 %445, i32* %449, align 8
  %450 = load i32, i32* %12, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %439
  %453 = load i8*, i8** @BRCM_BAND_5G, align 8
  br label %456

454:                                              ; preds = %439
  %455 = load i8*, i8** @BRCM_BAND_2G, align 8
  br label %456

456:                                              ; preds = %454, %452
  %457 = phi i8* [ %453, %452 ], [ %455, %454 ]
  %458 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %459 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %458, i32 0, i32 2
  %460 = load %struct.TYPE_14__*, %struct.TYPE_14__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 7
  store i8* %457, i8** %461, align 8
  %462 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %463 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %466 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %465, i32 0, i32 4
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 0
  store i32 %464, i32* %468, align 4
  %469 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %470 = load i32, i32* @machwcap, align 4
  %471 = call i32 @D11REGOFFS(i32 %470)
  %472 = call i32 @bcma_read32(%struct.bcma_device* %469, i32 %471)
  %473 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %474 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %473, i32 0, i32 11
  store i32 %472, i32* %474, align 8
  %475 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %476 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %475, i32 0, i32 11
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %479 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %478, i32 0, i32 14
  store i32 %477, i32* %479, align 8
  %480 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %481 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %480, i32 0, i32 4
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @XMTFIFOTBL_STARTREV, align 8
  %484 = icmp slt i64 %482, %483
  br i1 %484, label %494, label %485

485:                                              ; preds = %456
  %486 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %487 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %486, i32 0, i32 4
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @XMTFIFOTBL_STARTREV, align 8
  %490 = sub nsw i64 %488, %489
  %491 = load i32**, i32*** @xmtfifo_sz, align 8
  %492 = call i64 @ARRAY_SIZE(i32** %491)
  %493 = icmp sgt i64 %490, %492
  br label %494

494:                                              ; preds = %485, %456
  %495 = phi i1 [ true, %456 ], [ %493, %485 ]
  %496 = zext i1 %495 to i32
  %497 = call i32 @WARN_ON(i32 %496)
  %498 = load i32**, i32*** @xmtfifo_sz, align 8
  %499 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %500 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %499, i32 0, i32 4
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @XMTFIFOTBL_STARTREV, align 8
  %503 = sub nsw i64 %501, %502
  %504 = getelementptr inbounds i32*, i32** %498, i64 %503
  %505 = load i32*, i32** %504, align 8
  %506 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %507 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %506, i32 0, i32 13
  store i32* %505, i32** %507, align 8
  %508 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %509 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %508, i32 0, i32 13
  %510 = load i32*, i32** %509, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 0
  %512 = load i32, i32* %511, align 4
  %513 = icmp ne i32 %512, 0
  %514 = xor i1 %513, true
  %515 = zext i1 %514 to i32
  %516 = call i32 @WARN_ON(i32 %515)
  %517 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %518 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %517, i32 0, i32 12
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %521 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %522 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %521, i32 0, i32 10
  %523 = load %struct.TYPE_16__*, %struct.TYPE_16__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %523, i32 0, i32 10
  %525 = load i8*, i8** %524, align 8
  %526 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %527 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %526, i32 0, i32 3
  %528 = load %struct.wiphy*, %struct.wiphy** %527, align 8
  %529 = call i32* @wlc_phy_attach(i32 %519, %struct.bcma_device* %520, i8* %525, %struct.wiphy* %528)
  %530 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %531 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %530, i32 0, i32 10
  %532 = load %struct.TYPE_16__*, %struct.TYPE_16__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %532, i32 0, i32 7
  store i32* %529, i32** %533, align 8
  %534 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %535 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %534, i32 0, i32 10
  %536 = load %struct.TYPE_16__*, %struct.TYPE_16__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %536, i32 0, i32 7
  %538 = load i32*, i32** %537, align 8
  %539 = icmp eq i32* %538, null
  br i1 %539, label %540, label %544

540:                                              ; preds = %494
  %541 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %542 = load i32, i32* %8, align 4
  %543 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %541, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %542)
  store i32 17, i32* %11, align 4
  br label %790

544:                                              ; preds = %494
  %545 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %546 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %545, i32 0, i32 10
  %547 = load %struct.TYPE_16__*, %struct.TYPE_16__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %547, i32 0, i32 7
  %549 = load i32*, i32** %548, align 8
  %550 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %551 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %550, i32 0, i32 11
  %552 = load i32, i32* %551, align 8
  %553 = call i32 @wlc_phy_machwcap_set(i32* %549, i32 %552)
  %554 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %555 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %554, i32 0, i32 10
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %555, align 8
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 7
  %558 = load i32*, i32** %557, align 8
  %559 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %560 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %559, i32 0, i32 10
  %561 = load %struct.TYPE_16__*, %struct.TYPE_16__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %561, i32 0, i32 6
  %563 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %564 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %563, i32 0, i32 10
  %565 = load %struct.TYPE_16__*, %struct.TYPE_16__** %564, align 8
  %566 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %565, i32 0, i32 5
  %567 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %568 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %567, i32 0, i32 10
  %569 = load %struct.TYPE_16__*, %struct.TYPE_16__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %569, i32 0, i32 4
  %571 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %572 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %571, i32 0, i32 10
  %573 = load %struct.TYPE_16__*, %struct.TYPE_16__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %573, i32 0, i32 3
  %575 = call i32 @wlc_phy_get_phyversion(i32* %558, i32* %562, i64* %566, i32* %570, i32* %574)
  %576 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %577 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %576, i32 0, i32 10
  %578 = load %struct.TYPE_16__*, %struct.TYPE_16__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %578, i32 0, i32 7
  %580 = load i32*, i32** %579, align 8
  %581 = call i8* @wlc_phy_get_encore(i32* %580)
  %582 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %583 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %582, i32 0, i32 10
  %584 = load %struct.TYPE_16__*, %struct.TYPE_16__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %584, i32 0, i32 9
  store i8* %581, i8** %585, align 8
  %586 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %587 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %586, i32 0, i32 10
  %588 = load %struct.TYPE_16__*, %struct.TYPE_16__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %588, i32 0, i32 7
  %590 = load i32*, i32** %589, align 8
  %591 = call i8* @wlc_phy_get_encore(i32* %590)
  %592 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %593 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %592, i32 0, i32 2
  %594 = load %struct.TYPE_14__*, %struct.TYPE_14__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %594, i32 0, i32 6
  store i8* %591, i8** %595, align 8
  %596 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %597 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %596, i32 0, i32 10
  %598 = load %struct.TYPE_16__*, %struct.TYPE_16__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %598, i32 0, i32 7
  %600 = load i32*, i32** %599, align 8
  %601 = call i32 @wlc_phy_get_coreflags(i32* %600)
  %602 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %603 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %602, i32 0, i32 10
  %604 = load %struct.TYPE_16__*, %struct.TYPE_16__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %604, i32 0, i32 8
  store i32 %601, i32* %605, align 8
  %606 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %607 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %606, i32 0, i32 10
  %608 = load %struct.TYPE_16__*, %struct.TYPE_16__** %607, align 8
  %609 = call i64 @BRCMS_ISNPHY(%struct.TYPE_16__* %608)
  %610 = icmp ne i64 %609, 0
  br i1 %610, label %611, label %621

611:                                              ; preds = %544
  %612 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %613 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %612, i32 0, i32 10
  %614 = load %struct.TYPE_16__*, %struct.TYPE_16__** %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %614, i32 0, i32 5
  %616 = load i64, i64* %615, align 8
  %617 = call i64 @NCONF_HAS(i64 %616)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %620

619:                                              ; preds = %611
  br label %652

620:                                              ; preds = %611
  br label %638

621:                                              ; preds = %544
  %622 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %623 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %622, i32 0, i32 10
  %624 = load %struct.TYPE_16__*, %struct.TYPE_16__** %623, align 8
  %625 = call i64 @BRCMS_ISLCNPHY(%struct.TYPE_16__* %624)
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %637

627:                                              ; preds = %621
  %628 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %629 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %628, i32 0, i32 10
  %630 = load %struct.TYPE_16__*, %struct.TYPE_16__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %630, i32 0, i32 5
  %632 = load i64, i64* %631, align 8
  %633 = call i64 @LCNCONF_HAS(i64 %632)
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %636

635:                                              ; preds = %627
  br label %652

636:                                              ; preds = %627
  br label %638

637:                                              ; preds = %621
  br label %638

638:                                              ; preds = %637, %636, %620
  %639 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %640 = load i32, i32* %8, align 4
  %641 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %642 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %641, i32 0, i32 10
  %643 = load %struct.TYPE_16__*, %struct.TYPE_16__** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %643, i32 0, i32 6
  %645 = load i32, i32* %644, align 8
  %646 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %647 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %646, i32 0, i32 10
  %648 = load %struct.TYPE_16__*, %struct.TYPE_16__** %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %648, i32 0, i32 5
  %650 = load i64, i64* %649, align 8
  %651 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %639, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %640, i32 %645, i64 %650)
  store i32 18, i32* %11, align 4
  br label %790

652:                                              ; preds = %635, %619
  %653 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %654 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %653, i32 0, i32 10
  %655 = load %struct.TYPE_16__*, %struct.TYPE_16__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %655, i32 0, i32 7
  %657 = load i32*, i32** %656, align 8
  %658 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %659 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %658, i32 0, i32 2
  %660 = load %struct.TYPE_14__*, %struct.TYPE_14__** %659, align 8
  %661 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %660, i32 0, i32 5
  store i32* %657, i32** %661, align 8
  %662 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %663 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %662, i32 0, i32 10
  %664 = load %struct.TYPE_16__*, %struct.TYPE_16__** %663, align 8
  %665 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %664, i32 0, i32 6
  %666 = load i32, i32* %665, align 8
  %667 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %668 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %667, i32 0, i32 2
  %669 = load %struct.TYPE_14__*, %struct.TYPE_14__** %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %669, i32 0, i32 4
  store i32 %666, i32* %670, align 8
  %671 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %672 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %671, i32 0, i32 10
  %673 = load %struct.TYPE_16__*, %struct.TYPE_16__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %673, i32 0, i32 5
  %675 = load i64, i64* %674, align 8
  %676 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %677 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %676, i32 0, i32 2
  %678 = load %struct.TYPE_14__*, %struct.TYPE_14__** %677, align 8
  %679 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %678, i32 0, i32 3
  store i64 %675, i64* %679, align 8
  %680 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %681 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %680, i32 0, i32 10
  %682 = load %struct.TYPE_16__*, %struct.TYPE_16__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %682, i32 0, i32 4
  %684 = load i32, i32* %683, align 8
  %685 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %686 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %685, i32 0, i32 2
  %687 = load %struct.TYPE_14__*, %struct.TYPE_14__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %687, i32 0, i32 2
  store i32 %684, i32* %688, align 8
  %689 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %690 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %689, i32 0, i32 10
  %691 = load %struct.TYPE_16__*, %struct.TYPE_16__** %690, align 8
  %692 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %691, i32 0, i32 3
  %693 = load i32, i32* %692, align 4
  %694 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %695 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %694, i32 0, i32 2
  %696 = load %struct.TYPE_14__*, %struct.TYPE_14__** %695, align 8
  %697 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %696, i32 0, i32 1
  store i32 %693, i32* %697, align 4
  %698 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %699 = load i32, i32* %8, align 4
  %700 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %701 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %700, i32 0, i32 2
  %702 = load %struct.TYPE_14__*, %struct.TYPE_14__** %701, align 8
  %703 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %702, i32 0, i32 4
  %704 = load i32, i32* %703, align 8
  %705 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %706 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %705, i32 0, i32 2
  %707 = load %struct.TYPE_14__*, %struct.TYPE_14__** %706, align 8
  %708 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %707, i32 0, i32 3
  %709 = load i64, i64* %708, align 8
  %710 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %711 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %710, i32 0, i32 2
  %712 = load %struct.TYPE_14__*, %struct.TYPE_14__** %711, align 8
  %713 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %712, i32 0, i32 2
  %714 = load i32, i32* %713, align 8
  %715 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %716 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %715, i32 0, i32 2
  %717 = load %struct.TYPE_14__*, %struct.TYPE_14__** %716, align 8
  %718 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 4
  %720 = call i32 (%struct.bcma_device*, i8*, i32, i32, i64, ...) @brcms_dbg_info(%struct.bcma_device* %698, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %699, i32 %704, i64 %709, i32 %714, i32 %719)
  %721 = load i32, i32* @APHY_CWMIN, align 4
  %722 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %723 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %722, i32 0, i32 10
  %724 = load %struct.TYPE_16__*, %struct.TYPE_16__** %723, align 8
  %725 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %724, i32 0, i32 2
  store i32 %721, i32* %725, align 8
  %726 = load i32, i32* @PHY_CWMAX, align 4
  %727 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %728 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %727, i32 0, i32 10
  %729 = load %struct.TYPE_16__*, %struct.TYPE_16__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %729, i32 0, i32 1
  store i32 %726, i32* %730, align 4
  %731 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %732 = load i32, i32* %12, align 4
  %733 = load i32, i32* %13, align 4
  %734 = call i32 @brcms_b_attach_dmapio(%struct.brcms_c_info* %731, i32 %732, i32 %733)
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %737, label %736

736:                                              ; preds = %652
  store i32 19, i32* %11, align 4
  br label %790

737:                                              ; preds = %652
  br label %738

738:                                              ; preds = %737
  %739 = load i32, i32* %12, align 4
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %12, align 4
  br label %418

741:                                              ; preds = %418
  %742 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %743 = call i32 @brcms_c_coredisable(%struct.brcms_hardware* %742)
  %744 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %745 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %744, i32 0, i32 8
  %746 = load %struct.bcma_device*, %struct.bcma_device** %745, align 8
  %747 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %746, i32 0, i32 0
  %748 = load %struct.TYPE_15__*, %struct.TYPE_15__** %747, align 8
  %749 = call i32 @bcma_host_pci_down(%struct.TYPE_15__* %748)
  %750 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %751 = load i32, i32* @OFF, align 4
  %752 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %750, i32 %751)
  %753 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %754 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %755 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %754, i32 0, i32 9
  %756 = load i32, i32* %755, align 8
  %757 = call i32 @brcms_c_get_macaddr(%struct.brcms_hardware* %753, i32 %756)
  %758 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %759 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %758, i32 0, i32 9
  %760 = load i32, i32* %759, align 8
  %761 = call i64 @is_broadcast_ether_addr(i32 %760)
  %762 = icmp ne i64 %761, 0
  br i1 %762, label %769, label %763

763:                                              ; preds = %741
  %764 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %765 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %764, i32 0, i32 9
  %766 = load i32, i32* %765, align 8
  %767 = call i64 @is_zero_ether_addr(i32 %766)
  %768 = icmp ne i64 %767, 0
  br i1 %768, label %769, label %773

769:                                              ; preds = %763, %741
  %770 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %771 = load i32, i32* %8, align 4
  %772 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %770, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %771)
  store i32 22, i32* %11, align 4
  br label %790

773:                                              ; preds = %763
  %774 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %775 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %774, i32 0, i32 8
  %776 = load %struct.bcma_device*, %struct.bcma_device** %775, align 8
  %777 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %778 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %777, i32 0, i32 3
  %779 = load i64, i64* %778, align 8
  %780 = trunc i64 %779 to i32
  %781 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %782 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %781, i32 0, i32 6
  %783 = load i32, i32* %782, align 4
  %784 = load %struct.brcms_hardware*, %struct.brcms_hardware** %10, align 8
  %785 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %784, i32 0, i32 7
  %786 = load i32*, i32** %785, align 8
  %787 = call i64 @ai_get_boardtype(i32* %786)
  %788 = call i32 (%struct.bcma_device*, i8*, i32, i32, i64, ...) @brcms_dbg_info(%struct.bcma_device* %776, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %780, i32 %783, i64 %787)
  %789 = load i32, i32* %11, align 4
  store i32 %789, i32* %5, align 4
  br label %796

790:                                              ; preds = %769, %736, %638, %540, %416, %346, %192, %171, %156, %103, %95
  %791 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  %792 = load i32, i32* %8, align 4
  %793 = load i32, i32* %11, align 4
  %794 = call i32 (%struct.wiphy*, i8*, i32, ...) @wiphy_err(%struct.wiphy* %791, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %792, i32 %793)
  %795 = load i32, i32* %11, align 4
  store i32 %795, i32* %5, align 4
  br label %796

796:                                              ; preds = %790, %773
  %797 = load i32, i32* %5, align 4
  ret i32 %797
}

declare dso_local i32 @brcms_dbg_info(%struct.bcma_device*, i8*, i32, i32, i64, ...) #1

declare dso_local i32 @brcms_b_info_init(%struct.brcms_hardware*) #1

declare dso_local i32* @ai_attach(%struct.TYPE_15__*) #1

declare dso_local i32 @wiphy_err(%struct.wiphy*, i8*, i32, ...) #1

declare dso_local i32 @brcms_c_chipmatch(%struct.bcma_device*) #1

declare dso_local i32 @brcms_c_isgoodchip(%struct.brcms_hardware*) #1

declare dso_local i32 @ai_clkctl_init(i32*) #1

declare dso_local i32 @brcms_b_clkctl_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_corereset(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_b_validate_chip_access(%struct.brcms_hardware*) #1

declare dso_local i32 @brcms_c_validboardtype(%struct.brcms_hardware*) #1

declare dso_local i64 @ai_get_boardtype(i32*) #1

declare dso_local i32 @brcms_b_pllreq(%struct.brcms_hardware*, i32, i32) #1

declare dso_local i64 @ai_get_chip_id(i32*) #1

declare dso_local i32* @wlc_phy_shim_attach(%struct.brcms_hardware*, i32, %struct.brcms_c_info*) #1

declare dso_local i32 @ai_get_chiprev(i32*) #1

declare dso_local i32 @ai_get_chippkg(i32*) #1

declare dso_local i32 @wlc_phy_shared_attach(%struct.shared_phy_params*) #1

declare dso_local i32 @brcms_c_setxband(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local i32* @wlc_phy_attach(i32, %struct.bcma_device*, i8*, %struct.wiphy*) #1

declare dso_local i32 @wlc_phy_machwcap_set(i32*, i32) #1

declare dso_local i32 @wlc_phy_get_phyversion(i32*, i32*, i64*, i32*, i32*) #1

declare dso_local i8* @wlc_phy_get_encore(i32*) #1

declare dso_local i32 @wlc_phy_get_coreflags(i32*) #1

declare dso_local i64 @BRCMS_ISNPHY(%struct.TYPE_16__*) #1

declare dso_local i64 @NCONF_HAS(i64) #1

declare dso_local i64 @BRCMS_ISLCNPHY(%struct.TYPE_16__*) #1

declare dso_local i64 @LCNCONF_HAS(i64) #1

declare dso_local i32 @brcms_b_attach_dmapio(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i32 @brcms_c_coredisable(%struct.brcms_hardware*) #1

declare dso_local i32 @bcma_host_pci_down(%struct.TYPE_15__*) #1

declare dso_local i32 @brcms_b_xtal(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_c_get_macaddr(%struct.brcms_hardware*, i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
