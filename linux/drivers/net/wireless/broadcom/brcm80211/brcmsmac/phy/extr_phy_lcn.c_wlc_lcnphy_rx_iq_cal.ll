; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32 }
%struct.lcnphy_rx_iqcomp = type { i64, i64, i64 }
%struct.lcnphy_txgains = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i32 0, align 4
@rxiq_cal_rf_reg = common dso_local global i32* null, align 8
@RADIO_2064_REG116 = common dso_local global i32 0, align 4
@RADIO_2064_REG12C = common dso_local global i32 0, align 4
@RADIO_2064_REG06A = common dso_local global i32 0, align 4
@RADIO_2064_REG098 = common dso_local global i32 0, align 4
@RADIO_2064_REG00B = common dso_local global i32 0, align 4
@RADIO_2064_REG113 = common dso_local global i32 0, align 4
@RADIO_2064_REG01D = common dso_local global i32 0, align 4
@RADIO_2064_REG114 = common dso_local global i32 0, align 4
@RADIO_2064_REG02E = common dso_local global i32 0, align 4
@RADIO_2064_REG12A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, %struct.lcnphy_rx_iqcomp*, i32, i32, i32, i32, i32)* @wlc_lcnphy_rx_iq_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy* %0, %struct.lcnphy_rx_iqcomp* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcms_phy*, align 8
  %10 = alloca %struct.lcnphy_rx_iqcomp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lcnphy_txgains, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca [11 x i32], align 16
  %40 = alloca i32*, align 8
  %41 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %9, align 8
  store %struct.lcnphy_rx_iqcomp* %1, %struct.lcnphy_rx_iqcomp** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %44, align 8
  store %struct.brcms_phy_lcnphy* %45, %struct.brcms_phy_lcnphy** %41, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call i32* @kmalloc_array(i32 131, i32 4, i32 %46)
  store i32* %47, i32** %40, align 8
  %48 = load i32*, i32** %40, align 8
  %49 = icmp eq i32* null, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %349

51:                                               ; preds = %7
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %90

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %88, %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %55
  %60 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %60, i64 %62
  %64 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @CHSPEC_CHANNEL(i32 %68)
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %59
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %73 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %73, i64 %75
  %77 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %80, i64 %82
  %84 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy* %72, i32 %79, i32 %86)
  store i32 1, i32* %19, align 4
  br label %89

88:                                               ; preds = %59
  br label %55

89:                                               ; preds = %71, %55
  br label %345

90:                                               ; preds = %51
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 1
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON(i32 %93)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %96 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %95)
  store i32 %96, i32* %17, align 4
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %98 = load i32, i32* @LCNPHY_TX_PWR_CTRL_OFF, align 4
  %99 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %97, i32 %98)
  store i32 0, i32* %21, align 4
  br label %100

100:                                              ; preds = %114, %90
  %101 = load i32, i32* %21, align 4
  %102 = icmp slt i32 %101, 11
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %105 = load i32*, i32** @rxiq_cal_rf_reg, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @read_radio_reg(%struct.brcms_phy* %104, i32 %109)
  %111 = load i32, i32* %21, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [11 x i32], [11 x i32]* %39, i64 0, i64 %112
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %21, align 4
  br label %100

