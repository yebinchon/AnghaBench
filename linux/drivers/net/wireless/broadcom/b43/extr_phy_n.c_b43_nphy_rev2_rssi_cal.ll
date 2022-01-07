; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rev2_rssi_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rev2_rssi_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@__const.b43_nphy_rev2_rssi_cal.clip_off = private unnamed_addr constant [2 x i32] [i32 65535, i32 65535], align 4
@N_RSSI_NB = common dso_local global i32 0, align 4
@N_RSSI_W1 = common dso_local global i32 0, align 4
@N_RSSI_W2 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B2055_C1_PD_RXTX = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@B2055_C2_PD_RXTX = common dso_local global i32 0, align 4
@B2055_C1_PD_RSSIMISC = common dso_local global i32 0, align 4
@B2055_C2_PD_RSSIMISC = common dso_local global i32 0, align 4
@B2055_C1_SP_RSSI = common dso_local global i32 0, align 4
@B2055_C2_SP_RSSI = common dso_local global i32 0, align 4
@N_RAIL_I = common dso_local global i32 0, align 4
@N_RAIL_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_rev2_rssi_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rev2_rssi_cal(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [4 x i64], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca [4 x i64], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca [4 x [4 x i64]], align 16
  %23 = alloca [4 x [2 x i64]], align 16
  %24 = alloca [4 x i32], align 16
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %29 = bitcast [2 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_rev2_rssi_cal.clip_off to i8*), i64 8, i1 false)
  %30 = bitcast [4 x i64]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 32, i1 false)
  %31 = bitcast [4 x i32]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 16, i1 false)
  %32 = bitcast [4 x [4 x i64]]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 128, i1 false)
  %33 = bitcast [4 x [2 x i64]]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 64, i1 false)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @N_RSSI_NB, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 6, i32* %10, align 4
  br label %50

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @N_RSSI_W1, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @N_RSSI_W2, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  store i32 25, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %49

47:                                               ; preds = %42
  %48 = call i32 @B43_WARN_ON(i32 1)
  br label %472

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %52 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %51, i32 0, i32 0)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %53, i32 7, i32 4)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %57 = call i32 @b43_nphy_read_clip_detection(%struct.b43_wldev* %55, i32* %56)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %60 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %58, i32* %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @b43_current_band(i32 %63)
  %65 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  store i32 320, i32* %12, align 4
  br label %69

68:                                               ; preds = %50
  store i32 272, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %72 = call i32 @b43_phy_read(%struct.b43_wldev* %70, i32 %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i32, i32* @B2055_C1_PD_RXTX, align 4
  %76 = call i32 @b43_radio_read(%struct.b43_wldev* %74, i32 %75)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %76, i32* %77, align 4
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %79 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @b43_phy_write(%struct.b43_wldev* %78, i32 %79, i32 %80)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = load i32, i32* @B2055_C1_PD_RXTX, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @b43_radio_write(%struct.b43_wldev* %82, i32 %83, i32 %84)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %87 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %88 = call i32 @b43_phy_read(%struct.b43_wldev* %86, i32 %87)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %91 = load i32, i32* @B2055_C2_PD_RXTX, align 4
  %92 = call i32 @b43_radio_read(%struct.b43_wldev* %90, i32 %91)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %95 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @b43_phy_write(%struct.b43_wldev* %94, i32 %95, i32 %96)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = load i32, i32* @B2055_C2_PD_RXTX, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @b43_radio_write(%struct.b43_wldev* %98, i32 %99, i32 %100)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = load i32, i32* @B2055_C1_PD_RSSIMISC, align 4
  %104 = call i32 @b43_radio_read(%struct.b43_wldev* %102, i32 %103)
  %105 = and i32 %104, 7
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %105, i32* %106, align 16
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %108 = load i32, i32* @B2055_C2_PD_RSSIMISC, align 4
  %109 = call i32 @b43_radio_read(%struct.b43_wldev* %107, i32 %108)
  %110 = and i32 %109, 7
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %110, i32* %111, align 4
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %113 = load i32, i32* @B2055_C1_PD_RSSIMISC, align 4
  %114 = call i32 @b43_radio_mask(%struct.b43_wldev* %112, i32 %113, i32 248)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %116 = load i32, i32* @B2055_C2_PD_RSSIMISC, align 4
  %117 = call i32 @b43_radio_mask(%struct.b43_wldev* %115, i32 %116, i32 248)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = load i32, i32* @B2055_C1_SP_RSSI, align 4
  %120 = call i32 @b43_radio_read(%struct.b43_wldev* %118, i32 %119)
  %121 = and i32 %120, 7
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %121, i32* %122, align 8
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %124 = load i32, i32* @B2055_C2_SP_RSSI, align 4
  %125 = call i32 @b43_radio_read(%struct.b43_wldev* %123, i32 %124)
  %126 = and i32 %125, 7
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %126, i32* %127, align 4
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %128, i32 5, i32 %129)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %132 = load i32, i32* @N_RAIL_I, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %131, i32 0, i64 0, i32 5, i32 %132, i32 %133)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %136 = load i32, i32* @N_RAIL_Q, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %135, i32 0, i64 0, i32 5, i32 %136, i32 %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %212, %69
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %215

