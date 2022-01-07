; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_radio2057_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_radio2057_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.chan_info_nphy_radio2057 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chan_info_nphy_radio2057_rev5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RADIO_2057_VCOCAL_COUNTVAL0 = common dso_local global i32 0, align 4
@RADIO_2057_VCOCAL_COUNTVAL1 = common dso_local global i32 0, align 4
@RADIO_2057_RFPLL_REFMASTER_SPAREXTALSIZE = common dso_local global i32 0, align 4
@RADIO_2057_RFPLL_LOOPFILTER_R1 = common dso_local global i32 0, align 4
@RADIO_2057_RFPLL_LOOPFILTER_C2 = common dso_local global i32 0, align 4
@RADIO_2057_RFPLL_LOOPFILTER_C1 = common dso_local global i32 0, align 4
@RADIO_2057_CP_KPD_IDAC = common dso_local global i32 0, align 4
@RADIO_2057_RFPLL_MMD0 = common dso_local global i32 0, align 4
@RADIO_2057_RFPLL_MMD1 = common dso_local global i32 0, align 4
@RADIO_2057_VCOBUF_TUNE = common dso_local global i32 0, align 4
@RADIO_2057_LOGEN_MX2G_TUNE = common dso_local global i32 0, align 4
@RADIO_2057_LOGEN_INDBUF2G_TUNE = common dso_local global i32 0, align 4
@RADIO_2057_TXMIX2G_TUNE_BOOST_PU_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_PAD2G_TUNE_PUS_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_LNA2G_TUNE_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_TXMIX2G_TUNE_BOOST_PU_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_PAD2G_TUNE_PUS_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_LNA2G_TUNE_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_LOGEN_MX5G_TUNE = common dso_local global i32 0, align 4
@RADIO_2057_LOGEN_INDBUF5G_TUNE = common dso_local global i32 0, align 4
@RADIO_2057_PGA_BOOST_TUNE_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_TXMIX5G_BOOST_TUNE_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_PAD5G_TUNE_MISC_PUS_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_LNA5G_TUNE_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_PGA_BOOST_TUNE_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_TXMIX5G_BOOST_TUNE_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_PAD5G_TUNE_MISC_PUS_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_LNA5G_TUNE_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057 = common dso_local global i32 0, align 4
@CORE = common dso_local global i32 0, align 4
@TXMIX2G_TUNE_BOOST_PU = common dso_local global i32 0, align 4
@PAD2G_TUNE_PUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057_rev5*)* @wlc_phy_chanspec_radio2057_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_chanspec_radio2057_setup(%struct.brcms_phy* %0, %struct.chan_info_nphy_radio2057* %1, %struct.chan_info_nphy_radio2057_rev5* %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca %struct.chan_info_nphy_radio2057*, align 8
  %6 = alloca %struct.chan_info_nphy_radio2057_rev5*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store %struct.chan_info_nphy_radio2057* %1, %struct.chan_info_nphy_radio2057** %5, align 8
  store %struct.chan_info_nphy_radio2057_rev5* %2, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %124

15:                                               ; preds = %3
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %17 = load i32, i32* @RADIO_2057_VCOCAL_COUNTVAL0, align 4
  %18 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %19 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @write_radio_reg(%struct.brcms_phy* %16, i32 %17, i32 %20)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %23 = load i32, i32* @RADIO_2057_VCOCAL_COUNTVAL1, align 4
  %24 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %25 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @write_radio_reg(%struct.brcms_phy* %22, i32 %23, i32 %26)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %29 = load i32, i32* @RADIO_2057_RFPLL_REFMASTER_SPAREXTALSIZE, align 4
  %30 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %31 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @write_radio_reg(%struct.brcms_phy* %28, i32 %29, i32 %32)
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %35 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_R1, align 4
  %36 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %37 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_radio_reg(%struct.brcms_phy* %34, i32 %35, i32 %38)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %41 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C2, align 4
  %42 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %43 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @write_radio_reg(%struct.brcms_phy* %40, i32 %41, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %47 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C1, align 4
  %48 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %49 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write_radio_reg(%struct.brcms_phy* %46, i32 %47, i32 %50)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %53 = load i32, i32* @RADIO_2057_CP_KPD_IDAC, align 4
  %54 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %55 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @write_radio_reg(%struct.brcms_phy* %52, i32 %53, i32 %56)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %59 = load i32, i32* @RADIO_2057_RFPLL_MMD0, align 4
  %60 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %61 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @write_radio_reg(%struct.brcms_phy* %58, i32 %59, i32 %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %65 = load i32, i32* @RADIO_2057_RFPLL_MMD1, align 4
  %66 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %67 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write_radio_reg(%struct.brcms_phy* %64, i32 %65, i32 %68)
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %71 = load i32, i32* @RADIO_2057_VCOBUF_TUNE, align 4
  %72 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %73 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @write_radio_reg(%struct.brcms_phy* %70, i32 %71, i32 %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %77 = load i32, i32* @RADIO_2057_LOGEN_MX2G_TUNE, align 4
  %78 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %79 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @write_radio_reg(%struct.brcms_phy* %76, i32 %77, i32 %80)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %83 = load i32, i32* @RADIO_2057_LOGEN_INDBUF2G_TUNE, align 4
  %84 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %85 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @write_radio_reg(%struct.brcms_phy* %82, i32 %83, i32 %86)
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %89 = load i32, i32* @RADIO_2057_TXMIX2G_TUNE_BOOST_PU_CORE0, align 4
  %90 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %91 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @write_radio_reg(%struct.brcms_phy* %88, i32 %89, i32 %92)
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %95 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE0, align 4
  %96 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %97 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @write_radio_reg(%struct.brcms_phy* %94, i32 %95, i32 %98)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %101 = load i32, i32* @RADIO_2057_LNA2G_TUNE_CORE0, align 4
  %102 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %103 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %102, i32 0, i32 14
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @write_radio_reg(%struct.brcms_phy* %100, i32 %101, i32 %104)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %107 = load i32, i32* @RADIO_2057_TXMIX2G_TUNE_BOOST_PU_CORE1, align 4
  %108 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %109 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %108, i32 0, i32 15
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @write_radio_reg(%struct.brcms_phy* %106, i32 %107, i32 %110)
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %113 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE1, align 4
  %114 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %115 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %114, i32 0, i32 16
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @write_radio_reg(%struct.brcms_phy* %112, i32 %113, i32 %116)
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %119 = load i32, i32* @RADIO_2057_LNA2G_TUNE_CORE1, align 4
  %120 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %6, align 8
  %121 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %120, i32 0, i32 17
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @write_radio_reg(%struct.brcms_phy* %118, i32 %119, i32 %122)
  br label %293

124:                                              ; preds = %3
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %126 = load i32, i32* @RADIO_2057_VCOCAL_COUNTVAL0, align 4
  %127 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %128 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @write_radio_reg(%struct.brcms_phy* %125, i32 %126, i32 %129)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %132 = load i32, i32* @RADIO_2057_VCOCAL_COUNTVAL1, align 4
  %133 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %134 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @write_radio_reg(%struct.brcms_phy* %131, i32 %132, i32 %135)
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %138 = load i32, i32* @RADIO_2057_RFPLL_REFMASTER_SPAREXTALSIZE, align 4
  %139 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %140 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @write_radio_reg(%struct.brcms_phy* %137, i32 %138, i32 %141)
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %144 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_R1, align 4
  %145 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %146 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @write_radio_reg(%struct.brcms_phy* %143, i32 %144, i32 %147)
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %150 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C2, align 4
  %151 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %152 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @write_radio_reg(%struct.brcms_phy* %149, i32 %150, i32 %153)
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %156 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C1, align 4
  %157 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %158 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @write_radio_reg(%struct.brcms_phy* %155, i32 %156, i32 %159)
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %162 = load i32, i32* @RADIO_2057_CP_KPD_IDAC, align 4
  %163 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %164 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @write_radio_reg(%struct.brcms_phy* %161, i32 %162, i32 %165)
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %168 = load i32, i32* @RADIO_2057_RFPLL_MMD0, align 4
  %169 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %170 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @write_radio_reg(%struct.brcms_phy* %167, i32 %168, i32 %171)
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %174 = load i32, i32* @RADIO_2057_RFPLL_MMD1, align 4
  %175 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %176 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @write_radio_reg(%struct.brcms_phy* %173, i32 %174, i32 %177)
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %180 = load i32, i32* @RADIO_2057_VCOBUF_TUNE, align 4
  %181 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %182 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @write_radio_reg(%struct.brcms_phy* %179, i32 %180, i32 %183)
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %186 = load i32, i32* @RADIO_2057_LOGEN_MX2G_TUNE, align 4
  %187 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %188 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @write_radio_reg(%struct.brcms_phy* %185, i32 %186, i32 %189)
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %192 = load i32, i32* @RADIO_2057_LOGEN_MX5G_TUNE, align 4
  %193 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %194 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @write_radio_reg(%struct.brcms_phy* %191, i32 %192, i32 %195)
  %197 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %198 = load i32, i32* @RADIO_2057_LOGEN_INDBUF2G_TUNE, align 4
  %199 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %200 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %199, i32 0, i32 12
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @write_radio_reg(%struct.brcms_phy* %197, i32 %198, i32 %201)
  %203 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %204 = load i32, i32* @RADIO_2057_LOGEN_INDBUF5G_TUNE, align 4
  %205 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %206 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %205, i32 0, i32 13
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @write_radio_reg(%struct.brcms_phy* %203, i32 %204, i32 %207)
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %210 = load i32, i32* @RADIO_2057_TXMIX2G_TUNE_BOOST_PU_CORE0, align 4
  %211 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %212 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %211, i32 0, i32 14
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @write_radio_reg(%struct.brcms_phy* %209, i32 %210, i32 %213)
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %216 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE0, align 4
  %217 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %218 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %217, i32 0, i32 15
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @write_radio_reg(%struct.brcms_phy* %215, i32 %216, i32 %219)
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %222 = load i32, i32* @RADIO_2057_PGA_BOOST_TUNE_CORE0, align 4
  %223 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %224 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %223, i32 0, i32 16
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @write_radio_reg(%struct.brcms_phy* %221, i32 %222, i32 %225)
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %228 = load i32, i32* @RADIO_2057_TXMIX5G_BOOST_TUNE_CORE0, align 4
  %229 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %230 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %229, i32 0, i32 17
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @write_radio_reg(%struct.brcms_phy* %227, i32 %228, i32 %231)
  %233 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %234 = load i32, i32* @RADIO_2057_PAD5G_TUNE_MISC_PUS_CORE0, align 4
  %235 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %236 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %235, i32 0, i32 18
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @write_radio_reg(%struct.brcms_phy* %233, i32 %234, i32 %237)
  %239 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %240 = load i32, i32* @RADIO_2057_LNA2G_TUNE_CORE0, align 4
  %241 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %242 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %241, i32 0, i32 19
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @write_radio_reg(%struct.brcms_phy* %239, i32 %240, i32 %243)
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %246 = load i32, i32* @RADIO_2057_LNA5G_TUNE_CORE0, align 4
  %247 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %248 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %247, i32 0, i32 20
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @write_radio_reg(%struct.brcms_phy* %245, i32 %246, i32 %249)
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %252 = load i32, i32* @RADIO_2057_TXMIX2G_TUNE_BOOST_PU_CORE1, align 4
  %253 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %254 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %253, i32 0, i32 21
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @write_radio_reg(%struct.brcms_phy* %251, i32 %252, i32 %255)
  %257 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %258 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE1, align 4
  %259 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %260 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %259, i32 0, i32 22
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @write_radio_reg(%struct.brcms_phy* %257, i32 %258, i32 %261)
  %263 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %264 = load i32, i32* @RADIO_2057_PGA_BOOST_TUNE_CORE1, align 4
  %265 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %266 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %265, i32 0, i32 23
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @write_radio_reg(%struct.brcms_phy* %263, i32 %264, i32 %267)
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %270 = load i32, i32* @RADIO_2057_TXMIX5G_BOOST_TUNE_CORE1, align 4
  %271 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %272 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %271, i32 0, i32 24
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @write_radio_reg(%struct.brcms_phy* %269, i32 %270, i32 %273)
  %275 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %276 = load i32, i32* @RADIO_2057_PAD5G_TUNE_MISC_PUS_CORE1, align 4
  %277 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %278 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %277, i32 0, i32 25
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @write_radio_reg(%struct.brcms_phy* %275, i32 %276, i32 %279)
  %281 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %282 = load i32, i32* @RADIO_2057_LNA2G_TUNE_CORE1, align 4
  %283 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %284 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %283, i32 0, i32 26
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @write_radio_reg(%struct.brcms_phy* %281, i32 %282, i32 %285)
  %287 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %288 = load i32, i32* @RADIO_2057_LNA5G_TUNE_CORE1, align 4
  %289 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %5, align 8
  %290 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %289, i32 0, i32 27
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @write_radio_reg(%struct.brcms_phy* %287, i32 %288, i32 %291)
  br label %293

293:                                              ; preds = %124, %15
  %294 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %295 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp sle i32 %297, 4
  br i1 %298, label %305, label %299

299:                                              ; preds = %293
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %301 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 6
  br i1 %304, label %305, label %338

305:                                              ; preds = %299, %293
  %306 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %307 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i64 @CHSPEC_IS2G(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %305
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %313 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_R1, align 4
  %314 = call i32 @write_radio_reg(%struct.brcms_phy* %312, i32 %313, i32 63)
  %315 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %316 = load i32, i32* @RADIO_2057_CP_KPD_IDAC, align 4
  %317 = call i32 @write_radio_reg(%struct.brcms_phy* %315, i32 %316, i32 63)
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %319 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C1, align 4
  %320 = call i32 @write_radio_reg(%struct.brcms_phy* %318, i32 %319, i32 8)
  %321 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %322 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C2, align 4
  %323 = call i32 @write_radio_reg(%struct.brcms_phy* %321, i32 %322, i32 8)
  br label %337

324:                                              ; preds = %305
  %325 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %326 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_R1, align 4
  %327 = call i32 @write_radio_reg(%struct.brcms_phy* %325, i32 %326, i32 31)
  %328 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %329 = load i32, i32* @RADIO_2057_CP_KPD_IDAC, align 4
  %330 = call i32 @write_radio_reg(%struct.brcms_phy* %328, i32 %329, i32 63)
  %331 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %332 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C1, align 4
  %333 = call i32 @write_radio_reg(%struct.brcms_phy* %331, i32 %332, i32 8)
  %334 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %335 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C2, align 4
  %336 = call i32 @write_radio_reg(%struct.brcms_phy* %334, i32 %335, i32 8)
  br label %337

337:                                              ; preds = %324, %311
  br label %390

338:                                              ; preds = %299
  %339 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %340 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 5
  br i1 %343, label %356, label %344

344:                                              ; preds = %338
  %345 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %346 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 7
  br i1 %349, label %356, label %350

350:                                              ; preds = %344
  %351 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %352 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = icmp eq i32 %354, 8
  br i1 %355, label %356, label %389

356:                                              ; preds = %350, %344, %338
  %357 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %358 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = call i64 @CHSPEC_IS2G(i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %356
  %363 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %364 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_R1, align 4
  %365 = call i32 @write_radio_reg(%struct.brcms_phy* %363, i32 %364, i32 27)
  %366 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %367 = load i32, i32* @RADIO_2057_CP_KPD_IDAC, align 4
  %368 = call i32 @write_radio_reg(%struct.brcms_phy* %366, i32 %367, i32 48)
  %369 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %370 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C1, align 4
  %371 = call i32 @write_radio_reg(%struct.brcms_phy* %369, i32 %370, i32 10)
  %372 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %373 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C2, align 4
  %374 = call i32 @write_radio_reg(%struct.brcms_phy* %372, i32 %373, i32 10)
  br label %388

375:                                              ; preds = %356
  %376 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %377 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_R1, align 4
  %378 = call i32 @write_radio_reg(%struct.brcms_phy* %376, i32 %377, i32 31)
  %379 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %380 = load i32, i32* @RADIO_2057_CP_KPD_IDAC, align 4
  %381 = call i32 @write_radio_reg(%struct.brcms_phy* %379, i32 %380, i32 63)
  %382 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %383 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C1, align 4
  %384 = call i32 @write_radio_reg(%struct.brcms_phy* %382, i32 %383, i32 8)
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %386 = load i32, i32* @RADIO_2057_RFPLL_LOOPFILTER_C2, align 4
  %387 = call i32 @write_radio_reg(%struct.brcms_phy* %385, i32 %386, i32 8)
  br label %388

388:                                              ; preds = %375, %362
  br label %389

389:                                              ; preds = %388, %350
  br label %390

390:                                              ; preds = %389, %337
  %391 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %392 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i64 @CHSPEC_IS2G(i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %454

396:                                              ; preds = %390
  %397 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %398 = call i64 @PHY_IPA(%struct.brcms_phy* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %415

400:                                              ; preds = %396
  %401 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %402 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, 3
  br i1 %405, label %406, label %407

406:                                              ; preds = %400
  store i32 107, i32* %8, align 4
  br label %407

407:                                              ; preds = %406, %400
  %408 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %409 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 5
  br i1 %412, label %413, label %414

413:                                              ; preds = %407
  store i32 115, i32* %9, align 4
  br label %414

414:                                              ; preds = %413, %407
  br label %423

415:                                              ; preds = %396
  %416 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %417 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 5
  br i1 %420, label %421, label %422

421:                                              ; preds = %415
  store i32 3, i32* %9, align 4
  store i32 97, i32* %8, align 4
  br label %422

422:                                              ; preds = %421, %415
  br label %423

423:                                              ; preds = %422, %414
  store i32 0, i32* %7, align 4
  br label %424

424:                                              ; preds = %450, %423
  %425 = load i32, i32* %7, align 4
  %426 = icmp sle i32 %425, 1
  br i1 %426, label %427, label %453

427:                                              ; preds = %424
  %428 = load i32, i32* %8, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %438

430:                                              ; preds = %427
  %431 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %432 = load i32, i32* @RADIO_2057, align 4
  %433 = load i32, i32* @CORE, align 4
  %434 = load i32, i32* %7, align 4
  %435 = load i32, i32* @TXMIX2G_TUNE_BOOST_PU, align 4
  %436 = load i32, i32* %8, align 4
  %437 = call i32 @WRITE_RADIO_REG4(%struct.brcms_phy* %431, i32 %432, i32 %433, i32 %434, i32 %435, i32 %436)
  br label %438

438:                                              ; preds = %430, %427
  %439 = load i32, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %449

441:                                              ; preds = %438
  %442 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %443 = load i32, i32* @RADIO_2057, align 4
  %444 = load i32, i32* @CORE, align 4
  %445 = load i32, i32* %7, align 4
  %446 = load i32, i32* @PAD2G_TUNE_PUS, align 4
  %447 = load i32, i32* %9, align 4
  %448 = call i32 @WRITE_RADIO_REG4(%struct.brcms_phy* %442, i32 %443, i32 %444, i32 %445, i32 %446, i32 %447)
  br label %449

449:                                              ; preds = %441, %438
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %7, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %7, align 4
  br label %424

453:                                              ; preds = %424
  br label %454

454:                                              ; preds = %453, %390
  %455 = call i32 @udelay(i32 50)
  %456 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %457 = call i32 @wlc_phy_radio205x_vcocal_nphy(%struct.brcms_phy* %456)
  ret void
}

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i32 @WRITE_RADIO_REG4(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_radio205x_vcocal_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
