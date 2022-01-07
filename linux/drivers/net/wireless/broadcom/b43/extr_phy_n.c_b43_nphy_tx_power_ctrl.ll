; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32 }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32*, i64, i32 }

@B43_NPHY_TXPCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_COEFF = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_HWPCTLEN = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_PCTLEN = common dso_local global i32 0, align 4
@B43_NPHY_C1_TXPCTL_STAT = common dso_local global i32 0, align 4
@B43_NPHY_C2_TXPCTL_STAT = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3_SCALE = common dso_local global i32 0, align 4
@B43_HF_TSSIRPSMW = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT_PIDXI1 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_tx_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_ctrl(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_n*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  store %struct.b43_phy* %13, %struct.b43_phy** %5, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 1
  %17 = load %struct.b43_phy_n*, %struct.b43_phy_n** %16, align 8
  store %struct.b43_phy_n* %17, %struct.b43_phy_n** %6, align 8
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @b43_current_band(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %23 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %32 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %175, label %35

35:                                               ; preds = %29
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 3
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %44 = call i32 @b43_phy_read(%struct.b43_wldev* %42, i32 %43)
  %45 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %46 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %41
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* @B43_NPHY_C1_TXPCTL_STAT, align 4
  %55 = call i32 @b43_phy_read(%struct.b43_wldev* %53, i32 %54)
  %56 = and i32 %55, 127
  %57 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %58 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = load i32, i32* @B43_NPHY_C2_TXPCTL_STAT, align 4
  %63 = call i32 @b43_phy_read(%struct.b43_wldev* %61, i32 %62)
  %64 = and i32 %63, 127
  %65 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %66 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %52, %41, %35
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %72 = call i32 @b43_phy_write(%struct.b43_wldev* %70, i32 %71, i32 26688)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %80, %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 84
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %79 = call i32 @b43_phy_write(%struct.b43_wldev* %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %73

83:                                               ; preds = %73
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %85 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %86 = call i32 @b43_phy_write(%struct.b43_wldev* %84, i32 %85, i32 27712)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %94, %83
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 84
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %93 = call i32 @b43_phy_write(%struct.b43_wldev* %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %87

97:                                               ; preds = %87
  %98 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %99 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %10, align 4
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sge i32 %104, 3
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %97
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %112 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %113 = load i32, i32* %10, align 4
  %114 = xor i32 %113, -1
  %115 = call i32 @b43_phy_mask(%struct.b43_wldev* %111, i32 %112, i32 %114)
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %117 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 3
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %123 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %124 = call i32 @b43_phy_set(%struct.b43_wldev* %122, i32 %123, i32 256)
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %126 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %127 = call i32 @b43_phy_set(%struct.b43_wldev* %125, i32 %126, i32 256)
  br label %132

128:                                              ; preds = %110
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %130 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %131 = call i32 @b43_phy_set(%struct.b43_wldev* %129, i32 %130, i32 16384)
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %134 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %140 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %141 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE, align 4
  %142 = xor i32 %141, -1
  %143 = call i32 @b43_phy_maskset(%struct.b43_wldev* %139, i32 %140, i32 %142, i32 83)
  br label %157

144:                                              ; preds = %132
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %146 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %152 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %153 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE, align 4
  %154 = xor i32 %153, -1
  %155 = call i32 @b43_phy_maskset(%struct.b43_wldev* %151, i32 %152, i32 %154, i32 90)
  br label %156

156:                                              ; preds = %150, %144
  br label %157

157:                                              ; preds = %156, %138
  %158 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %159 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %165 = call i64 @b43_is_40mhz(%struct.b43_wldev* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %169 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %170 = call i32 @b43_hf_read(%struct.b43_wldev* %169)
  %171 = load i32, i32* @B43_HF_TSSIRPSMW, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @b43_hf_write(%struct.b43_wldev* %168, i32 %172)
  br label %174

174:                                              ; preds = %167, %163, %157
  br label %382

175:                                              ; preds = %29
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %177 = call i32 @B43_NTAB16(i32 26, i32 64)
  %178 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %179 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %176, i32 %177, i32 84, i32 %180)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %183 = call i32 @B43_NTAB16(i32 27, i32 64)
  %184 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %185 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %182, i32 %183, i32 84, i32 %186)
  %188 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %189 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %190 = or i32 %188, %189
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %192 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %193 = or i32 %191, %192
  store i32 %193, i32* %9, align 4
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %195 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sge i32 %197, 3
  br i1 %198, label %199, label %210

199:                                              ; preds = %175
  %200 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %207 = load i32, i32* %9, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %205, %199
  br label %210

210:                                              ; preds = %209, %175
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %212 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %213 = load i32, i32* %8, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @b43_phy_maskset(%struct.b43_wldev* %211, i32 %212, i32 %214, i32 %215)
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %261

220:                                              ; preds = %210
  %221 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %222 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp sge i32 %223, 19
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %260

226:                                              ; preds = %220
  %227 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %228 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp sge i32 %229, 7
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %233 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %234 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %235 = xor i32 %234, -1
  %236 = call i32 @b43_phy_maskset(%struct.b43_wldev* %232, i32 %233, i32 %235, i32 50)
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %238 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %239 = load i32, i32* @B43_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %240 = xor i32 %239, -1
  %241 = call i32 @b43_phy_maskset(%struct.b43_wldev* %237, i32 %238, i32 %240, i32 50)
  br label %259

242:                                              ; preds = %226
  %243 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %244 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %245 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %246 = xor i32 %245, -1
  %247 = call i32 @b43_phy_maskset(%struct.b43_wldev* %243, i32 %244, i32 %246, i32 100)
  %248 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %249 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %258

252:                                              ; preds = %242
  %253 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %254 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %255 = load i32, i32* @B43_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %256 = xor i32 %255, -1
  %257 = call i32 @b43_phy_maskset(%struct.b43_wldev* %253, i32 %254, i32 %256, i32 100)
  br label %258

258:                                              ; preds = %252, %242
  br label %259

259:                                              ; preds = %258, %231
  br label %260

260:                                              ; preds = %259, %225
  br label %261

261:                                              ; preds = %260, %210
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %263 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp sge i32 %265, 3
  br i1 %266, label %267, label %308

267:                                              ; preds = %261
  %268 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %269 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 128
  br i1 %273, label %274, label %307

274:                                              ; preds = %267
  %275 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %276 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 128
  br i1 %280, label %281, label %307

281:                                              ; preds = %274
  %282 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %283 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %284 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %285 = xor i32 %284, -1
  %286 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %287 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @b43_phy_maskset(%struct.b43_wldev* %282, i32 %283, i32 %285, i32 %290)
  %292 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %293 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp sgt i32 %295, 1
  br i1 %296, label %297, label %306

297:                                              ; preds = %281
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %299 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %300 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %301 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @b43_phy_maskset(%struct.b43_wldev* %298, i32 %299, i32 -256, i32 %304)
  br label %306

306:                                              ; preds = %297, %281
  br label %307

307:                                              ; preds = %306, %274, %267
  br label %308

308:                                              ; preds = %307, %261
  %309 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %310 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp sge i32 %311, 7
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %314

314:                                              ; preds = %313, %308
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %316 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp sge i32 %318, 3
  br i1 %319, label %320, label %327

320:                                              ; preds = %314
  %321 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %322 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %323 = call i32 @b43_phy_mask(%struct.b43_wldev* %321, i32 %322, i32 -257)
  %324 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %325 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %326 = call i32 @b43_phy_mask(%struct.b43_wldev* %324, i32 %325, i32 -257)
  br label %331

327:                                              ; preds = %314
  %328 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %329 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %330 = call i32 @b43_phy_mask(%struct.b43_wldev* %328, i32 %329, i32 -16385)
  br label %331

331:                                              ; preds = %327, %320
  %332 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %333 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp eq i32 %335, 2
  br i1 %336, label %337, label %341

337:                                              ; preds = %331
  %338 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %339 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %340 = call i32 @b43_phy_maskset(%struct.b43_wldev* %338, i32 %339, i32 -256, i32 59)
  br label %352

341:                                              ; preds = %331
  %342 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %343 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp slt i32 %345, 2
  br i1 %346, label %347, label %351

347:                                              ; preds = %341
  %348 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %349 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %350 = call i32 @b43_phy_maskset(%struct.b43_wldev* %348, i32 %349, i32 -256, i32 64)
  br label %351

351:                                              ; preds = %347, %341
  br label %352

352:                                              ; preds = %351, %337
  %353 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %354 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %356, 2
  br i1 %357, label %358, label %370

358:                                              ; preds = %352
  %359 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %360 = call i64 @b43_is_40mhz(%struct.b43_wldev* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %358
  %363 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %364 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %365 = call i32 @b43_hf_read(%struct.b43_wldev* %364)
  %366 = load i32, i32* @B43_HF_TSSIRPSMW, align 4
  %367 = xor i32 %366, -1
  %368 = and i32 %365, %367
  %369 = call i32 @b43_hf_write(%struct.b43_wldev* %363, i32 %368)
  br label %370

370:                                              ; preds = %362, %358, %352
  %371 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %372 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %370
  %375 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %376 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %377 = call i32 @b43_phy_mask(%struct.b43_wldev* %375, i32 %376, i32 -5)
  %378 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %379 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %380 = call i32 @b43_phy_mask(%struct.b43_wldev* %378, i32 %379, i32 -5)
  br label %381

381:                                              ; preds = %374, %370
  br label %382

382:                                              ; preds = %381, %174
  %383 = load %struct.b43_phy_n*, %struct.b43_phy_n** %6, align 8
  %384 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %382
  %388 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %389 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %388, i32 0)
  br label %390

390:                                              ; preds = %387, %382
  ret void
}

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
