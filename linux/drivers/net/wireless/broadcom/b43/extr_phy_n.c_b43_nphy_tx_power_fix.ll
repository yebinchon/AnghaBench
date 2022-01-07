; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32, %struct.TYPE_4__* }
%struct.b43_phy = type { i32, %struct.TYPE_6__*, %struct.b43_phy_n* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.b43_phy_n = type { i64 }
%struct.TYPE_4__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32*, i32*, i32*, i32* }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_DACGAIN1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_DACGAIN2 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL2 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL2_LUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_power_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_fix(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  store %struct.b43_phy* %18, %struct.b43_phy** %3, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 2
  %22 = load %struct.b43_phy_n*, %struct.b43_phy_n** %21, align 8
  store %struct.b43_phy_n* %22, %struct.b43_phy_n** %4, align 8
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ssb_sprom*, %struct.ssb_sprom** %26, align 8
  store %struct.ssb_sprom* %27, %struct.ssb_sprom** %5, align 8
  %28 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %29 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %36 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %1
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 7
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 30, i32* %49, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 30, i32* %50, align 4
  br label %151

51:                                               ; preds = %42
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 40, i32* %58, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 40, i32* %59, align 4
  br label %150

60:                                               ; preds = %51
  %61 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %62 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 72, i32* %66, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 72, i32* %67, align 4
  br label %149

68:                                               ; preds = %60
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @b43_current_band(i32 %71)
  %73 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %77 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %83 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  br label %148

88:                                               ; preds = %68
  %89 = load i32, i32* %12, align 4
  %90 = icmp sge i32 %89, 4900
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 5100
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %96 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %102 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %105, i32* %106, align 4
  br label %147

107:                                              ; preds = %91, %88
  %108 = load i32, i32* %12, align 4
  %109 = icmp sge i32 %108, 5100
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 5500
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %115 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %121 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  br label %146

126:                                              ; preds = %110, %107
  %127 = load i32, i32* %12, align 4
  %128 = icmp sge i32 %127, 5500
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %131 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %134, i32* %135, align 4
  %136 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %137 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %140, i32* %141, align 4
  br label %145

142:                                              ; preds = %126
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 91, i32* %143, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 91, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %129
  br label %146

146:                                              ; preds = %145, %113
  br label %147

147:                                              ; preds = %146, %94
  br label %148

148:                                              ; preds = %147, %75
  br label %149

149:                                              ; preds = %148, %65
  br label %150

150:                                              ; preds = %149, %57
  br label %151

151:                                              ; preds = %150, %48
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %153 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %155, 7
  br i1 %156, label %157, label %176

157:                                              ; preds = %151
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 40
  br i1 %160, label %173, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 100
  br i1 %164, label %173, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %167, 40
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 100
  br i1 %172, label %173, label %176

173:                                              ; preds = %169, %165, %161, %157
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 91, i32* %174, align 4
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 91, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %169, %151
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %318, %176
  %178 = load i32, i32* %8, align 4
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %180, label %321

180:                                              ; preds = %177
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %182 = call i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev* %181)
  store i32* %182, i32** %14, align 8
  %183 = load i32*, i32** %14, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  br label %321

186:                                              ; preds = %180
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %187, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %13, align 4
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %198, 3
  br i1 %199, label %200, label %204

200:                                              ; preds = %186
  %201 = load i32, i32* %13, align 4
  %202 = ashr i32 %201, 16
  %203 = and i32 %202, 131071
  store i32 %203, i32* %10, align 4
  br label %208

204:                                              ; preds = %186
  %205 = load i32, i32* %13, align 4
  %206 = ashr i32 %205, 16
  %207 = and i32 %206, 8191
  store i32 %207, i32* %10, align 4
  br label %208

208:                                              ; preds = %204, %200
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp sge i32 %212, 7
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i32, i32* %13, align 4
  %216 = ashr i32 %215, 8
  %217 = and i32 %216, 7
  store i32 %217, i32* %11, align 4
  br label %222

