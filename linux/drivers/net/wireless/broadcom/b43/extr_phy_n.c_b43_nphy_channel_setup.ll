; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_channel_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_channel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_2__* }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.b43_phy_n_sfo_cfg = type { i32 }
%struct.ieee80211_channel = type { i32, i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_NPHY_BANDCTL = common dso_local global i32 0, align 4
@B43_NPHY_BANDCTL_5GHZ = common dso_local global i32 0, align 4
@B43_MMIO_PSM_PHY_HDR = common dso_local global i32 0, align 4
@B43_PHY_B_BBCFG = common dso_local global i32 0, align 4
@B43_PHY_B_BBCFG_RSTCCA = common dso_local global i32 0, align 4
@B43_PHY_B_BBCFG_RSTRX = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_PHY_B_TEST = common dso_local global i32 0, align 4
@B43_SPUR_AVOID_DISABLE = common dso_local global i64 0, align 8
@B43_SPUR_AVOID_FORCE = common dso_local global i64 0, align 8
@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@B43_NPHY_NDATAT_DUP40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_phy_n_sfo_cfg*, %struct.ieee80211_channel*)* @b43_nphy_channel_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_channel_setup(%struct.b43_wldev* %0, %struct.b43_phy_n_sfo_cfg* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.b43_phy_n_sfo_cfg*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca %struct.b43_phy_n*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.b43_phy_n_sfo_cfg* %1, %struct.b43_phy_n_sfo_cfg** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  store %struct.b43_phy* %13, %struct.b43_phy** %7, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 1
  %17 = load %struct.b43_phy_n*, %struct.b43_phy_n** %16, align 8
  store %struct.b43_phy_n* %17, %struct.b43_phy_n** %8, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %3
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %28 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %29 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %30 = xor i32 %29, -1
  %31 = call i32 @b43_phy_mask(%struct.b43_wldev* %27, i32 %28, i32 %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %33 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %34 = call i32 @b43_read16(%struct.b43_wldev* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %36 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, 4
  %39 = call i32 @b43_write16(%struct.b43_wldev* %35, i32 %36, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %41 = load i32, i32* @B43_PHY_B_BBCFG, align 4
  %42 = load i32, i32* @B43_PHY_B_BBCFG_RSTCCA, align 4
  %43 = load i32, i32* @B43_PHY_B_BBCFG_RSTRX, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @b43_phy_set(%struct.b43_wldev* %40, i32 %41, i32 %44)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %47 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @b43_write16(%struct.b43_wldev* %46, i32 %47, i32 %48)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %51 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %52 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %53 = call i32 @b43_phy_set(%struct.b43_wldev* %50, i32 %51, i32 %52)
  br label %86

54:                                               ; preds = %3
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %62 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %63 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @b43_phy_mask(%struct.b43_wldev* %61, i32 %62, i32 %64)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %67 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %68 = call i32 @b43_read16(%struct.b43_wldev* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %70 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, 4
  %73 = call i32 @b43_write16(%struct.b43_wldev* %69, i32 %70, i32 %72)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %75 = load i32, i32* @B43_PHY_B_BBCFG, align 4
  %76 = load i32, i32* @B43_PHY_B_BBCFG_RSTCCA, align 4
  %77 = load i32, i32* @B43_PHY_B_BBCFG_RSTRX, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = call i32 @b43_phy_mask(%struct.b43_wldev* %74, i32 %75, i32 %79)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %82 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @b43_write16(%struct.b43_wldev* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %60, %54
  br label %86

86:                                               ; preds = %85, %26
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %88 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %5, align 8
  %89 = call i32 @b43_chantab_phy_upload(%struct.b43_wldev* %87, %struct.b43_phy_n_sfo_cfg* %88)
  %90 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 14
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %96 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %95, i32 2, i32 0)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %98 = load i32, i32* @B43_PHY_B_TEST, align 4
  %99 = call i32 @b43_phy_set(%struct.b43_wldev* %97, i32 %98, i32 2048)
  br label %113

100:                                              ; preds = %86
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %102 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %101, i32 2, i32 2)
  %103 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %110 = load i32, i32* @B43_PHY_B_TEST, align 4
  %111 = call i32 @b43_phy_mask(%struct.b43_wldev* %109, i32 %110, i32 -2113)
  br label %112

112:                                              ; preds = %108, %100
  br label %113

113:                                              ; preds = %112, %94
  %114 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %115 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %120 = call i32 @b43_nphy_tx_power_fix(%struct.b43_wldev* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %123 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %125, 3
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %129 = call i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev* %128)
  br label %130

130:                                              ; preds = %127, %121
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %132 = call i32 @b43_nphy_tx_lpf_bw(%struct.b43_wldev* %131)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %134 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %136, 3
  br i1 %137, label %138, label %293

138:                                              ; preds = %130
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %140 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %140, i32 0, i32 1
  %142 = load %struct.b43_phy_n*, %struct.b43_phy_n** %141, align 8
  %143 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @B43_SPUR_AVOID_DISABLE, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %293

147:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %149 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %149, i32 0, i32 1
  %151 = load %struct.b43_phy_n*, %struct.b43_phy_n** %150, align 8
  %152 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @B43_SPUR_AVOID_FORCE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 1, i32* %11, align 4
  br label %254

157:                                              ; preds = %147
  %158 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %159 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sge i32 %160, 19
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %253

163:                                              ; preds = %157
  %164 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %165 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %166, 18
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %252

169:                                              ; preds = %163
  %170 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %171 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sge i32 %172, 17
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %251

175:                                              ; preds = %169
  %176 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %177 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %178, 16
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %250

181:                                              ; preds = %175
  %182 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %183 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp sge i32 %184, 7
  br i1 %185, label %186, label %207

186:                                              ; preds = %181
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %188 = call i32 @b43_is_40mhz(%struct.b43_wldev* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, 13
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = icmp eq i32 %194, 14
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %197, 153
  br i1 %198, label %199, label %200

199:                                              ; preds = %196, %193, %190
  store i32 1, i32* %11, align 4
  br label %200

200:                                              ; preds = %199, %196
  br label %206

201:                                              ; preds = %186
  %202 = load i32, i32* %9, align 4
  %203 = icmp eq i32 %202, 54
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 1, i32* %11, align 4
  br label %205

205:                                              ; preds = %204, %201
  br label %206

206:                                              ; preds = %205, %200
  br label %249

207:                                              ; preds = %181
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %209 = call i32 @b43_is_40mhz(%struct.b43_wldev* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %9, align 4
  %213 = icmp sge i32 %212, 5
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %9, align 4
  %216 = icmp sle i32 %215, 8
  br i1 %216, label %223, label %217

217:                                              ; preds = %214, %211
  %218 = load i32, i32* %9, align 4
  %219 = icmp eq i32 %218, 13
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %9, align 4
  %222 = icmp eq i32 %221, 14
  br i1 %222, label %223, label %224

223:                                              ; preds = %220, %217, %214
  store i32 1, i32* %11, align 4
  br label %224

224:                                              ; preds = %223, %220
  br label %248

225:                                              ; preds = %207
  %226 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %227 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %225
  %231 = load i32, i32* %9, align 4
  %232 = icmp eq i32 %231, 38
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %9, align 4
  %235 = icmp eq i32 %234, 102
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %9, align 4
  %238 = icmp eq i32 %237, 118
  br i1 %238, label %239, label %247

239:                                              ; preds = %236, %233, %230
  %240 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %241 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %240, i32 0, i32 1
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 18198
  %246 = zext i1 %245 to i32
  store i32 %246, i32* %11, align 4
  br label %247

247:                                              ; preds = %239, %236, %225
  br label %248

248:                                              ; preds = %247, %224
  br label %249

249:                                              ; preds = %248, %206
  br label %250

250:                                              ; preds = %249, %180
  br label %251

251:                                              ; preds = %250, %174
  br label %252

252:                                              ; preds = %251, %168
  br label %253

253:                                              ; preds = %252, %162
  br label %254

254:                                              ; preds = %253, %156
  %255 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @b43_nphy_pmu_spur_avoid(%struct.b43_wldev* %255, i32 %256)
  %258 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %259 = load i32, i32* %11, align 4
  %260 = call i32 @b43_mac_switch_freq(%struct.b43_wldev* %258, i32 %259)
  %261 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %262 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 3
  br i1 %265, label %272, label %266

266:                                              ; preds = %254
  %267 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %268 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 4
  br i1 %271, label %272, label %275

272:                                              ; preds = %266, %254
  %273 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %274 = call i32 @b43_wireless_core_phy_pll_reset(%struct.b43_wldev* %273)
  br label %275

275:                                              ; preds = %272, %266
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %275
  %279 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %280 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %281 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %282 = call i32 @b43_phy_set(%struct.b43_wldev* %279, i32 %280, i32 %281)
  br label %290

283:                                              ; preds = %275
  %284 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %285 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %286 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %287 = xor i32 %286, -1
  %288 = and i32 %287, 65535
  %289 = call i32 @b43_phy_mask(%struct.b43_wldev* %284, i32 %285, i32 %288)
  br label %290

290:                                              ; preds = %283, %278
  %291 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %292 = call i32 @b43_nphy_reset_cca(%struct.b43_wldev* %291)
  br label %293

293:                                              ; preds = %290, %138, %130
  %294 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %295 = load i32, i32* @B43_NPHY_NDATAT_DUP40, align 4
  %296 = call i32 @b43_phy_write(%struct.b43_wldev* %294, i32 %295, i32 14384)
  %297 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %298 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp sge i32 %299, 3
  br i1 %300, label %301, label %304

301:                                              ; preds = %293
  %302 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %303 = call i32 @b43_nphy_spur_workaround(%struct.b43_wldev* %302)
  br label %304

304:                                              ; preds = %301, %293
  ret void
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_chantab_phy_upload(%struct.b43_wldev*, %struct.b43_phy_n_sfo_cfg*) #1

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_tx_power_fix(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_lpf_bw(%struct.b43_wldev*) #1

declare dso_local i32 @b43_is_40mhz(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_pmu_spur_avoid(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_mac_switch_freq(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_wireless_core_phy_pll_reset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_reset_cca(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_spur_workaround(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
