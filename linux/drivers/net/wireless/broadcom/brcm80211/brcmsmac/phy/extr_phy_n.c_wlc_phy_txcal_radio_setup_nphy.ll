; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_radio_setup_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_radio_setup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i8**, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@TX_SSI_MASTER = common dso_local global i32 0, align 4
@IQCAL_VCM_HG = common dso_local global i32 0, align 4
@IQCAL_IDAC = common dso_local global i32 0, align 4
@TSSI_VCM = common dso_local global i32 0, align 4
@TX_SSI_MUX = common dso_local global i32 0, align 4
@TSSIA = common dso_local global i32 0, align 4
@TSSIG = common dso_local global i32 0, align 4
@TSSI_MISC1 = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_SSI_MASTER = common dso_local global i32 0, align 4
@RADIO_2056_TX_IQCAL_VCM_HG = common dso_local global i32 0, align 4
@RADIO_2056_TX_IQCAL_IDAC = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_VCM = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_AMP_DET = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSIA = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSIG = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_MISC1 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_MISC2 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_MISC3 = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TXRF_IQCAL1 = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TXRF_IQCAL2 = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TXRF_IQCAL1 = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TXRF_IQCAL2 = common dso_local global i32 0, align 4
@RADIO_2055_PWRDET_RXTX_CORE1 = common dso_local global i32 0, align 4
@RADIO_2055_PWRDET_RXTX_CORE2 = common dso_local global i32 0, align 4
@NPHY_BandControl_currentBand = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TX_BB_MXGM = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TX_BB_MXGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txcal_radio_setup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txcal_radio_setup_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @NREV_GE(i32 %8, i32 7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %296

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %292, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %295

15:                                               ; preds = %12
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = load i32, i32* @RADIO_2057, align 4
  %18 = load i32, i32* @TX, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TX_SSI_MASTER, align 4
  %21 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 11
  %27 = add nsw i32 %26, 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %24, i64 %28
  store i8* %21, i8** %29, align 8
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = load i32, i32* @RADIO_2057, align 4
  %32 = load i32, i32* @TX, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IQCAL_VCM_HG, align 4
  %35 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %39, 11
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %38, i64 %42
  store i8* %35, i8** %43, align 8
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %45 = load i32, i32* @RADIO_2057, align 4
  %46 = load i32, i32* @TX, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @IQCAL_IDAC, align 4
  %49 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = mul nsw i32 %53, 11
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %52, i64 %56
  store i8* %49, i8** %57, align 8
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = load i32, i32* @RADIO_2057, align 4
  %60 = load i32, i32* @TX, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TSSI_VCM, align 4
  %63 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 %67, 11
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %66, i64 %70
  store i8* %63, i8** %71, align 8
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = mul nsw i32 %75, 11
  %77 = add nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %74, i64 %78
  store i8* null, i8** %79, align 8
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = load i32, i32* @RADIO_2057, align 4
  %82 = load i32, i32* @TX, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @TX_SSI_MUX, align 4
  %85 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = mul nsw i32 %89, 11
  %91 = add nsw i32 %90, 5
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %88, i64 %92
  store i8* %85, i8** %93, align 8
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 5
  br i1 %98, label %99, label %114

99:                                               ; preds = %15
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %101 = load i32, i32* @RADIO_2057, align 4
  %102 = load i32, i32* @TX, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @TSSIA, align 4
  %105 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = mul nsw i32 %109, 11
  %111 = add nsw i32 %110, 6
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %108, i64 %112
  store i8* %105, i8** %113, align 8
  br label %114

114:                                              ; preds = %99, %15
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %116 = load i32, i32* @RADIO_2057, align 4
  %117 = load i32, i32* @TX, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @TSSIG, align 4
  %120 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %122 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = mul nsw i32 %124, 11
  %126 = add nsw i32 %125, 7
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %123, i64 %127
  store i8* %120, i8** %128, align 8
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %130 = load i32, i32* @RADIO_2057, align 4
  %131 = load i32, i32* @TX, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @TSSI_MISC1, align 4
  %134 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %136 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %135, i32 0, i32 1
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 %138, 11
  %140 = add nsw i32 %139, 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %137, i64 %141
  store i8* %134, i8** %142, align 8
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @CHSPEC_IS5G(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %216

148:                                              ; preds = %114
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %150 = load i32, i32* @RADIO_2057, align 4
  %151 = load i32, i32* @TX, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @TX_SSI_MASTER, align 4
  %154 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 10)
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %156 = load i32, i32* @RADIO_2057, align 4
  %157 = load i32, i32* @TX, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @IQCAL_VCM_HG, align 4
  %160 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 67)
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %162 = load i32, i32* @RADIO_2057, align 4
  %163 = load i32, i32* @TX, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @IQCAL_IDAC, align 4
  %166 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 85)
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %168 = load i32, i32* @RADIO_2057, align 4
  %169 = load i32, i32* @TX, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @TSSI_VCM, align 4
  %172 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 0)
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %174 = load i32, i32* @RADIO_2057, align 4
  %175 = load i32, i32* @TX, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @TSSIG, align 4
  %178 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 0)
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %180 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %209

