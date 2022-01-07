; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_vbat_temp_sense_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_vbat_temp_sense_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64 }
%struct.phytbl_info = type { i32, i32, i32, i32*, i32 }

@RADIO_2064_REG007 = common dso_local global i32 0, align 4
@RADIO_2064_REG0FF = common dso_local global i32 0, align 4
@RADIO_2064_REG11F = common dso_local global i32 0, align 4
@RADIO_2064_REG005 = common dso_local global i32 0, align 4
@RADIO_2064_REG025 = common dso_local global i32 0, align 4
@RADIO_2064_REG112 = common dso_local global i32 0, align 4
@tempsense_phy_regs = common dso_local global i32* null, align 8
@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@TEMPSENSE = common dso_local global i64 0, align 8
@RADIO_2064_REG082 = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_lcnphy_vbat_temp_sense_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.phytbl_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [14 x i32], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %25, align 8
  store %struct.brcms_phy_lcnphy* %26, %struct.brcms_phy_lcnphy** %22, align 8
  %27 = call i32 @udelay(i32 999)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = load i32, i32* @RADIO_2064_REG007, align 4
  %30 = call i32 @read_radio_reg(%struct.brcms_phy* %28, i32 %29)
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %13, align 8
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %33 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %34 = call i32 @read_radio_reg(%struct.brcms_phy* %32, i32 %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %14, align 8
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = load i32, i32* @RADIO_2064_REG11F, align 4
  %38 = call i32 @read_radio_reg(%struct.brcms_phy* %36, i32 %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %15, align 8
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = load i32, i32* @RADIO_2064_REG005, align 4
  %42 = call i32 @read_radio_reg(%struct.brcms_phy* %40, i32 %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %16, align 8
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = load i32, i32* @RADIO_2064_REG025, align 4
  %46 = call i32 @read_radio_reg(%struct.brcms_phy* %44, i32 %45)
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %17, align 8
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = load i32, i32* @RADIO_2064_REG112, align 4
  %50 = call i32 @read_radio_reg(%struct.brcms_phy* %48, i32 %49)
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %18, align 8
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %66, %2
  %53 = load i32, i32* %21, align 4
  %54 = icmp slt i32 %53, 14
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %57 = load i32*, i32** @tempsense_phy_regs, align 8
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @read_phy_reg(%struct.brcms_phy* %56, i32 %61)
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [14 x i32], [14 x i32]* %19, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %21, align 4
  br label %52

69:                                               ; preds = %52
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @maccontrol, align 4
  %74 = call i32 @D11REGOFFS(i32 %73)
  %75 = call i32 @bcma_read32(i32 %72, i32 %74)
  %76 = load i32, i32* @MCTL_EN_MAC, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 0, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %69
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %84 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @wlapi_suspend_mac_and_wait(i32 %87)
  br label %89

89:                                               ; preds = %82, %69
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = call i32 @read_radio_reg(%struct.brcms_phy* %90, i32 1188)
  store i32 %91, i32* %6, align 4
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %93 = load i32, i32* @LCNPHY_TX_PWR_CTRL_OFF, align 4
  %94 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %92, i32 %93)
  %95 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %22, align 8
  %96 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %20, align 8
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %99 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %98, i32 127)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %101 = load i32, i32* @RADIO_2064_REG007, align 4
  %102 = call i32 @mod_radio_reg(%struct.brcms_phy* %100, i32 %101, i32 1, i32 1)
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %104 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %105 = call i32 @mod_radio_reg(%struct.brcms_phy* %103, i32 %104, i32 16, i32 16)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %107 = load i32, i32* @RADIO_2064_REG11F, align 4
  %108 = call i32 @mod_radio_reg(%struct.brcms_phy* %106, i32 %107, i32 4, i32 4)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = call i32 @mod_phy_reg(%struct.brcms_phy* %109, i32 1283, i32 1, i32 0)
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %112 = call i32 @mod_phy_reg(%struct.brcms_phy* %111, i32 1283, i32 4, i32 0)
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %114 = call i32 @mod_phy_reg(%struct.brcms_phy* %113, i32 1188, i32 16384, i32 0)
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %116 = call i32 @mod_phy_reg(%struct.brcms_phy* %115, i32 1188, i32 32768, i32 0)
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %118 = call i32 @mod_phy_reg(%struct.brcms_phy* %117, i32 1232, i32 32, i32 0)
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %120 = call i32 @mod_phy_reg(%struct.brcms_phy* %119, i32 1189, i32 255, i32 255)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = call i32 @mod_phy_reg(%struct.brcms_phy* %121, i32 1189, i32 28672, i32 20480)
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %124 = call i32 @mod_phy_reg(%struct.brcms_phy* %123, i32 1189, i32 1792, i32 0)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %126 = call i32 @mod_phy_reg(%struct.brcms_phy* %125, i32 1037, i32 255, i32 64)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %128 = call i32 @mod_phy_reg(%struct.brcms_phy* %127, i32 1037, i32 1792, i32 1536)
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %130 = call i32 @mod_phy_reg(%struct.brcms_phy* %129, i32 1186, i32 255, i32 64)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = call i32 @mod_phy_reg(%struct.brcms_phy* %131, i32 1186, i32 1792, i32 1536)
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %134 = call i32 @mod_phy_reg(%struct.brcms_phy* %133, i32 1241, i32 112, i32 32)
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %136 = call i32 @mod_phy_reg(%struct.brcms_phy* %135, i32 1241, i32 1792, i32 768)
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %138 = call i32 @mod_phy_reg(%struct.brcms_phy* %137, i32 1241, i32 28672, i32 4096)
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %140 = call i32 @mod_phy_reg(%struct.brcms_phy* %139, i32 1242, i32 4096, i32 0)
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %142 = call i32 @mod_phy_reg(%struct.brcms_phy* %141, i32 1242, i32 8192, i32 8192)
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %144 = call i32 @mod_phy_reg(%struct.brcms_phy* %143, i32 1190, i32 32768, i32 32768)
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %146 = load i32, i32* @RADIO_2064_REG025, align 4
  %147 = call i32 @write_radio_reg(%struct.brcms_phy* %145, i32 %146, i32 12)
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %149 = load i32, i32* @RADIO_2064_REG005, align 4
  %150 = call i32 @mod_radio_reg(%struct.brcms_phy* %148, i32 %149, i32 8, i32 8)
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %152 = call i32 @mod_phy_reg(%struct.brcms_phy* %151, i32 2360, i32 4, i32 4)
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %154 = call i32 @mod_phy_reg(%struct.brcms_phy* %153, i32 2361, i32 4, i32 4)
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %156 = call i32 @mod_phy_reg(%struct.brcms_phy* %155, i32 1188, i32 4096, i32 4096)
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %158 = call i32 @wlc_lcnphy_rfseq_tbl_adc_pwrup(%struct.brcms_phy* %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* @LCNPHY_TBL_ID_RFSEQ, align 4
  %160 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %11, i32 0, i32 4
  store i32 %159, i32* %160, align 8
  %161 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %11, i32 0, i32 0
  store i32 16, i32* %161, align 8
  %162 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %11, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %11, i32 0, i32 3
  store i32* %12, i32** %163, align 8
  %164 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %11, i32 0, i32 2
  store i32 6, i32* %164, align 8
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %166 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %165, %struct.phytbl_info* %11)
  %167 = load i64, i64* %4, align 8
  %168 = load i64, i64* @TEMPSENSE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %89
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %172 = call i32 @mod_phy_reg(%struct.brcms_phy* %171, i32 1239, i32 8, i32 8)
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %174 = call i32 @mod_phy_reg(%struct.brcms_phy* %173, i32 1239, i32 28672, i32 4096)
  store i64 8, i64* %7, align 8
  store i64 4, i64* %8, align 8
  store i64 2, i64* %9, align 8
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %176 = load i32, i32* @RADIO_2064_REG082, align 4
  %177 = call i32 @mod_radio_reg(%struct.brcms_phy* %175, i32 %176, i32 32, i32 32)
  br label %183

178:                                              ; preds = %89
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %180 = call i32 @mod_phy_reg(%struct.brcms_phy* %179, i32 1239, i32 8, i32 8)
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %182 = call i32 @mod_phy_reg(%struct.brcms_phy* %181, i32 1239, i32 28672, i32 12288)
  store i64 7, i64* %7, align 8
  store i64 10, i64* %8, align 8
  store i64 2, i64* %9, align 8
  br label %183

183:                                              ; preds = %178, %170
  %184 = load i64, i64* %7, align 8
  %185 = shl i64 %184, 4
  %186 = or i64 512, %185
  %187 = load i64, i64* %8, align 8
  %188 = or i64 %186, %187
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %10, align 4
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %191 = call i32 @mod_phy_reg(%struct.brcms_phy* %190, i32 1240, i32 1, i32 1)
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %193 = load i32, i32* %10, align 4
  %194 = shl i32 %193, 2
  %195 = call i32 @mod_phy_reg(%struct.brcms_phy* %192, i32 1240, i32 4092, i32 %194)
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %197 = call i32 @mod_phy_reg(%struct.brcms_phy* %196, i32 1240, i32 2, i32 2)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %199 = load i64, i64* %9, align 8
  %200 = shl i64 %199, 12
  %201 = trunc i64 %200 to i32
  %202 = call i32 @mod_phy_reg(%struct.brcms_phy* %198, i32 1240, i32 28672, i32 %201)
  %203 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %204 = call i32 @mod_phy_reg(%struct.brcms_phy* %203, i32 1232, i32 32, i32 32)
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %206 = load i32, i32* @RADIO_2064_REG112, align 4
  %207 = call i32 @write_radio_reg(%struct.brcms_phy* %205, i32 %206, i32 6)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %209 = load i32, i32* @OFF, align 4
  %210 = call i32 @wlc_phy_do_dummy_tx(%struct.brcms_phy* %208, i32 1, i32 %209)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %212 = call i32 @tempsense_done(%struct.brcms_phy* %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %183
  %215 = call i32 @udelay(i32 10)
  br label %216

216:                                              ; preds = %214, %183
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %218 = load i32, i32* @RADIO_2064_REG007, align 4
  %219 = load i64, i64* %13, align 8
  %220 = trunc i64 %219 to i32
  %221 = call i32 @write_radio_reg(%struct.brcms_phy* %217, i32 %218, i32 %220)
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %223 = load i32, i32* @RADIO_2064_REG0FF, align 4
  %224 = load i64, i64* %14, align 8
  %225 = trunc i64 %224 to i32
  %226 = call i32 @write_radio_reg(%struct.brcms_phy* %222, i32 %223, i32 %225)
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %228 = load i32, i32* @RADIO_2064_REG11F, align 4
  %229 = load i64, i64* %15, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 @write_radio_reg(%struct.brcms_phy* %227, i32 %228, i32 %230)
  %232 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %233 = load i32, i32* @RADIO_2064_REG005, align 4
  %234 = load i64, i64* %16, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @write_radio_reg(%struct.brcms_phy* %232, i32 %233, i32 %235)
  %237 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %238 = load i32, i32* @RADIO_2064_REG025, align 4
  %239 = load i64, i64* %17, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 @write_radio_reg(%struct.brcms_phy* %237, i32 %238, i32 %240)
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %243 = load i32, i32* @RADIO_2064_REG112, align 4
  %244 = load i64, i64* %18, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @write_radio_reg(%struct.brcms_phy* %242, i32 %243, i32 %245)
  store i32 0, i32* %21, align 4
  br label %247

247:                                              ; preds = %262, %216
  %248 = load i32, i32* %21, align 4
  %249 = icmp slt i32 %248, 14
  br i1 %249, label %250, label %265

250:                                              ; preds = %247
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %252 = load i32*, i32** @tempsense_phy_regs, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %21, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [14 x i32], [14 x i32]* %19, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @write_phy_reg(%struct.brcms_phy* %251, i32 %256, i32 %260)
  br label %262

262:                                              ; preds = %250
  %263 = load i32, i32* %21, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %21, align 4
  br label %247

265:                                              ; preds = %247
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %267 = load i64, i64* %20, align 8
  %268 = trunc i64 %267 to i32
  %269 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %266, i32 %268)
  %270 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @write_radio_reg(%struct.brcms_phy* %270, i32 1188, i32 %271)
  %273 = load i32, i32* %5, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %282, label %275

275:                                              ; preds = %265
  %276 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %277 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %276, i32 0, i32 0
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @wlapi_enable_mac(i32 %280)
  br label %282

282:                                              ; preds = %275, %265
  %283 = call i32 @udelay(i32 999)
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_rfseq_tbl_adc_pwrup(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @wlc_phy_do_dummy_tx(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @tempsense_done(%struct.brcms_phy*) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
