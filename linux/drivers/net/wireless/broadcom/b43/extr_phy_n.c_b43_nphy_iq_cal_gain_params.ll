; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_iq_cal_gain_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_iq_cal_gain_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }
%struct.nphy_txgains = type { i32*, i32*, i32*, i32*, i32* }
%struct.nphy_iqcal_params = type { i32, i32, i32, i32, i32, i32, i32* }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@tbl_iqcal_gainparams = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i64, %struct.nphy_txgains*, %struct.nphy_iqcal_params*)* @b43_nphy_iq_cal_gain_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_iq_cal_gain_params(%struct.b43_wldev* %0, i64 %1, %struct.nphy_txgains* byval(%struct.nphy_txgains) align 8 %2, %struct.nphy_iqcal_params* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nphy_iqcal_params*, align 8
  %8 = alloca %struct.b43_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nphy_iqcal_params* %3, %struct.nphy_iqcal_params** %7, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 1
  store %struct.b43_phy* %14, %struct.b43_phy** %8, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 3
  br i1 %19, label %20, label %129

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %27 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %34 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %41 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %48 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %55 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %57 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 19
  br i1 %59, label %60, label %61

60:                                               ; preds = %20
  br label %114

61:                                               ; preds = %20
  %62 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %63 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 7
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %68 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 12
  %71 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %72 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 8
  %75 = or i32 %70, %74
  %76 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %77 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 3
  %80 = or i32 %75, %79
  %81 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %82 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %80, %83
  %85 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %86 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %87, 15
  %89 = or i32 %84, %88
  %90 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %91 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  br label %113

92:                                               ; preds = %61
  %93 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %94 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 12
  %97 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %98 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 8
  %101 = or i32 %96, %100
  %102 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %103 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 4
  %106 = or i32 %101, %105
  %107 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %108 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %106, %109
  %111 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %112 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %92, %66
  br label %114

114:                                              ; preds = %113, %60
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %125, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %120 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 121, i32* %124, align 4
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %115

128:                                              ; preds = %115
  br label %270

129:                                              ; preds = %4
  %130 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 4
  %141 = or i32 %134, %140
  %142 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %2, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 8
  %148 = or i32 %141, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %12, align 8
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %151 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @b43_current_band(i32 %152)
  %154 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  store i32 %157, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %177, %129
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 9
  br i1 %160, label %161, label %180

161:                                              ; preds = %158
  %162 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64**, i64*** %162, i64 %164
  %166 = load i64**, i64*** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  br label %180

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %158

180:                                              ; preds = %175, %158
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @min(i32 %181, i32 8)
  store i32 %182, i32* %9, align 4
  %183 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64**, i64*** %183, i64 %185
  %187 = load i64**, i64*** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64*, i64** %187, i64 %189
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %196 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64**, i64*** %197, i64 %199
  %201 = load i64**, i64*** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64*, i64** %201, i64 %203
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 2
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %210 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64**, i64*** %211, i64 %213
  %215 = load i64**, i64*** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64*, i64** %215, i64 %217
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 3
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %224 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %226 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 %227, 7
  %229 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %230 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = shl i32 %231, 4
  %233 = or i32 %228, %232
  %234 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %235 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = shl i32 %236, 2
  %238 = or i32 %233, %237
  %239 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %240 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %266, %180
  %242 = load i32, i32* %10, align 4
  %243 = icmp slt i32 %242, 4
  br i1 %243, label %244, label %269

244:                                              ; preds = %241
  %245 = load i64***, i64**** @tbl_iqcal_gainparams, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64**, i64*** %245, i64 %247
  %249 = load i64**, i64*** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64*, i64** %249, i64 %251
  %253 = load i64*, i64** %252, align 8
  %254 = load i32, i32* %10, align 4
  %255 = add nsw i32 4, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %253, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = trunc i64 %258 to i32
  %260 = load %struct.nphy_iqcal_params*, %struct.nphy_iqcal_params** %7, align 8
  %261 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %260, i32 0, i32 6
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %259, i32* %265, align 4
  br label %266

266:                                              ; preds = %244
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %10, align 4
  br label %241

269:                                              ; preds = %241
  br label %270

270:                                              ; preds = %269, %128
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