183:                                              ; preds = %148
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %185 = load i32, i32* @RADIO_2057, align 4
  %186 = load i32, i32* @TX, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @TX_SSI_MUX, align 4
  %189 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 4)
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %183
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %196 = load i32, i32* @RADIO_2057, align 4
  %197 = load i32, i32* @TX, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @TSSIA, align 4
  %200 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 49)
  br label %208

201:                                              ; preds = %183
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %203 = load i32, i32* @RADIO_2057, align 4
  %204 = load i32, i32* @TX, align 4
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @TSSIA, align 4
  %207 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 33)
  br label %208

208:                                              ; preds = %201, %194
  br label %209

209:                                              ; preds = %208, %148
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %211 = load i32, i32* @RADIO_2057, align 4
  %212 = load i32, i32* @TX, align 4
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* @TSSI_MISC1, align 4
  %215 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 0)
  br label %291

216:                                              ; preds = %114
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %218 = load i32, i32* @RADIO_2057, align 4
  %219 = load i32, i32* @TX, align 4
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @TX_SSI_MASTER, align 4
  %222 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 6)
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %224 = load i32, i32* @RADIO_2057, align 4
  %225 = load i32, i32* @TX, align 4
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @IQCAL_VCM_HG, align 4
  %228 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 67)
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %230 = load i32, i32* @RADIO_2057, align 4
  %231 = load i32, i32* @TX, align 4
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* @IQCAL_IDAC, align 4
  %234 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 85)
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = load i32, i32* @RADIO_2057, align 4
  %237 = load i32, i32* @TX, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @TSSI_VCM, align 4
  %240 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 0)
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %242 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 5
  br i1 %245, label %246, label %253

246:                                              ; preds = %216
  %247 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %248 = load i32, i32* @RADIO_2057, align 4
  %249 = load i32, i32* @TX, align 4
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* @TSSIA, align 4
  %252 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 0)
  br label %253

253:                                              ; preds = %246, %216
  %254 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %255 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %284

258:                                              ; preds = %253
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %260 = load i32, i32* @RADIO_2057, align 4
  %261 = load i32, i32* @TX, align 4
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @TX_SSI_MUX, align 4
  %264 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 6)
  %265 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %266 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %258
  %270 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %271 = load i32, i32* @RADIO_2057, align 4
  %272 = load i32, i32* @TX, align 4
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @TSSIG, align 4
  %275 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 49)
  br label %283

276:                                              ; preds = %258
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = load i32, i32* @RADIO_2057, align 4
  %279 = load i32, i32* @TX, align 4
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* @TSSIG, align 4
  %282 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 33)
  br label %283

283:                                              ; preds = %276, %269
  br label %284

284:                                              ; preds = %283, %253
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = load i32, i32* @RADIO_2057, align 4
  %287 = load i32, i32* @TX, align 4
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* @TSSI_MISC1, align 4
  %290 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %285, i32 %286, i32 %287, i32 %288, i32 %289, i32 0)
  br label %291

291:                                              ; preds = %284, %209
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %4, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %4, align 4
  br label %12

295:                                              ; preds = %12
  br label %725

296:                                              ; preds = %1
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %298 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i64 @NREV_GE(i32 %300, i32 3)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %628

303:                                              ; preds = %296
  store i32 0, i32* %4, align 4
  br label %304