142:                                              ; preds = %139
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %151, %142
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 4
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %149
  store i32 %147, i32* %150, align 4
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %143

154:                                              ; preds = %143
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @N_RSSI_W2, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %162 = call i32 @b43_nphy_set_rssi_2055_vcm(%struct.b43_wldev* %159, i32 %160, i32* %161)
  br label %163

163:                                              ; preds = %158, %154
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %22, i64 0, i64 %167
  %169 = getelementptr inbounds [4 x i64], [4 x i64]* %168, i64 0, i64 0
  %170 = call i32 @b43_nphy_poll_rssi(%struct.b43_wldev* %164, i32 %165, i64* %169, i32 8)
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @N_RSSI_W1, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @N_RSSI_W2, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %211

178:                                              ; preds = %174, %163
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %207, %178
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 2
  br i1 %181, label %182, label %210

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %22, i64 0, i64 %184
  %186 = load i32, i32* %6, align 4
  %187 = mul nsw i32 2, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [4 x i64], [4 x i64]* %185, i64 0, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %22, i64 0, i64 %192
  %194 = load i32, i32* %6, align 4
  %195 = mul nsw i32 2, %194
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i64], [4 x i64]* %193, i64 0, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @min(i64 %190, i64 %199)
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* %23, i64 0, i64 %202
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [2 x i64], [2 x i64]* %203, i64 0, i64 %205
  store i64 %200, i64* %206, align 8
  br label %207

207:                                              ; preds = %182
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %179

210:                                              ; preds = %179
  br label %211

211:                                              ; preds = %210, %174
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %139

215:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %294, %215
  %217 = load i32, i32* %5, align 4
  %218 = icmp slt i32 %217, 4
  br i1 %218, label %219, label %297

219:                                              ; preds = %216
  store i64 1048576, i64* %25, align 8
  store i32 0, i32* %26, align 4
  store i64 249, i64* %27, align 8
  store i32 0, i32* %7, align 4
  br label %220

220:                                              ; preds = %282, %219
  %221 = load i32, i32* %7, align 4
  %222 = icmp slt i32 %221, 4
  br i1 %222, label %223, label %285

223:                                              ; preds = %220
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @N_RSSI_NB, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %22, i64 0, i64 %229
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x i64], [4 x i64]* %230, i64 0, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* %9, align 4
  %236 = mul nsw i32 %235, 8
  %237 = sext i32 %236 to i64
  %238 = sub nsw i64 %234, %237
  %239 = call i32 @abs(i64 %238)
  %240 = sext i32 %239 to i64
  store i64 %240, i64* %28, align 8
  br label %256

241:                                              ; preds = %223
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [4 x [2 x i64]], [4 x [2 x i64]]* %23, i64 0, i64 %243
  %245 = load i32, i32* %5, align 4
  %246 = sdiv i32 %245, 2
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x i64], [2 x i64]* %244, i64 0, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = mul nsw i32 %250, 8
  %252 = sext i32 %251 to i64
  %253 = sub nsw i64 %249, %252
  %254 = call i32 @abs(i64 %253)
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %28, align 8
  br label %256

