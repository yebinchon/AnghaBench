; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, %struct.ieee80211_channel*, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_channel = type { i64, i32 }
%struct.carl9170_phy_freq_params = type { i32, i32, i32, i32 }
%struct.carl9170_rf_init_result = type { i32 }
%struct.carl9170_rf_init = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@CARL9170FW_PHY_HT_ENABLE = common dso_local global i32 0, align 4
@CARL9170FW_PHY_HT_DYN2040 = common dso_local global i32 0, align 4
@AR9170_PWR_REG_RESET = common dso_local global i32 0, align 4
@AR9170_PWR_RESET_BB_COLD_RESET = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CARL9170_CMD_FREQ_START = common dso_local global i32 0, align 4
@AR9170_PHY_REG_HEAVY_CLIP_ENABLE = common dso_local global i32 0, align 4
@AR9170_PHY_TURBO_FC_SINGLE_HT_LTF1 = common dso_local global i32 0, align 4
@AR9170_PHY_TURBO_FC_HT_EN = common dso_local global i32 0, align 4
@AR9170_PHY_TURBO_FC_DYN2040_EN = common dso_local global i32 0, align 4
@AR9170_PHY_TURBO_FC_SHORT_GI_40 = common dso_local global i32 0, align 4
@AR9170_PHY_TURBO_FC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@AR9170_PHY_TURBO_FC_WALSH = common dso_local global i32 0, align 4
@AR9170_PHY_REG_TURBO = common dso_local global i32 0, align 4
@CARL9170FW_PHY_HT_EXT_CHAN_OFF = common dso_local global i32 0, align 4
@CARL9170_CMD_RF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"channel change: %d -> %d failed (%d).\0A\00", align 1
@CARL9170_RR_TOO_MANY_PHY_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to set heavy clip\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_set_channel(%struct.ar9170* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.carl9170_phy_freq_params*, align 8
  %9 = alloca %struct.carl9170_rf_init_result, align 4
  %10 = alloca %struct.carl9170_rf_init, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @nl80211_to_carl(i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %20 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i64 @conf_is_ht(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @CARL9170FW_PHY_HT_ENABLE, align 4
  %27 = load i32, i32* %13, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i64 @conf_is_ht40(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @CARL9170FW_PHY_HT_DYN2040, align 4
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %42 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %41, i32 0, i32 3
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %42, align 8
  %44 = icmp ne %struct.ieee80211_channel* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %47 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %46, i32 0, i32 3
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %47, align 8
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %16, align 8
  %49 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %50 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %49, i32 0, i32 3
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %50, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %53 = load i32, i32* @AR9170_PWR_REG_RESET, align 4
  %54 = load i32, i32* @AR9170_PWR_RESET_BB_COLD_RESET, align 4
  %55 = call i32 @carl9170_write_reg(%struct.ar9170* %52, i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %4, align 4
  br label %333

60:                                               ; preds = %51
  %61 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %62 = load i32, i32* @AR9170_PWR_REG_RESET, align 4
  %63 = call i32 @carl9170_write_reg(%struct.ar9170* %61, i32 %62, i32 0)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %4, align 4
  br label %333

68:                                               ; preds = %60
  %69 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @carl9170_init_phy(%struct.ar9170* %69, i64 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %4, align 4
  br label %333

78:                                               ; preds = %68
  %79 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %80 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @carl9170_init_rf_banks_0_7(%struct.ar9170* %79, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %4, align 4
  br label %333

91:                                               ; preds = %78
  %92 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %93 = load i32, i32* @CARL9170_CMD_FREQ_START, align 4
  %94 = call i32 @carl9170_exec_cmd(%struct.ar9170* %92, i32 %93, i32 0, %struct.carl9170_rf_init* null, i32 0, %struct.carl9170_rf_init_result* null)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  br label %333

99:                                               ; preds = %91
  %100 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %101 = load i32, i32* @AR9170_PHY_REG_HEAVY_CLIP_ENABLE, align 4
  %102 = call i32 @carl9170_write_reg(%struct.ar9170* %100, i32 %101, i32 512)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %333

107:                                              ; preds = %99
  %108 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %109 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @carl9170_init_rf_bank4_pwr(%struct.ar9170* %108, i32 %114, i32 %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %4, align 4
  br label %333

124:                                              ; preds = %107
  %125 = load i32, i32* @AR9170_PHY_TURBO_FC_SINGLE_HT_LTF1, align 4
  %126 = load i32, i32* @AR9170_PHY_TURBO_FC_HT_EN, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %15, align 4
  switch i32 %128, label %144 [
    i32 130, label %129
    i32 128, label %130
    i32 129, label %136
  ]

129:                                              ; preds = %124
  br label %148

130:                                              ; preds = %124
  %131 = load i32, i32* @AR9170_PHY_TURBO_FC_DYN2040_EN, align 4
  %132 = load i32, i32* @AR9170_PHY_TURBO_FC_SHORT_GI_40, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %148

136:                                              ; preds = %124
  %137 = load i32, i32* @AR9170_PHY_TURBO_FC_DYN2040_EN, align 4
  %138 = load i32, i32* @AR9170_PHY_TURBO_FC_SHORT_GI_40, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @AR9170_PHY_TURBO_FC_DYN2040_PRI_CH, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %148

144:                                              ; preds = %124
  %145 = call i32 (...) @BUG()
  %146 = load i32, i32* @ENOSYS, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %333

148:                                              ; preds = %136, %130, %129
  %149 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %150 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* @AR9170_PHY_TURBO_FC_WALSH, align 4
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  br label %158

158:                                              ; preds = %154, %148
  %159 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %160 = load i32, i32* @AR9170_PHY_REG_TURBO, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @carl9170_write_reg(%struct.ar9170* %159, i32 %160, i32 %161)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %4, align 4
  br label %333

167:                                              ; preds = %158
  %168 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %169 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %170 = call i32 @carl9170_set_freq_cal_data(%struct.ar9170* %168, %struct.ieee80211_channel* %169)
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %4, align 4
  br label %333

175:                                              ; preds = %167
  %176 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %177 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %178 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @carl9170_set_power_cal(%struct.ar9170* %176, i32 %179, i32 %180)
  %182 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %183 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %184 = call i32 @carl9170_set_mac_tpc(%struct.ar9170* %182, %struct.ieee80211_channel* %183)
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %175
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %4, align 4
  br label %333

189:                                              ; preds = %175
  %190 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %191 = load i32, i32* %15, align 4
  %192 = call %struct.carl9170_phy_freq_params* @carl9170_get_hw_dyn_params(%struct.ieee80211_channel* %190, i32 %191)
  store %struct.carl9170_phy_freq_params* %192, %struct.carl9170_phy_freq_params** %8, align 8
  %193 = load i32, i32* %13, align 4
  %194 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 0
  store i32 %193, i32* %194, align 8
  %195 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %196 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %195, i32 0, i32 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = call i64 @conf_is_ht40(i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %189
  %202 = load i32, i32* @CARL9170FW_PHY_HT_EXT_CHAN_OFF, align 4
  %203 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @SET_VAL(i32 %202, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %201, %189
  %208 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %209 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %210, 1000
  %212 = call i8* @cpu_to_le32(i32 %211)
  %213 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 6
  store i8* %212, i8** %213, align 8
  %214 = load %struct.carl9170_phy_freq_params*, %struct.carl9170_phy_freq_params** %8, align 8
  %215 = getelementptr inbounds %struct.carl9170_phy_freq_params, %struct.carl9170_phy_freq_params* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @cpu_to_le32(i32 %216)
  %218 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 5
  store i8* %217, i8** %218, align 8
  %219 = load %struct.carl9170_phy_freq_params*, %struct.carl9170_phy_freq_params** %8, align 8
  %220 = getelementptr inbounds %struct.carl9170_phy_freq_params, %struct.carl9170_phy_freq_params* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i8* @cpu_to_le32(i32 %221)
  %223 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 4
  store i8* %222, i8** %223, align 8
  %224 = load %struct.carl9170_phy_freq_params*, %struct.carl9170_phy_freq_params** %8, align 8
  %225 = getelementptr inbounds %struct.carl9170_phy_freq_params, %struct.carl9170_phy_freq_params* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @cpu_to_le32(i32 %226)
  %228 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 3
  store i8* %227, i8** %228, align 8
  %229 = load %struct.carl9170_phy_freq_params*, %struct.carl9170_phy_freq_params** %8, align 8
  %230 = getelementptr inbounds %struct.carl9170_phy_freq_params, %struct.carl9170_phy_freq_params* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @cpu_to_le32(i32 %231)
  %233 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 2
  store i8* %232, i8** %233, align 8
  %234 = call i8* @cpu_to_le32(i32 2000)
  %235 = getelementptr inbounds %struct.carl9170_rf_init, %struct.carl9170_rf_init* %10, i32 0, i32 1
  store i8* %234, i8** %235, align 8
  %236 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %237 = load i32, i32* @CARL9170_CMD_RF_INIT, align 4
  %238 = call i32 @carl9170_exec_cmd(%struct.ar9170* %236, i32 %237, i32 56, %struct.carl9170_rf_init* %10, i32 4, %struct.carl9170_rf_init_result* %9)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %207
  %242 = load i32, i32* %14, align 4
  store i32 %242, i32* %4, align 4
  br label %333

243:                                              ; preds = %207
  %244 = getelementptr inbounds %struct.carl9170_rf_init_result, %struct.carl9170_rf_init_result* %9, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @le32_to_cpu(i32 %245)
  store i32 %246, i32* %14, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %295

249:                                              ; preds = %243
  %250 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %251 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 8
  %254 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %255 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  %258 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %259 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %258, i32 0, i32 4
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %264 = icmp ne %struct.ieee80211_channel* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %249
  %266 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %16, align 8
  %267 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  br label %270

269:                                              ; preds = %249
  br label %270

270:                                              ; preds = %269, %265
  %271 = phi i32 [ %268, %265 ], [ -1, %269 ]
  %272 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %273 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %14, align 4
  %276 = call i32 (i32, i8*, ...) @wiphy_err(i32 %262, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %271, i32 %274, i32 %275)
  %277 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %278 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp sgt i32 %279, 3
  br i1 %280, label %281, label %285

281:                                              ; preds = %270
  %282 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %283 = load i32, i32* @CARL9170_RR_TOO_MANY_PHY_ERRORS, align 4
  %284 = call i32 @carl9170_restart(%struct.ar9170* %282, i32 %283)
  store i32 0, i32* %4, align 4
  br label %333

285:                                              ; preds = %270
  %286 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %287 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %288 = load i32, i32* %7, align 4
  %289 = call i32 @carl9170_set_channel(%struct.ar9170* %286, %struct.ieee80211_channel* %287, i32 %288)
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %14, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = load i32, i32* %14, align 4
  store i32 %293, i32* %4, align 4
  br label %333

294:                                              ; preds = %285
  br label %298

295:                                              ; preds = %243
  %296 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %297 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %296, i32 0, i32 0
  store i32 0, i32* %297, align 8
  br label %298

298:                                              ; preds = %295, %294
  %299 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %300 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %298
  %304 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %305 = load i32, i32* @AR9170_PHY_REG_HEAVY_CLIP_ENABLE, align 4
  %306 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %307 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = or i32 512, %308
  %310 = call i32 @carl9170_write_reg(%struct.ar9170* %304, i32 %305, i32 %309)
  store i32 %310, i32* %14, align 4
  %311 = load i32, i32* %14, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %325

313:                                              ; preds = %303
  %314 = call i64 (...) @net_ratelimit()
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %318 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %317, i32 0, i32 4
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (i32, i8*, ...) @wiphy_err(i32 %321, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %323

323:                                              ; preds = %316, %313
  %324 = load i32, i32* %14, align 4
  store i32 %324, i32* %4, align 4
  br label %333

325:                                              ; preds = %303
  br label %326

326:                                              ; preds = %325, %298
  %327 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %328 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %329 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %328, i32 0, i32 3
  store %struct.ieee80211_channel* %327, %struct.ieee80211_channel** %329, align 8
  %330 = load i32, i32* %13, align 4
  %331 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %332 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 8
  store i32 0, i32* %4, align 4
  br label %333

333:                                              ; preds = %326, %323, %292, %281, %241, %187, %173, %165, %144, %122, %105, %97, %89, %76, %66, %58
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i32 @nl80211_to_carl(i32) #1

declare dso_local i64 @conf_is_ht(i32*) #1

declare dso_local i64 @conf_is_ht40(i32*) #1

declare dso_local i32 @carl9170_write_reg(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_init_phy(%struct.ar9170*, i64) #1

declare dso_local i32 @carl9170_init_rf_banks_0_7(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_exec_cmd(%struct.ar9170*, i32, i32, %struct.carl9170_rf_init*, i32, %struct.carl9170_rf_init_result*) #1

declare dso_local i32 @carl9170_init_rf_bank4_pwr(%struct.ar9170*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @carl9170_set_freq_cal_data(%struct.ar9170*, %struct.ieee80211_channel*) #1

declare dso_local i32 @carl9170_set_power_cal(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @carl9170_set_mac_tpc(%struct.ar9170*, %struct.ieee80211_channel*) #1

declare dso_local %struct.carl9170_phy_freq_params* @carl9170_get_hw_dyn_params(%struct.ieee80211_channel*, i32) #1

declare dso_local i32 @SET_VAL(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
