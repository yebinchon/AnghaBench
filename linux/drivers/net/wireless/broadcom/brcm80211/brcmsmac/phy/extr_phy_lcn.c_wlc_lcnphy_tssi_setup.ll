; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tssi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tssi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.phytbl_info = type { i32, i32*, i32, i32, i32 }

@BFL_FEM = common dso_local global i32 0, align 4
@LCNPHY_TSSI_EXT = common dso_local global i32 0, align 4
@LCNPHY_TSSI_POST_PA = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@RADIO_2064_REG028 = common dso_local global i32 0, align 4
@RADIO_2064_REG086 = common dso_local global i32 0, align 4
@RADIO_2064_REG03A = common dso_local global i32 0, align 4
@RADIO_2064_REG11A = common dso_local global i32 0, align 4
@RADIO_2064_REG025 = common dso_local global i32 0, align 4
@RADIO_2064_REG005 = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@RADIO_2064_REG035 = common dso_local global i32 0, align 4
@RADIO_2064_REG036 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_tssi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tssi_setup(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.phytbl_info, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BFL_FEM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  %17 = load i32, i32* @LCNPHY_TSSI_EXT, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %1
  store i32 14, i32* %7, align 4
  %19 = load i32, i32* @LCNPHY_TSSI_POST_PA, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %22 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 0
  store i32 32, i32* %23, align 8
  %24 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 1
  store i32* %5, i32** %24, align 8
  %25 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i32 0, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %36, %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 128
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %31, %struct.phytbl_info* %3)
  %33 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %27

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i32 704, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %50, %39
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 128
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %45, %struct.phytbl_info* %3)
  %47 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %41

53:                                               ; preds = %41
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = call i32 @mod_phy_reg(%struct.brcms_phy* %54, i32 1283, i32 1, i32 0)
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = call i32 @mod_phy_reg(%struct.brcms_phy* %56, i32 1283, i32 4, i32 0)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = call i32 @mod_phy_reg(%struct.brcms_phy* %58, i32 1283, i32 16, i32 16)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @wlc_lcnphy_set_tssi_mux(%struct.brcms_phy* %60, i32 %61)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %64 = call i32 @mod_phy_reg(%struct.brcms_phy* %63, i32 1188, i32 16384, i32 0)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = call i32 @mod_phy_reg(%struct.brcms_phy* %65, i32 1188, i32 32768, i32 32768)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = call i32 @mod_phy_reg(%struct.brcms_phy* %67, i32 1232, i32 32, i32 0)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = call i32 @mod_phy_reg(%struct.brcms_phy* %69, i32 1188, i32 511, i32 0)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = call i32 @mod_phy_reg(%struct.brcms_phy* %71, i32 1189, i32 255, i32 255)
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = call i32 @mod_phy_reg(%struct.brcms_phy* %73, i32 1189, i32 28672, i32 20480)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = call i32 @mod_phy_reg(%struct.brcms_phy* %75, i32 1189, i32 1792, i32 0)
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = call i32 @mod_phy_reg(%struct.brcms_phy* %77, i32 1037, i32 255, i32 64)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = call i32 @mod_phy_reg(%struct.brcms_phy* %79, i32 1037, i32 1792, i32 1024)
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %82 = call i32 @mod_phy_reg(%struct.brcms_phy* %81, i32 1186, i32 255, i32 64)
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %84 = call i32 @mod_phy_reg(%struct.brcms_phy* %83, i32 1186, i32 1792, i32 1024)
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = call i32 @mod_phy_reg(%struct.brcms_phy* %85, i32 1232, i32 32704, i32 0)
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = call i32 @mod_phy_reg(%struct.brcms_phy* %87, i32 1192, i32 255, i32 1)
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = call i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy* %89)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %92 = call i32 @mod_phy_reg(%struct.brcms_phy* %91, i32 1190, i32 32768, i32 32768)
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %94 = call i32 @mod_phy_reg(%struct.brcms_phy* %93, i32 1190, i32 511, i32 255)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = call i32 @mod_phy_reg(%struct.brcms_phy* %95, i32 1178, i32 511, i32 255)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %98 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @LCNREV_IS(i32 %100, i32 2)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %53
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = load i32, i32* @RADIO_2064_REG028, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @mod_radio_reg(%struct.brcms_phy* %104, i32 %105, i32 15, i32 %106)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %109 = load i32, i32* @RADIO_2064_REG086, align 4
  %110 = call i32 @mod_radio_reg(%struct.brcms_phy* %108, i32 %109, i32 4, i32 4)
  br label %123