117:                                              ; preds = %100
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %119 = call i32 @read_phy_reg(%struct.brcms_phy* %118, i32 1585)
  store i32 %119, i32* %22, align 4
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %121 = call i32 @or_phy_reg(%struct.brcms_phy* %120, i32 1585, i32 21)
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %123 = call i32 @read_phy_reg(%struct.brcms_phy* %122, i32 1100)
  store i32 %123, i32* %23, align 4
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %125 = call i32 @read_phy_reg(%struct.brcms_phy* %124, i32 1101)
  store i32 %125, i32* %24, align 4
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %127 = call i32 @read_phy_reg(%struct.brcms_phy* %126, i32 1200)
  store i32 %127, i32* %25, align 4
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %129 = call i32 @read_phy_reg(%struct.brcms_phy* %128, i32 1201)
  store i32 %129, i32* %26, align 4
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %131 = call i32 @read_phy_reg(%struct.brcms_phy* %130, i32 1273)
  store i32 %131, i32* %27, align 4
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %133 = call i32 @read_phy_reg(%struct.brcms_phy* %132, i32 1274)
  store i32 %133, i32* %28, align 4
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %135 = call i32 @read_phy_reg(%struct.brcms_phy* %134, i32 2360)
  store i32 %135, i32* %29, align 4
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %137 = call i32 @read_phy_reg(%struct.brcms_phy* %136, i32 2361)
  store i32 %137, i32* %30, align 4
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %139 = call i32 @read_phy_reg(%struct.brcms_phy* %138, i32 1083)
  store i32 %139, i32* %31, align 4
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %141 = call i32 @read_phy_reg(%struct.brcms_phy* %140, i32 1084)
  store i32 %141, i32* %32, align 4
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %143 = call i32 @read_phy_reg(%struct.brcms_phy* %142, i32 1754)
  store i32 %143, i32* %37, align 4
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %145 = call i32 @read_phy_reg(%struct.brcms_phy* %144, i32 1755)
  store i32 %145, i32* %38, align 4
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %147 = call i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy* %146)
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %20, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %117
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %152 = call i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy* %151, %struct.lcnphy_txgains* %16)
  %153 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %41, align 8
  %154 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %150, %117
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %157, i32 %158)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %161 = call i32 @mod_phy_reg(%struct.brcms_phy* %160, i32 1273, i32 1, i32 1)
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %163 = call i32 @mod_phy_reg(%struct.brcms_phy* %162, i32 1274, i32 1, i32 0)
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %165 = call i32 @mod_phy_reg(%struct.brcms_phy* %164, i32 1083, i32 2, i32 2)
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %167 = call i32 @mod_phy_reg(%struct.brcms_phy* %166, i32 1084, i32 2, i32 0)
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %169 = load i32, i32* @RADIO_2064_REG116, align 4
  %170 = call i32 @write_radio_reg(%struct.brcms_phy* %168, i32 %169, i32 6)
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %172 = load i32, i32* @RADIO_2064_REG12C, align 4
  %173 = call i32 @write_radio_reg(%struct.brcms_phy* %171, i32 %172, i32 7)
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %175 = load i32, i32* @RADIO_2064_REG06A, align 4
  %176 = call i32 @write_radio_reg(%struct.brcms_phy* %174, i32 %175, i32 211)
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %178 = load i32, i32* @RADIO_2064_REG098, align 4
  %179 = call i32 @write_radio_reg(%struct.brcms_phy* %177, i32 %178, i32 3)
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %181 = load i32, i32* @RADIO_2064_REG00B, align 4
  %182 = call i32 @write_radio_reg(%struct.brcms_phy* %180, i32 %181, i32 7)
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %184 = load i32, i32* @RADIO_2064_REG113, align 4
  %185 = call i32 @mod_radio_reg(%struct.brcms_phy* %183, i32 %184, i32 16, i32 16)
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %187 = load i32, i32* @RADIO_2064_REG01D, align 4
  %188 = call i32 @write_radio_reg(%struct.brcms_phy* %186, i32 %187, i32 1)
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %190 = load i32, i32* @RADIO_2064_REG114, align 4
  %191 = call i32 @write_radio_reg(%struct.brcms_phy* %189, i32 %190, i32 1)
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %193 = load i32, i32* @RADIO_2064_REG02E, align 4
  %194 = call i32 @write_radio_reg(%struct.brcms_phy* %192, i32 %193, i32 16)
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %196 = load i32, i32* @RADIO_2064_REG12A, align 4
  %197 = call i32 @write_radio_reg(%struct.brcms_phy* %195, i32 %196, i32 8)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %199 = call i32 @mod_phy_reg(%struct.brcms_phy* %198, i32 2360, i32 1, i32 1)
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %201 = call i32 @mod_phy_reg(%struct.brcms_phy* %200, i32 2361, i32 1, i32 0)
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %203 = call i32 @mod_phy_reg(%struct.brcms_phy* %202, i32 2360, i32 2, i32 2)
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %205 = call i32 @mod_phy_reg(%struct.brcms_phy* %204, i32 2361, i32 2, i32 2)
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %207 = call i32 @mod_phy_reg(%struct.brcms_phy* %206, i32 2360, i32 4, i32 4)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %209 = call i32 @mod_phy_reg(%struct.brcms_phy* %208, i32 2361, i32 4, i32 4)
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %211 = call i32 @mod_phy_reg(%struct.brcms_phy* %210, i32 2360, i32 8, i32 8)
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %213 = call i32 @mod_phy_reg(%struct.brcms_phy* %212, i32 2361, i32 8, i32 8)
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %215 = call i32 @mod_phy_reg(%struct.brcms_phy* %214, i32 2360, i32 32, i32 32)
  %216 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %217 = call i32 @mod_phy_reg(%struct.brcms_phy* %216, i32 2361, i32 32, i32 0)
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %219 = call i32 @mod_phy_reg(%struct.brcms_phy* %218, i32 1083, i32 1, i32 1)
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %221 = call i32 @mod_phy_reg(%struct.brcms_phy* %220, i32 1084, i32 1, i32 0)
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %223 = call i32 @write_phy_reg(%struct.brcms_phy* %222, i32 1754, i32 65535)
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %225 = call i32 @or_phy_reg(%struct.brcms_phy* %224, i32 1755, i32 3)
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @wlc_lcnphy_set_trsw_override(%struct.brcms_phy* %226, i32 %227, i32 %228)
  store i32 3, i32* %34, align 4
  br label %230