256:                                              ; preds = %241, %227
  %257 = load i64, i64* %28, align 8
  %258 = load i64, i64* %25, align 8
  %259 = icmp slt i64 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i64, i64* %28, align 8
  store i64 %261, i64* %25, align 8
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %26, align 4
  br label %263

263:                                              ; preds = %260, %256
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %22, i64 0, i64 %265
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x i64], [4 x i64]* %266, i64 0, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %27, align 8
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %263
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %22, i64 0, i64 %275
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x i64], [4 x i64]* %276, i64 0, i64 %278
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %27, align 8
  br label %281

281:                                              ; preds = %273, %263
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %7, align 4
  br label %220

285:                                              ; preds = %220
  %286 = load i64, i64* %27, align 8
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %288
  store i64 %286, i64* %289, align 8
  %290 = load i32, i32* %26, align 4
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %292
  store i32 %290, i32* %293, align 4
  br label %294

294:                                              ; preds = %285
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %5, align 4
  br label %216

297:                                              ; preds = %216
  %298 = load i32, i32* %4, align 4
  %299 = load i32, i32* @N_RSSI_W2, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %297
  %302 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %303 = load i32, i32* %4, align 4
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %305 = call i32 @b43_nphy_set_rssi_2055_vcm(%struct.b43_wldev* %302, i32 %303, i32* %304)
  br label %306

306:                                              ; preds = %301, %297
  store i32 0, i32* %5, align 4
  br label %307

307:                                              ; preds = %393, %306
  %308 = load i32, i32* %5, align 4
  %309 = icmp slt i32 %308, 4
  br i1 %309, label %310, label %396

310:                                              ; preds = %307
  %311 = load i32, i32* %9, align 4
  %312 = mul nsw i32 %311, 8
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %22, i64 0, i64 %318
  %320 = load i32, i32* %5, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i64], [4 x i64]* %319, i64 0, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = sub nsw i64 %313, %323
  %325 = load i32, i32* %5, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %326
  store i64 %324, i64* %327, align 8
  %328 = load i32, i32* %5, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = icmp slt i64 %331, 0
  br i1 %332, label %333, label %346

333:                                              ; preds = %310
  %334 = load i32, i32* %5, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @abs(i64 %337)
  %339 = add nsw i32 %338, 4
  %340 = sdiv i32 %339, 8
  %341 = sub nsw i32 0, %340
  %342 = sext i32 %341 to i64
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %344
  store i64 %342, i64* %345, align 8
  br label %356

346:                                              ; preds = %310
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = add nsw i64 %350, 4
  %352 = sdiv i64 %351, 8
  %353 = load i32, i32* %5, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %354
  store i64 %352, i64* %355, align 8
  br label %356

356:                                              ; preds = %346, %333
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = icmp eq i64 %360, 248
  br i1 %361, label %362, label %369

362:                                              ; preds = %356
  %363 = load i32, i32* %9, align 4
  %364 = sub nsw i32 %363, 32
  %365 = sext i32 %364 to i64
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %367
  store i64 %365, i64* %368, align 8
  br label %369

369:                                              ; preds = %362, %356
  %370 = load i32, i32* %5, align 4
  %371 = sdiv i32 %370, 2
  %372 = icmp ne i32 %371, 0
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i32 2, i32 1
  store i32 %374, i32* %16, align 4
  %375 = load i32, i32* %5, align 4
  %376 = srem i32 %375, 2
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %369
  %379 = load i32, i32* @N_RAIL_Q, align 4
  br label %382

380:                                              ; preds = %369
  %381 = load i32, i32* @N_RAIL_I, align 4
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi i32 [ %379, %378 ], [ %381, %380 ]
  store i32 %383, i32* %17, align 4
  %384 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %385 = load i32, i32* %5, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [4 x i64], [4 x i64]* %15, i64 0, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* %16, align 4
  %390 = load i32, i32* %17, align 4
  %391 = load i32, i32* %4, align 4
  %392 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %384, i32 0, i64 %388, i32 %389, i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %382
  %394 = load i32, i32* %5, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %5, align 4
  br label %307