111:                                              ; preds = %53
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %113 = load i32, i32* @RADIO_2064_REG028, align 4
  %114 = load i32, i32* %7, align 4
  %115 = shl i32 %114, 1
  %116 = call i32 @mod_radio_reg(%struct.brcms_phy* %112, i32 %113, i32 30, i32 %115)
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = load i32, i32* @RADIO_2064_REG03A, align 4
  %119 = call i32 @mod_radio_reg(%struct.brcms_phy* %117, i32 %118, i32 1, i32 1)
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %121 = load i32, i32* @RADIO_2064_REG11A, align 4
  %122 = call i32 @mod_radio_reg(%struct.brcms_phy* %120, i32 %121, i32 8, i32 8)
  br label %123

123:                                              ; preds = %111, %103
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %125 = load i32, i32* @RADIO_2064_REG025, align 4
  %126 = call i32 @write_radio_reg(%struct.brcms_phy* %124, i32 %125, i32 12)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @LCNREV_IS(i32 %130, i32 2)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %135 = load i32, i32* @RADIO_2064_REG03A, align 4
  %136 = call i32 @mod_radio_reg(%struct.brcms_phy* %134, i32 %135, i32 1, i32 1)
  br label %152

137:                                              ; preds = %123
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %139 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @CHSPEC_IS2G(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = load i32, i32* @RADIO_2064_REG03A, align 4
  %146 = call i32 @mod_radio_reg(%struct.brcms_phy* %144, i32 %145, i32 2, i32 2)
  br label %151

147:                                              ; preds = %137
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = load i32, i32* @RADIO_2064_REG03A, align 4
  %150 = call i32 @mod_radio_reg(%struct.brcms_phy* %148, i32 %149, i32 2, i32 0)
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151, %133
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %154 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @LCNREV_IS(i32 %156, i32 2)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = load i32, i32* @RADIO_2064_REG03A, align 4
  %162 = call i32 @mod_radio_reg(%struct.brcms_phy* %160, i32 %161, i32 2, i32 2)
  br label %167

163:                                              ; preds = %152
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %165 = load i32, i32* @RADIO_2064_REG03A, align 4
  %166 = call i32 @mod_radio_reg(%struct.brcms_phy* %164, i32 %165, i32 4, i32 4)
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = load i32, i32* @RADIO_2064_REG11A, align 4
  %170 = call i32 @mod_radio_reg(%struct.brcms_phy* %168, i32 %169, i32 1, i32 1)
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %172 = load i32, i32* @RADIO_2064_REG005, align 4
  %173 = call i32 @mod_radio_reg(%struct.brcms_phy* %171, i32 %172, i32 8, i32 8)
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = call i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %167
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = call i32 @mod_phy_reg(%struct.brcms_phy* %178, i32 1239, i32 28680, i32 8192)
  br label %180

180:                                              ; preds = %177, %167
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = call i32 @wlc_lcnphy_rfseq_tbl_adc_pwrup(%struct.brcms_phy* %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* @LCNPHY_TBL_ID_RFSEQ, align 4
  %184 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 4
  store i32 %183, i32* %184, align 8
  %185 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 0
  store i32 16, i32* %185, align 8
  %186 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 1
  store i32* %4, i32** %186, align 8
  %187 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32 1, i32* %187, align 8
  %188 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i32 6, i32* %188, align 4
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %190 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %189, %struct.phytbl_info* %3)
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %192 = call i32 @mod_phy_reg(%struct.brcms_phy* %191, i32 2360, i32 4, i32 4)
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %194 = call i32 @mod_phy_reg(%struct.brcms_phy* %193, i32 2361, i32 4, i32 4)
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %196 = call i32 @mod_phy_reg(%struct.brcms_phy* %195, i32 1188, i32 4096, i32 4096)
  %197 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %198 = call i32 @mod_phy_reg(%struct.brcms_phy* %197, i32 1239, i32 4, i32 4)
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %200 = call i32 @mod_phy_reg(%struct.brcms_phy* %199, i32 1239, i32 3840, i32 0)
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = load i32, i32* @RADIO_2064_REG035, align 4
  %203 = call i32 @mod_radio_reg(%struct.brcms_phy* %201, i32 %202, i32 255, i32 0)
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %205 = load i32, i32* @RADIO_2064_REG036, align 4
  %206 = call i32 @mod_radio_reg(%struct.brcms_phy* %204, i32 %205, i32 3, i32 0)
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %208 = load i32, i32* @RADIO_2064_REG11A, align 4
  %209 = call i32 @mod_radio_reg(%struct.brcms_phy* %207, i32 %208, i32 8, i32 8)
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %211 = call i32 @wlc_lcnphy_pwrctrl_rssiparams(%struct.brcms_phy* %210)
  ret void
}

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tssi_mux(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy*) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_rfseq_tbl_adc_pwrup(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_pwrctrl_rssiparams(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
