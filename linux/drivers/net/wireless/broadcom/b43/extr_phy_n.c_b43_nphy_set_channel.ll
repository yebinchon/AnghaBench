; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i64, i32, i32 }
%struct.b43_nphy_channeltab_entry_rev2 = type { %struct.b43_phy_n_sfo_cfg }
%struct.b43_phy_n_sfo_cfg = type { i32 }
%struct.b43_nphy_channeltab_entry_rev3 = type { %struct.b43_phy_n_sfo_cfg }
%struct.b43_nphy_chantabent_rev7 = type { %struct.b43_phy_n_sfo_cfg }
%struct.b43_nphy_chantabent_rev7_2g = type { %struct.b43_phy_n_sfo_cfg }

@ESRCH = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@B43_NPHY_RXCTL = common dso_local global i32 0, align 4
@B43_NPHY_RXCTL_BSELU20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@R2057_TIA_CONFIG_CORE0 = common dso_local global i32 0, align 4
@R2057_TIA_CONFIG_CORE1 = common dso_local global i32 0, align 4
@B2055_MASTER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.ieee80211_channel*, i32)* @b43_nphy_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_set_channel(%struct.b43_wldev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_phy*, align 8
  %9 = alloca %struct.b43_nphy_channeltab_entry_rev2*, align 8
  %10 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %11 = alloca %struct.b43_nphy_chantabent_rev7*, align 8
  %12 = alloca %struct.b43_nphy_chantabent_rev7_2g*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.b43_phy_n_sfo_cfg*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  store %struct.b43_phy* %16, %struct.b43_phy** %8, align 8
  store %struct.b43_nphy_channeltab_entry_rev2* null, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* null, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  store %struct.b43_nphy_chantabent_rev7* null, %struct.b43_nphy_chantabent_rev7** %11, align 8
  store %struct.b43_nphy_chantabent_rev7_2g* null, %struct.b43_nphy_chantabent_rev7_2g** %12, align 8
  %17 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ESRCH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %219

24:                                               ; preds = %3
  %25 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %26 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 7
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @r2057_get_chantabent_rev7(%struct.b43_wldev* %30, i32 %33, %struct.b43_nphy_chantabent_rev7** %11, %struct.b43_nphy_chantabent_rev7_2g** %12)
  %35 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %11, align 8
  %36 = icmp ne %struct.b43_nphy_chantabent_rev7* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.b43_nphy_chantabent_rev7_2g*, %struct.b43_nphy_chantabent_rev7_2g** %12, align 8
  %39 = icmp ne %struct.b43_nphy_chantabent_rev7_2g* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ESRCH, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %219

43:                                               ; preds = %37, %29
  br label %74

44:                                               ; preds = %24
  %45 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %46 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 3
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.b43_nphy_channeltab_entry_rev3* @b43_nphy_get_chantabent_rev3(%struct.b43_wldev* %50, i32 %53)
  store %struct.b43_nphy_channeltab_entry_rev3* %54, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %55 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %56 = icmp ne %struct.b43_nphy_channeltab_entry_rev3* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @ESRCH, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %219

60:                                               ; preds = %49
  br label %73

61:                                               ; preds = %44
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.b43_nphy_channeltab_entry_rev2* @b43_nphy_get_chantabent_rev2(%struct.b43_wldev* %62, i32 %65)
  store %struct.b43_nphy_channeltab_entry_rev2* %66, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %67 = load %struct.b43_nphy_channeltab_entry_rev2*, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %68 = icmp ne %struct.b43_nphy_channeltab_entry_rev2* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @ESRCH, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %219

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73, %43
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %80 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %86 = load i32, i32* @B43_NPHY_RXCTL, align 4
  %87 = load i32, i32* @B43_NPHY_RXCTL_BSELU20, align 4
  %88 = call i32 @b43_phy_set(%struct.b43_wldev* %85, i32 %86, i32 %87)
  %89 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %90 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 7
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %95 = call i32 @b43_phy_set(%struct.b43_wldev* %94, i32 784, i32 32768)
  br label %96

96:                                               ; preds = %93, %84
  br label %116

97:                                               ; preds = %75
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %103 = load i32, i32* @B43_NPHY_RXCTL, align 4
  %104 = load i32, i32* @B43_NPHY_RXCTL_BSELU20, align 4
  %105 = xor i32 %104, -1
  %106 = call i32 @b43_phy_mask(%struct.b43_wldev* %102, i32 %103, i32 %105)
  %107 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %108 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %109, 7
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %113 = call i32 @b43_phy_mask(%struct.b43_wldev* %112, i32 784, i32 -32769)
  br label %114

114:                                              ; preds = %111, %101
  br label %115

115:                                              ; preds = %114, %97
  br label %116

116:                                              ; preds = %115, %96
  %117 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %118 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %119, 19
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %218

122:                                              ; preds = %116
  %123 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %124 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %125, 7
  br i1 %126, label %127, label %172

127:                                              ; preds = %122
  %128 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %11, align 8
  %129 = icmp ne %struct.b43_nphy_chantabent_rev7* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %11, align 8
  %132 = getelementptr inbounds %struct.b43_nphy_chantabent_rev7, %struct.b43_nphy_chantabent_rev7* %131, i32 0, i32 0
  br label %136

133:                                              ; preds = %127
  %134 = load %struct.b43_nphy_chantabent_rev7_2g*, %struct.b43_nphy_chantabent_rev7_2g** %12, align 8
  %135 = getelementptr inbounds %struct.b43_nphy_chantabent_rev7_2g, %struct.b43_nphy_chantabent_rev7_2g* %134, i32 0, i32 0
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi %struct.b43_phy_n_sfo_cfg* [ %132, %130 ], [ %135, %133 ]
  store %struct.b43_phy_n_sfo_cfg* %137, %struct.b43_phy_n_sfo_cfg** %14, align 8
  %138 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %139 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %140, 4
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %144 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 6
  br i1 %146, label %147, label %163

147:                                              ; preds = %142, %136
  %148 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %149 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 2, i32 0
  store i32 %154, i32* %13, align 4
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %156 = load i32, i32* @R2057_TIA_CONFIG_CORE0, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @b43_radio_maskset(%struct.b43_wldev* %155, i32 %156, i32 -3, i32 %157)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %160 = load i32, i32* @R2057_TIA_CONFIG_CORE1, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @b43_radio_maskset(%struct.b43_wldev* %159, i32 %160, i32 -3, i32 %161)
  br label %163

163:                                              ; preds = %147, %142
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %165 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %11, align 8
  %166 = load %struct.b43_nphy_chantabent_rev7_2g*, %struct.b43_nphy_chantabent_rev7_2g** %12, align 8
  %167 = call i32 @b43_radio_2057_setup(%struct.b43_wldev* %164, %struct.b43_nphy_chantabent_rev7* %165, %struct.b43_nphy_chantabent_rev7_2g* %166)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %169 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %14, align 8
  %170 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %171 = call i32 @b43_nphy_channel_setup(%struct.b43_wldev* %168, %struct.b43_phy_n_sfo_cfg* %169, %struct.ieee80211_channel* %170)
  br label %217

172:                                              ; preds = %122
  %173 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %174 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp sge i32 %175, 3
  br i1 %176, label %177, label %196

177:                                              ; preds = %172
  %178 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %179 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 4, i32 0
  store i32 %184, i32* %13, align 4
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @b43_radio_maskset(%struct.b43_wldev* %185, i32 8, i32 65531, i32 %186)
  %188 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %189 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %190 = call i32 @b43_radio_2056_setup(%struct.b43_wldev* %188, %struct.b43_nphy_channeltab_entry_rev3* %189)
  %191 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %192 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %193 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev3, %struct.b43_nphy_channeltab_entry_rev3* %192, i32 0, i32 0
  %194 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %195 = call i32 @b43_nphy_channel_setup(%struct.b43_wldev* %191, %struct.b43_phy_n_sfo_cfg* %193, %struct.ieee80211_channel* %194)
  br label %216

196:                                              ; preds = %172
  %197 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %198 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 32, i32 80
  store i32 %203, i32* %13, align 4
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %205 = load i32, i32* @B2055_MASTER1, align 4
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @b43_radio_maskset(%struct.b43_wldev* %204, i32 %205, i32 65423, i32 %206)
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %209 = load %struct.b43_nphy_channeltab_entry_rev2*, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %210 = call i32 @b43_radio_2055_setup(%struct.b43_wldev* %208, %struct.b43_nphy_channeltab_entry_rev2* %209)
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %212 = load %struct.b43_nphy_channeltab_entry_rev2*, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %213 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev2, %struct.b43_nphy_channeltab_entry_rev2* %212, i32 0, i32 0
  %214 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %215 = call i32 @b43_nphy_channel_setup(%struct.b43_wldev* %211, %struct.b43_phy_n_sfo_cfg* %213, %struct.ieee80211_channel* %214)
  br label %216

216:                                              ; preds = %196, %177
  br label %217

217:                                              ; preds = %216, %163
  br label %218

218:                                              ; preds = %217, %121
  store i32 0, i32* %4, align 4
  br label %219

219:                                              ; preds = %218, %69, %57, %40, %21
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @r2057_get_chantabent_rev7(%struct.b43_wldev*, i32, %struct.b43_nphy_chantabent_rev7**, %struct.b43_nphy_chantabent_rev7_2g**) #1

declare dso_local %struct.b43_nphy_channeltab_entry_rev3* @b43_nphy_get_chantabent_rev3(%struct.b43_wldev*, i32) #1

declare dso_local %struct.b43_nphy_channeltab_entry_rev2* @b43_nphy_get_chantabent_rev2(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_2057_setup(%struct.b43_wldev*, %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7_2g*) #1

declare dso_local i32 @b43_nphy_channel_setup(%struct.b43_wldev*, %struct.b43_phy_n_sfo_cfg*, %struct.ieee80211_channel*) #1

declare dso_local i32 @b43_radio_2056_setup(%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev3*) #1

declare dso_local i32 @b43_radio_2055_setup(%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