396:                                              ; preds = %307
  %397 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %398 = load i32, i32* @B2055_C1_PD_RSSIMISC, align 4
  %399 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %400 = load i32, i32* %399, align 16
  %401 = call i32 @b43_radio_maskset(%struct.b43_wldev* %397, i32 %398, i32 248, i32 %400)
  %402 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %403 = load i32, i32* @B2055_C2_PD_RSSIMISC, align 4
  %404 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @b43_radio_maskset(%struct.b43_wldev* %402, i32 %403, i32 248, i32 %405)
  %407 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %408 = load i32, i32* %407, align 8
  switch i32 %408, label %421 [
    i32 1, label %409
    i32 4, label %413
    i32 2, label %417
  ]

409:                                              ; preds = %396
  %410 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %411 = load i32, i32* @N_RSSI_NB, align 4
  %412 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %410, i32 1, i32 %411)
  br label %425

413:                                              ; preds = %396
  %414 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %415 = load i32, i32* @N_RSSI_W1, align 4
  %416 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %414, i32 1, i32 %415)
  br label %425

417:                                              ; preds = %396
  %418 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %419 = load i32, i32* @N_RSSI_W2, align 4
  %420 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %418, i32 1, i32 %419)
  br label %425

421:                                              ; preds = %396
  %422 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %423 = load i32, i32* @N_RSSI_W2, align 4
  %424 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %422, i32 1, i32 %423)
  br label %425

425:                                              ; preds = %421, %417, %413, %409
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %427 = load i32, i32* %426, align 4
  switch i32 %427, label %436 [
    i32 1, label %428
    i32 4, label %432
  ]

428:                                              ; preds = %425
  %429 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %430 = load i32, i32* @N_RSSI_NB, align 4
  %431 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %429, i32 2, i32 %430)
  br label %440

432:                                              ; preds = %425
  %433 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %434 = load i32, i32* @N_RSSI_W1, align 4
  %435 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %433, i32 2, i32 %434)
  br label %440

436:                                              ; preds = %425
  %437 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %438 = load i32, i32* @N_RSSI_W2, align 4
  %439 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %437, i32 2, i32 %438)
  br label %440

440:                                              ; preds = %436, %432, %428
  %441 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %442 = load i32, i32* %4, align 4
  %443 = call i32 @b43_nphy_rssi_select(%struct.b43_wldev* %441, i32 0, i32 %442)
  %444 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %445 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %446 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @b43_phy_write(%struct.b43_wldev* %444, i32 %445, i32 %447)
  %449 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %450 = load i32, i32* @B2055_C1_PD_RXTX, align 4
  %451 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @b43_radio_write(%struct.b43_wldev* %449, i32 %450, i32 %452)
  %454 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %455 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %456 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @b43_phy_write(%struct.b43_wldev* %454, i32 %455, i32 %457)
  %459 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %460 = load i32, i32* @B2055_C2_PD_RXTX, align 4
  %461 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @b43_radio_write(%struct.b43_wldev* %459, i32 %460, i32 %462)
  %464 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %465 = load i32, i32* %11, align 4
  %466 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %464, i32 7, i32 %465)
  %467 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %468 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %469 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %467, i32* %468)
  %470 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %471 = call i32 @b43_nphy_reset_cca(%struct.b43_wldev* %470)
  br label %472

472:                                              ; preds = %440, %47
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @B43_WARN_ON(i32) #2

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_read_clip_detection(%struct.b43_wldev*, i32*) #2

declare dso_local i32 @b43_nphy_write_clip_detection(%struct.b43_wldev*, i32*) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_rssi_select(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev*, i32, i64, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_set_rssi_2055_vcm(%struct.b43_wldev*, i32, i32*) #2

declare dso_local i32 @b43_nphy_poll_rssi(%struct.b43_wldev*, i32, i64*, i32) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @abs(i64) #2

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_reset_cca(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
