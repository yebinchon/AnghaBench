; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_radio_cleanup_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_radio_cleanup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PHY_CORE_0 = common dso_local global i64 0, align 8
@RADIO_2057_TX0_TXRXCOUPLE_5G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX0_TXRXCOUPLE_5G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2057_TX0_TXRXCOUPLE_2G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX0_TXRXCOUPLE_2G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_5G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_5G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_2G_PWRUP = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TXRXCOUPLE_2G_ATTEN = common dso_local global i32 0, align 4
@RADIO_2056_TX_RXIQCAL_TXMUX = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@RADIO_2056_RX_RXIQCAL_RXMUX = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX_RXSPARE2 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TXSPARE2 = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAA_MASTER = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAA_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAG_MASTER = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAG_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_phy_rxcal_radio_cleanup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rxcal_radio_cleanup_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @NREV_GE(i32 %8, i32 7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %98

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @PHY_CORE_0, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @CHSPEC_IS5G(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %23 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_5G_PWRUP, align 4
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_radio_reg(%struct.brcms_phy* %22, i32 %23, i32 %28)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_5G_ATTEN, align 4
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @write_radio_reg(%struct.brcms_phy* %30, i32 %31, i32 %36)
  br label %55

38:                                               ; preds = %15
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_2G_PWRUP, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @write_radio_reg(%struct.brcms_phy* %39, i32 %40, i32 %45)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = load i32, i32* @RADIO_2057_TX0_TXRXCOUPLE_2G_ATTEN, align 4
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %50 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @write_radio_reg(%struct.brcms_phy* %47, i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %38, %21
  br label %97

56:                                               ; preds = %11
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %58 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @CHSPEC_IS5G(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_5G_PWRUP, align 4
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @write_radio_reg(%struct.brcms_phy* %63, i32 %64, i32 %69)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_5G_ATTEN, align 4
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write_radio_reg(%struct.brcms_phy* %71, i32 %72, i32 %77)
  br label %96

79:                                               ; preds = %56
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %81 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_2G_PWRUP, align 4
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @write_radio_reg(%struct.brcms_phy* %80, i32 %81, i32 %86)
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %89 = load i32, i32* @RADIO_2057_TX1_TXRXCOUPLE_2G_ATTEN, align 4
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @write_radio_reg(%struct.brcms_phy* %88, i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %79, %62
  br label %97

97:                                               ; preds = %96, %55
  br label %327

98:                                               ; preds = %2
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @PHY_CORE_0, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %214

102:                                              ; preds = %98
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %104 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %105 = load i32, i32* @RADIO_2056_TX1, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_radio_reg(%struct.brcms_phy* %103, i32 %106, i32 %111)
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %114 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %115 = load i32, i32* @RADIO_2056_RX0, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @write_radio_reg(%struct.brcms_phy* %113, i32 %116, i32 %121)
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %124 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %126, 5
  br i1 %127, label %128, label %149

128:                                              ; preds = %102
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %130 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %131 = load i32, i32* @RADIO_2056_RX0, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %134 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @write_radio_reg(%struct.brcms_phy* %129, i32 %132, i32 %137)
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %140 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %141 = load i32, i32* @RADIO_2056_TX1, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @write_radio_reg(%struct.brcms_phy* %139, i32 %142, i32 %147)
  br label %149

149:                                              ; preds = %128, %102
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %151 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @CHSPEC_IS5G(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %184

155:                                              ; preds = %149
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %157 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sge i32 %159, 5
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %163 = load i32, i32* @RADIO_2056_RX_LNAA_MASTER, align 4
  %164 = load i32, i32* @RADIO_2056_RX0, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %167 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @write_radio_reg(%struct.brcms_phy* %162, i32 %165, i32 %170)
  br label %183

172:                                              ; preds = %155
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %174 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %175 = load i32, i32* @RADIO_2056_RX0, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %178 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @write_radio_reg(%struct.brcms_phy* %173, i32 %176, i32 %181)
  br label %183

183:                                              ; preds = %172, %161
  br label %213

184:                                              ; preds = %149
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %186 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sge i32 %188, 5
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %192 = load i32, i32* @RADIO_2056_RX_LNAG_MASTER, align 4
  %193 = load i32, i32* @RADIO_2056_RX0, align 4
  %194 = or i32 %192, %193
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %196 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @write_radio_reg(%struct.brcms_phy* %191, i32 %194, i32 %199)
  br label %212

201:                                              ; preds = %184
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %203 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %204 = load i32, i32* @RADIO_2056_RX0, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %207 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @write_radio_reg(%struct.brcms_phy* %202, i32 %205, i32 %210)
  br label %212

212:                                              ; preds = %201, %190
  br label %213

213:                                              ; preds = %212, %183
  br label %326

214:                                              ; preds = %98
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %216 = load i32, i32* @RADIO_2056_TX_RXIQCAL_TXMUX, align 4
  %217 = load i32, i32* @RADIO_2056_TX0, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %220 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @write_radio_reg(%struct.brcms_phy* %215, i32 %218, i32 %223)
  %225 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %226 = load i32, i32* @RADIO_2056_RX_RXIQCAL_RXMUX, align 4
  %227 = load i32, i32* @RADIO_2056_RX1, align 4
  %228 = or i32 %226, %227
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %230 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @write_radio_reg(%struct.brcms_phy* %225, i32 %228, i32 %233)
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %236 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp sge i32 %238, 5
  br i1 %239, label %240, label %261

240:                                              ; preds = %214
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %242 = load i32, i32* @RADIO_2056_RX_RXSPARE2, align 4
  %243 = load i32, i32* @RADIO_2056_RX1, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %246 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @write_radio_reg(%struct.brcms_phy* %241, i32 %244, i32 %249)
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %252 = load i32, i32* @RADIO_2056_TX_TXSPARE2, align 4
  %253 = load i32, i32* @RADIO_2056_TX0, align 4
  %254 = or i32 %252, %253
  %255 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %256 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 3
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @write_radio_reg(%struct.brcms_phy* %251, i32 %254, i32 %259)
  br label %261

261:                                              ; preds = %240, %214
  %262 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %263 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i64 @CHSPEC_IS5G(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %261
  %268 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %269 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp sge i32 %271, 5
  br i1 %272, label %273, label %284

273:                                              ; preds = %267
  %274 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %275 = load i32, i32* @RADIO_2056_RX_LNAA_MASTER, align 4
  %276 = load i32, i32* @RADIO_2056_RX1, align 4
  %277 = or i32 %275, %276
  %278 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %279 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 4
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @write_radio_reg(%struct.brcms_phy* %274, i32 %277, i32 %282)
  br label %295

284:                                              ; preds = %267
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %286 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %287 = load i32, i32* @RADIO_2056_RX1, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %290 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 4
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @write_radio_reg(%struct.brcms_phy* %285, i32 %288, i32 %293)
  br label %295

295:                                              ; preds = %284, %273
  br label %325

296:                                              ; preds = %261
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %298 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp sge i32 %300, 5
  br i1 %301, label %302, label %313

302:                                              ; preds = %296
  %303 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %304 = load i32, i32* @RADIO_2056_RX_LNAG_MASTER, align 4
  %305 = load i32, i32* @RADIO_2056_RX1, align 4
  %306 = or i32 %304, %305
  %307 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %308 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 4
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @write_radio_reg(%struct.brcms_phy* %303, i32 %306, i32 %311)
  br label %324

313:                                              ; preds = %296
  %314 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %315 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %316 = load i32, i32* @RADIO_2056_RX1, align 4
  %317 = or i32 %315, %316
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %319 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 4
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @write_radio_reg(%struct.brcms_phy* %314, i32 %317, i32 %322)
  br label %324

324:                                              ; preds = %313, %302
  br label %325

325:                                              ; preds = %324, %295
  br label %326

326:                                              ; preds = %325, %213
  br label %327

327:                                              ; preds = %326, %97
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