230:                                              ; preds = %261, %156
  %231 = load i32, i32* %34, align 4
  %232 = icmp sge i32 %231, 0
  br i1 %232, label %233, label %264

233:                                              ; preds = %230
  store i32 4, i32* %33, align 4
  br label %234

234:                                              ; preds = %257, %233
  %235 = load i32, i32* %33, align 4
  %236 = icmp sge i32 %235, 0
  br i1 %236, label %237, label %260

237:                                              ; preds = %234
  store i32 6, i32* %35, align 4
  br label %238

238:                                              ; preds = %253, %237
  %239 = load i32, i32* %35, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %238
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %243 = load i32, i32* %35, align 4
  %244 = load i32, i32* %33, align 4
  %245 = load i32, i32* %34, align 4
  %246 = call i32 @wlc_lcnphy_rx_iq_cal_gain(%struct.brcms_phy* %242, i32 %243, i32 %244, i32 %245)
  store i32 %246, i32* %36, align 4
  %247 = load i32, i32* %36, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %241
  br label %253

250:                                              ; preds = %241
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %252 = call i32 @wlc_lcnphy_calc_rx_iq_comp(%struct.brcms_phy* %251, i32 1024)
  store i32 %252, i32* %19, align 4
  br label %265

253:                                              ; preds = %249
  %254 = load i32, i32* %35, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %35, align 4
  br label %238

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %33, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %33, align 4
  br label %234

260:                                              ; preds = %234
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %34, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %34, align 4
  br label %230

264:                                              ; preds = %230
  br label %265