304:                                              ; preds = %624, %303
  %305 = load i32, i32* %4, align 4
  %306 = icmp sle i32 %305, 1
  br i1 %306, label %307, label %627

307:                                              ; preds = %304
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @PHY_CORE_0, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %307
  %312 = load i32, i32* @RADIO_2056_TX0, align 4
  br label %315

313:                                              ; preds = %307
  %314 = load i32, i32* @RADIO_2056_TX1, align 4
  br label %315

315:                                              ; preds = %313, %311
  %316 = phi i32 [ %312, %311 ], [ %314, %313 ]
  store i32 %316, i32* %3, align 4
  %317 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %318 = load i32, i32* @RADIO_2056_TX_TX_SSI_MASTER, align 4
  %319 = load i32, i32* %3, align 4
  %320 = or i32 %318, %319
  %321 = call i8* @read_radio_reg(%struct.brcms_phy* %317, i32 %320)
  %322 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %323 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %322, i32 0, i32 1
  %324 = load i8**, i8*** %323, align 8
  %325 = load i32, i32* %4, align 4
  %326 = mul nsw i32 %325, 11
  %327 = add nsw i32 %326, 0
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8*, i8** %324, i64 %328
  store i8* %321, i8** %329, align 8
  %330 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %331 = load i32, i32* @RADIO_2056_TX_IQCAL_VCM_HG, align 4
  %332 = load i32, i32* %3, align 4
  %333 = or i32 %331, %332
  %334 = call i8* @read_radio_reg(%struct.brcms_phy* %330, i32 %333)
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %336 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %335, i32 0, i32 1
  %337 = load i8**, i8*** %336, align 8
  %338 = load i32, i32* %4, align 4
  %339 = mul nsw i32 %338, 11
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %337, i64 %341
  store i8* %334, i8** %342, align 8
  %343 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %344 = load i32, i32* @RADIO_2056_TX_IQCAL_IDAC, align 4
  %345 = load i32, i32* %3, align 4
  %346 = or i32 %344, %345
  %347 = call i8* @read_radio_reg(%struct.brcms_phy* %343, i32 %346)
  %348 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %349 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %348, i32 0, i32 1
  %350 = load i8**, i8*** %349, align 8
  %351 = load i32, i32* %4, align 4
  %352 = mul nsw i32 %351, 11
  %353 = add nsw i32 %352, 2
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8*, i8** %350, i64 %354
  store i8* %347, i8** %355, align 8
  %356 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %357 = load i32, i32* @RADIO_2056_TX_TSSI_VCM, align 4
  %358 = load i32, i32* %3, align 4
  %359 = or i32 %357, %358
  %360 = call i8* @read_radio_reg(%struct.brcms_phy* %356, i32 %359)
  %361 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %362 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %361, i32 0, i32 1
  %363 = load i8**, i8*** %362, align 8
  %364 = load i32, i32* %4, align 4
  %365 = mul nsw i32 %364, 11
  %366 = add nsw i32 %365, 3
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8*, i8** %363, i64 %367
  store i8* %360, i8** %368, align 8
  %369 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %370 = load i32, i32* @RADIO_2056_TX_TX_AMP_DET, align 4
  %371 = load i32, i32* %3, align 4
  %372 = or i32 %370, %371
  %373 = call i8* @read_radio_reg(%struct.brcms_phy* %369, i32 %372)
  %374 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %375 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %374, i32 0, i32 1
  %376 = load i8**, i8*** %375, align 8
  %377 = load i32, i32* %4, align 4
  %378 = mul nsw i32 %377, 11
  %379 = add nsw i32 %378, 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8*, i8** %376, i64 %380
  store i8* %373, i8** %381, align 8
  %382 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %383 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %384 = load i32, i32* %3, align 4
  %385 = or i32 %383, %384
  %386 = call i8* @read_radio_reg(%struct.brcms_phy* %382, i32 %385)
  %387 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %388 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %387, i32 0, i32 1
  %389 = load i8**, i8*** %388, align 8
  %390 = load i32, i32* %4, align 4
  %391 = mul nsw i32 %390, 11
  %392 = add nsw i32 %391, 5
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8*, i8** %389, i64 %393
  store i8* %386, i8** %394, align 8
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %396 = load i32, i32* @RADIO_2056_TX_TSSIA, align 4
  %397 = load i32, i32* %3, align 4
  %398 = or i32 %396, %397
  %399 = call i8* @read_radio_reg(%struct.brcms_phy* %395, i32 %398)
  %400 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %401 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %400, i32 0, i32 1
  %402 = load i8**, i8*** %401, align 8
  %403 = load i32, i32* %4, align 4
  %404 = mul nsw i32 %403, 11
  %405 = add nsw i32 %404, 6
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8*, i8** %402, i64 %406
  store i8* %399, i8** %407, align 8
  %408 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %409 = load i32, i32* @RADIO_2056_TX_TSSIG, align 4
  %410 = load i32, i32* %3, align 4
  %411 = or i32 %409, %410
  %412 = call i8* @read_radio_reg(%struct.brcms_phy* %408, i32 %411)
  %413 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %414 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %413, i32 0, i32 1
  %415 = load i8**, i8*** %414, align 8
  %416 = load i32, i32* %4, align 4
  %417 = mul nsw i32 %416, 11
  %418 = add nsw i32 %417, 7
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8*, i8** %415, i64 %419
  store i8* %412, i8** %420, align 8
  %421 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %422 = load i32, i32* @RADIO_2056_TX_TSSI_MISC1, align 4
  %423 = load i32, i32* %3, align 4
  %424 = or i32 %422, %423
  %425 = call i8* @read_radio_reg(%struct.brcms_phy* %421, i32 %424)
  %426 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %427 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %426, i32 0, i32 1
  %428 = load i8**, i8*** %427, align 8
  %429 = load i32, i32* %4, align 4
  %430 = mul nsw i32 %429, 11
  %431 = add nsw i32 %430, 8
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8*, i8** %428, i64 %432
  store i8* %425, i8** %433, align 8
  %434 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %435 = load i32, i32* @RADIO_2056_TX_TSSI_MISC2, align 4
  %436 = load i32, i32* %3, align 4
  %437 = or i32 %435, %436
  %438 = call i8* @read_radio_reg(%struct.brcms_phy* %434, i32 %437)
  %439 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %440 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %439, i32 0, i32 1
  %441 = load i8**, i8*** %440, align 8
  %442 = load i32, i32* %4, align 4
  %443 = mul nsw i32 %442, 11
  %444 = add nsw i32 %443, 9
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8*, i8** %441, i64 %445
  store i8* %438, i8** %446, align 8
  %447 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %448 = load i32, i32* @RADIO_2056_TX_TSSI_MISC3, align 4
  %449 = load i32, i32* %3, align 4
  %450 = or i32 %448, %449
  %451 = call i8* @read_radio_reg(%struct.brcms_phy* %447, i32 %450)
  %452 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %453 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %452, i32 0, i32 1
  %454 = load i8**, i8*** %453, align 8
  %455 = load i32, i32* %4, align 4
  %456 = mul nsw i32 %455, 11
  %457 = add nsw i32 %456, 10
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8*, i8** %454, i64 %458
  store i8* %451, i8** %459, align 8
  %460 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %461 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = call i64 @CHSPEC_IS5G(i32 %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %537

465:                                              ; preds = %315
  %466 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %467 = load i32, i32* @RADIO_2056_TX_TX_SSI_MASTER, align 4
  %468 = load i32, i32* %3, align 4
  %469 = or i32 %467, %468
  %470 = call i32 @write_radio_reg(%struct.brcms_phy* %466, i32 %469, i32 10)
  %471 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %472 = load i32, i32* @RADIO_2056_TX_IQCAL_VCM_HG, align 4
  %473 = load i32, i32* %3, align 4
  %474 = or i32 %472, %473
  %475 = call i32 @write_radio_reg(%struct.brcms_phy* %471, i32 %474, i32 64)
  %476 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %477 = load i32, i32* @RADIO_2056_TX_IQCAL_IDAC, align 4
  %478 = load i32, i32* %3, align 4
  %479 = or i32 %477, %478
  %480 = call i32 @write_radio_reg(%struct.brcms_phy* %476, i32 %479, i32 85)
  %481 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %482 = load i32, i32* @RADIO_2056_TX_TSSI_VCM, align 4
  %483 = load i32, i32* %3, align 4
  %484 = or i32 %482, %483
  %485 = call i32 @write_radio_reg(%struct.brcms_phy* %481, i32 %484, i32 0)
  %486 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %487 = load i32, i32* @RADIO_2056_TX_TX_AMP_DET, align 4
  %488 = load i32, i32* %3, align 4
  %489 = or i32 %487, %488
  %490 = call i32 @write_radio_reg(%struct.brcms_phy* %486, i32 %489, i32 0)
  %491 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %492 = call i64 @PHY_IPA(%struct.brcms_phy* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %505

494:                                              ; preds = %465
  %495 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %496 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %497 = load i32, i32* %3, align 4
  %498 = or i32 %496, %497
  %499 = call i32 @write_radio_reg(%struct.brcms_phy* %495, i32 %498, i32 4)
  %500 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %501 = load i32, i32* @RADIO_2056_TX_TSSIA, align 4
  %502 = load i32, i32* %3, align 4
  %503 = or i32 %501, %502
  %504 = call i32 @write_radio_reg(%struct.brcms_phy* %500, i32 %503, i32 1)
  br label %516

505:                                              ; preds = %465
  %506 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %507 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %508 = load i32, i32* %3, align 4
  %509 = or i32 %507, %508
  %510 = call i32 @write_radio_reg(%struct.brcms_phy* %506, i32 %509, i32 0)
  %511 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %512 = load i32, i32* @RADIO_2056_TX_TSSIA, align 4
  %513 = load i32, i32* %3, align 4
  %514 = or i32 %512, %513
  %515 = call i32 @write_radio_reg(%struct.brcms_phy* %511, i32 %514, i32 47)
  br label %516

516:                                              ; preds = %505, %494
  %517 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %518 = load i32, i32* @RADIO_2056_TX_TSSIG, align 4
  %519 = load i32, i32* %3, align 4
  %520 = or i32 %518, %519
  %521 = call i32 @write_radio_reg(%struct.brcms_phy* %517, i32 %520, i32 0)
  %522 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %523 = load i32, i32* @RADIO_2056_TX_TSSI_MISC1, align 4
  %524 = load i32, i32* %3, align 4
  %525 = or i32 %523, %524
  %526 = call i32 @write_radio_reg(%struct.brcms_phy* %522, i32 %525, i32 0)
  %527 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %528 = load i32, i32* @RADIO_2056_TX_TSSI_MISC2, align 4
  %529 = load i32, i32* %3, align 4
  %530 = or i32 %528, %529
  %531 = call i32 @write_radio_reg(%struct.brcms_phy* %527, i32 %530, i32 0)
  %532 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %533 = load i32, i32* @RADIO_2056_TX_TSSI_MISC3, align 4
  %534 = load i32, i32* %3, align 4
  %535 = or i32 %533, %534
  %536 = call i32 @write_radio_reg(%struct.brcms_phy* %532, i32 %535, i32 0)
  br label %623

537:                                              ; preds = %315
  %538 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %539 = load i32, i32* @RADIO_2056_TX_TX_SSI_MASTER, align 4
  %540 = load i32, i32* %3, align 4
  %541 = or i32 %539, %540
  %542 = call i32 @write_radio_reg(%struct.brcms_phy* %538, i32 %541, i32 6)
  %543 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %544 = load i32, i32* @RADIO_2056_TX_IQCAL_VCM_HG, align 4
  %545 = load i32, i32* %3, align 4
  %546 = or i32 %544, %545
  %547 = call i32 @write_radio_reg(%struct.brcms_phy* %543, i32 %546, i32 64)
  %548 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %549 = load i32, i32* @RADIO_2056_TX_IQCAL_IDAC, align 4
  %550 = load i32, i32* %3, align 4
  %551 = or i32 %549, %550
  %552 = call i32 @write_radio_reg(%struct.brcms_phy* %548, i32 %551, i32 85)
  %553 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %554 = load i32, i32* @RADIO_2056_TX_TSSI_VCM, align 4
  %555 = load i32, i32* %3, align 4
  %556 = or i32 %554, %555
  %557 = call i32 @write_radio_reg(%struct.brcms_phy* %553, i32 %556, i32 0)
  %558 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %559 = load i32, i32* @RADIO_2056_TX_TX_AMP_DET, align 4
  %560 = load i32, i32* %3, align 4
  %561 = or i32 %559, %560
  %562 = call i32 @write_radio_reg(%struct.brcms_phy* %558, i32 %561, i32 0)
  %563 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %564 = load i32, i32* @RADIO_2056_TX_TSSIA, align 4
  %565 = load i32, i32* %3, align 4
  %566 = or i32 %564, %565
  %567 = call i32 @write_radio_reg(%struct.brcms_phy* %563, i32 %566, i32 0)
  %568 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %569 = call i64 @PHY_IPA(%struct.brcms_phy* %568)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %596

571:                                              ; preds = %537
  %572 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %573 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %574 = load i32, i32* %3, align 4
  %575 = or i32 %573, %574
  %576 = call i32 @write_radio_reg(%struct.brcms_phy* %572, i32 %575, i32 6)
  %577 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %578 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 4
  %581 = call i64 @NREV_LT(i32 %580, i32 5)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %589

583:                                              ; preds = %571
  %584 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %585 = load i32, i32* @RADIO_2056_TX_TSSIG, align 4
  %586 = load i32, i32* %3, align 4
  %587 = or i32 %585, %586
  %588 = call i32 @write_radio_reg(%struct.brcms_phy* %584, i32 %587, i32 17)
  br label %595

589:                                              ; preds = %571
  %590 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %591 = load i32, i32* @RADIO_2056_TX_TSSIG, align 4
  %592 = load i32, i32* %3, align 4
  %593 = or i32 %591, %592
  %594 = call i32 @write_radio_reg(%struct.brcms_phy* %590, i32 %593, i32 1)
  br label %595

595:                                              ; preds = %589, %583
  br label %607

596:                                              ; preds = %537
  %597 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %598 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %599 = load i32, i32* %3, align 4
  %600 = or i32 %598, %599
  %601 = call i32 @write_radio_reg(%struct.brcms_phy* %597, i32 %600, i32 0)
  %602 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %603 = load i32, i32* @RADIO_2056_TX_TSSIG, align 4
  %604 = load i32, i32* %3, align 4
  %605 = or i32 %603, %604
  %606 = call i32 @write_radio_reg(%struct.brcms_phy* %602, i32 %605, i32 32)
  br label %607

607:                                              ; preds = %596, %595
  %608 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %609 = load i32, i32* @RADIO_2056_TX_TSSI_MISC1, align 4
  %610 = load i32, i32* %3, align 4
  %611 = or i32 %609, %610
  %612 = call i32 @write_radio_reg(%struct.brcms_phy* %608, i32 %611, i32 0)
  %613 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %614 = load i32, i32* @RADIO_2056_TX_TSSI_MISC2, align 4
  %615 = load i32, i32* %3, align 4
  %616 = or i32 %614, %615
  %617 = call i32 @write_radio_reg(%struct.brcms_phy* %613, i32 %616, i32 0)
  %618 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %619 = load i32, i32* @RADIO_2056_TX_TSSI_MISC3, align 4
  %620 = load i32, i32* %3, align 4
  %621 = or i32 %619, %620
  %622 = call i32 @write_radio_reg(%struct.brcms_phy* %618, i32 %621, i32 0)
  br label %623

623:                                              ; preds = %607, %516
  br label %624

624:                                              ; preds = %623
  %625 = load i32, i32* %4, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %4, align 4
  br label %304

627:                                              ; preds = %304
  br label %724

628:                                              ; preds = %296
  %629 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %630 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL1, align 4
  %631 = call i8* @read_radio_reg(%struct.brcms_phy* %629, i32 %630)
  %632 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %633 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %632, i32 0, i32 1
  %634 = load i8**, i8*** %633, align 8
  %635 = getelementptr inbounds i8*, i8** %634, i64 0
  store i8* %631, i8** %635, align 8
  %636 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %637 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL1, align 4
  %638 = call i32 @write_radio_reg(%struct.brcms_phy* %636, i32 %637, i32 41)
  %639 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %640 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL2, align 4
  %641 = call i8* @read_radio_reg(%struct.brcms_phy* %639, i32 %640)
  %642 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %643 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %642, i32 0, i32 1
  %644 = load i8**, i8*** %643, align 8
  %645 = getelementptr inbounds i8*, i8** %644, i64 1
  store i8* %641, i8** %645, align 8
  %646 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %647 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL2, align 4
  %648 = call i32 @write_radio_reg(%struct.brcms_phy* %646, i32 %647, i32 84)
  %649 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %650 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL1, align 4
  %651 = call i8* @read_radio_reg(%struct.brcms_phy* %649, i32 %650)
  %652 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %653 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %652, i32 0, i32 1
  %654 = load i8**, i8*** %653, align 8
  %655 = getelementptr inbounds i8*, i8** %654, i64 2
  store i8* %651, i8** %655, align 8
  %656 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %657 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL1, align 4
  %658 = call i32 @write_radio_reg(%struct.brcms_phy* %656, i32 %657, i32 41)
  %659 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %660 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL2, align 4
  %661 = call i8* @read_radio_reg(%struct.brcms_phy* %659, i32 %660)
  %662 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %663 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %662, i32 0, i32 1
  %664 = load i8**, i8*** %663, align 8
  %665 = getelementptr inbounds i8*, i8** %664, i64 3
  store i8* %661, i8** %665, align 8
  %666 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %667 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL2, align 4
  %668 = call i32 @write_radio_reg(%struct.brcms_phy* %666, i32 %667, i32 84)
  %669 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %670 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE1, align 4
  %671 = call i8* @read_radio_reg(%struct.brcms_phy* %669, i32 %670)
  %672 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %673 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %672, i32 0, i32 1
  %674 = load i8**, i8*** %673, align 8
  %675 = getelementptr inbounds i8*, i8** %674, i64 4
  store i8* %671, i8** %675, align 8
  %676 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %677 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE2, align 4
  %678 = call i8* @read_radio_reg(%struct.brcms_phy* %676, i32 %677)
  %679 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %680 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %679, i32 0, i32 1
  %681 = load i8**, i8*** %680, align 8
  %682 = getelementptr inbounds i8*, i8** %681, i64 5
  store i8* %678, i8** %682, align 8
  %683 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %684 = call i32 @read_phy_reg(%struct.brcms_phy* %683, i32 9)
  %685 = load i32, i32* @NPHY_BandControl_currentBand, align 4
  %686 = and i32 %684, %685
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %695

688:                                              ; preds = %628
  %689 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %690 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE1, align 4
  %691 = call i32 @write_radio_reg(%struct.brcms_phy* %689, i32 %690, i32 4)
  %692 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %693 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE2, align 4
  %694 = call i32 @write_radio_reg(%struct.brcms_phy* %692, i32 %693, i32 4)
  br label %702

695:                                              ; preds = %628
  %696 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %697 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE1, align 4
  %698 = call i32 @write_radio_reg(%struct.brcms_phy* %696, i32 %697, i32 32)
  %699 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %700 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE2, align 4
  %701 = call i32 @write_radio_reg(%struct.brcms_phy* %699, i32 %700, i32 32)
  br label %702

702:                                              ; preds = %695, %688
  %703 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %704 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %704, i32 0, i32 1
  %706 = load i32, i32* %705, align 4
  %707 = call i64 @NREV_LT(i32 %706, i32 2)
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %716

709:                                              ; preds = %702
  %710 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %711 = load i32, i32* @RADIO_2055_CORE1_TX_BB_MXGM, align 4
  %712 = call i32 @or_radio_reg(%struct.brcms_phy* %710, i32 %711, i32 32)
  %713 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %714 = load i32, i32* @RADIO_2055_CORE2_TX_BB_MXGM, align 4
  %715 = call i32 @or_radio_reg(%struct.brcms_phy* %713, i32 %714, i32 32)
  br label %723

716:                                              ; preds = %702
  %717 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %718 = load i32, i32* @RADIO_2055_CORE1_TX_BB_MXGM, align 4
  %719 = call i32 @and_radio_reg(%struct.brcms_phy* %717, i32 %718, i32 223)
  %720 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %721 = load i32, i32* @RADIO_2055_CORE2_TX_BB_MXGM, align 4
  %722 = call i32 @and_radio_reg(%struct.brcms_phy* %720, i32 %721, i32 223)
  br label %723

723:                                              ; preds = %716, %709
  br label %724

724:                                              ; preds = %723, %627
  br label %725

725:                                              ; preds = %724, %295
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i8* @READ_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @WRITE_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