218:                                              ; preds = %208
  %219 = load i32, i32* %13, align 4
  %220 = ashr i32 %219, 8
  %221 = and i32 %220, 63
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %218, %214
  %223 = load i32, i32* %13, align 4
  %224 = and i32 %223, 255
  store i32 %224, i32* %7, align 4
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %226 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp sge i32 %228, 3
  br i1 %229, label %230, label %242

230:                                              ; preds = %222
  %231 = load i32, i32* %8, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %235 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %236 = call i32 @b43_phy_set(%struct.b43_wldev* %234, i32 %235, i32 256)
  br label %241

237:                                              ; preds = %230
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %239 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %240 = call i32 @b43_phy_set(%struct.b43_wldev* %238, i32 %239, i32 256)
  br label %241

241:                                              ; preds = %237, %233
  br label %246

242:                                              ; preds = %222
  %243 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %244 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %245 = call i32 @b43_phy_set(%struct.b43_wldev* %243, i32 %244, i32 16384)
  br label %246

246:                                              ; preds = %242, %241
  %247 = load i32, i32* %8, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %251 = load i32, i32* @B43_NPHY_AFECTL_DACGAIN1, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @b43_phy_write(%struct.b43_wldev* %250, i32 %251, i32 %252)
  br label %259

254:                                              ; preds = %246
  %255 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %256 = load i32, i32* @B43_NPHY_AFECTL_DACGAIN2, align 4
  %257 = load i32, i32* %11, align 4
  %258 = call i32 @b43_phy_write(%struct.b43_wldev* %255, i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %254, %249
  %260 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 272, %261
  %263 = call i32 @B43_NTAB16(i32 7, i32 %262)
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @b43_ntab_write(%struct.b43_wldev* %260, i32 %263, i32 %264)
  %266 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %267 = call i32 @B43_NTAB16(i32 15, i32 87)
  %268 = call i32 @b43_ntab_read(%struct.b43_wldev* %266, i32 %267)
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %259
  %272 = load i32, i32* %9, align 4
  %273 = and i32 %272, 255
  %274 = load i32, i32* %7, align 4
  %275 = shl i32 %274, 8
  %276 = or i32 %273, %275
  store i32 %276, i32* %9, align 4
  br label %282

277:                                              ; preds = %259
  %278 = load i32, i32* %9, align 4
  %279 = and i32 %278, 65280
  %280 = load i32, i32* %7, align 4
  %281 = or i32 %279, %280
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %277, %271
  %283 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %284 = call i32 @B43_NTAB16(i32 15, i32 87)
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @b43_ntab_write(%struct.b43_wldev* %283, i32 %284, i32 %285)
  %287 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %288 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %317

290:                                              ; preds = %282
  %291 = load i32, i32* %8, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  br label %297

295:                                              ; preds = %290
  %296 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i32 [ %294, %293 ], [ %296, %295 ]
  store i32 %298, i32* %16, align 4
  %299 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 26, %300
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 576, %305
  %307 = call i32 @B43_NTAB32(i32 %301, i32 %306)
  %308 = call i32 @b43_ntab_read(%struct.b43_wldev* %299, i32 %307)
  store i32 %308, i32* %15, align 4
  %309 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* %15, align 4
  %312 = shl i32 %311, 4
  %313 = call i32 @b43_phy_maskset(%struct.b43_wldev* %309, i32 %310, i32 57359, i32 %312)
  %314 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @b43_phy_set(%struct.b43_wldev* %314, i32 %315, i32 4)
  br label %317

317:                                              ; preds = %297, %282
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %8, align 4
  br label %177

321:                                              ; preds = %185, %177
  %322 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %323 = load i32, i32* @B43_NPHY_BPHY_CTL2, align 4
  %324 = load i32, i32* @B43_NPHY_BPHY_CTL2_LUT, align 4
  %325 = xor i32 %324, -1
  %326 = call i32 @b43_phy_mask(%struct.b43_wldev* %322, i32 %323, i32 %325)
  %327 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %328 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %321
  %332 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %333 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %332, i32 0)
  br label %334

334:                                              ; preds = %331, %321
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @B43_NTAB32(i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