265:                                              ; preds = %264, %250
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %267 = call i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy* %266)
  %268 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %269 = load i32, i32* %22, align 4
  %270 = call i32 @write_phy_reg(%struct.brcms_phy* %268, i32 1585, i32 %269)
  %271 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %272 = load i32, i32* %24, align 4
  %273 = call i32 @write_phy_reg(%struct.brcms_phy* %271, i32 1100, i32 %272)
  %274 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %275 = load i32, i32* %24, align 4
  %276 = call i32 @write_phy_reg(%struct.brcms_phy* %274, i32 1101, i32 %275)
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %278 = load i32, i32* %25, align 4
  %279 = call i32 @write_phy_reg(%struct.brcms_phy* %277, i32 1200, i32 %278)
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %281 = load i32, i32* %26, align 4
  %282 = call i32 @write_phy_reg(%struct.brcms_phy* %280, i32 1201, i32 %281)
  %283 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %284 = load i32, i32* %27, align 4
  %285 = call i32 @write_phy_reg(%struct.brcms_phy* %283, i32 1273, i32 %284)
  %286 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %287 = load i32, i32* %28, align 4
  %288 = call i32 @write_phy_reg(%struct.brcms_phy* %286, i32 1274, i32 %287)
  %289 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %290 = load i32, i32* %29, align 4
  %291 = call i32 @write_phy_reg(%struct.brcms_phy* %289, i32 2360, i32 %290)
  %292 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %293 = load i32, i32* %30, align 4
  %294 = call i32 @write_phy_reg(%struct.brcms_phy* %292, i32 2361, i32 %293)
  %295 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %296 = load i32, i32* %31, align 4
  %297 = call i32 @write_phy_reg(%struct.brcms_phy* %295, i32 1083, i32 %296)
  %298 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %299 = load i32, i32* %32, align 4
  %300 = call i32 @write_phy_reg(%struct.brcms_phy* %298, i32 1084, i32 %299)
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %302 = load i32, i32* %37, align 4
  %303 = call i32 @write_phy_reg(%struct.brcms_phy* %301, i32 1754, i32 %302)
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %305 = load i32, i32* %38, align 4
  %306 = call i32 @write_phy_reg(%struct.brcms_phy* %304, i32 1755, i32 %305)
  %307 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %308 = call i32 @wlc_lcnphy_clear_trsw_override(%struct.brcms_phy* %307)
  %309 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %310 = call i32 @mod_phy_reg(%struct.brcms_phy* %309, i32 1100, i32 4, i32 0)
  store i32 0, i32* %21, align 4
  br label %311

311:                                              ; preds = %326, %265
  %312 = load i32, i32* %21, align 4
  %313 = icmp slt i32 %312, 11
  br i1 %313, label %314, label %329

314:                                              ; preds = %311
  %315 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %316 = load i32*, i32** @rxiq_cal_rf_reg, align 8
  %317 = load i32, i32* %21, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [11 x i32], [11 x i32]* %39, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @write_radio_reg(%struct.brcms_phy* %315, i32 %320, i32 %324)
  br label %326

326:                                              ; preds = %314
  %327 = load i32, i32* %21, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %21, align 4
  br label %311

329:                                              ; preds = %311
  %330 = load i32, i32* %20, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %334 = load i32, i32* %18, align 4
  %335 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %333, i32 %334)
  br label %339

336:                                              ; preds = %329
  %337 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %338 = call i32 @wlc_lcnphy_disable_tx_gain_override(%struct.brcms_phy* %337)
  br label %339

339:                                              ; preds = %336, %332
  %340 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %341 = load i32, i32* %17, align 4
  %342 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %340, i32 %341)
  %343 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %344 = call i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy* %343, i32 0)
  br label %345

345:                                              ; preds = %339, %89
  %346 = load i32*, i32** %40, align 8
  %347 = call i32 @kfree(i32* %346)
  %348 = load i32, i32* %19, align 4
  store i32 %348, i32* %8, align 4
  br label %349

349:                                              ; preds = %345, %50
  %350 = load i32, i32* %8, align 4
  ret i32 %350
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_trsw_override(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_rx_iq_cal_gain(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_calc_rx_iq_comp(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_clear_trsw_override(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_disable_tx_gain_override(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
