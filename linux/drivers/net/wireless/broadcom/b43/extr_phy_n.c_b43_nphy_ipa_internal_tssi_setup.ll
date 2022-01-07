; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_ipa_internal_tssi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_ipa_internal_tssi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B2056_SYN_RESERVED_ADDR31 = common dso_local global i32 0, align 4
@B2056_SYN_RESERVED_ADDR30 = common dso_local global i32 0, align 4
@B2056_SYN_GPIO_MASTER1 = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_IQCAL_VCM_HG = common dso_local global i32 0, align 4
@B2056_TX_IQCAL_IDAC = common dso_local global i32 0, align 4
@B2056_TX_TSSI_VCM = common dso_local global i32 0, align 4
@B2056_TX_TX_AMP_DET = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC1 = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC2 = common dso_local global i32 0, align 4
@B2056_TX_TSSI_MISC3 = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MASTER = common dso_local global i32 0, align 4
@B2056_TX_TSSIA = common dso_local global i32 0, align 4
@B2056_TX_TSSIG = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_ipa_internal_tssi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_ipa_internal_tssi_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  store %struct.b43_phy* %7, %struct.b43_phy** %3, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 19
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %257

13:                                               ; preds = %1
  %14 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 7
  br i1 %17, label %18, label %116

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %112, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %115

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 400, i32 368
  store i32 %26, i32* %5, align 4
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @b43_current_band(i32 %29)
  %31 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %22
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 5
  %37 = call i32 @b43_radio_write(%struct.b43_wldev* %34, i32 %36, i32 5)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 9
  %41 = call i32 @b43_radio_write(%struct.b43_wldev* %38, i32 %40, i32 14)
  %42 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %43 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 5
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 10
  %50 = call i32 @b43_radio_write(%struct.b43_wldev* %47, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %46, %33
  %52 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 7
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 11
  %60 = call i32 @b43_radio_write(%struct.b43_wldev* %57, i32 %59, i32 1)
  br label %66

61:                                               ; preds = %51
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 11
  %65 = call i32 @b43_radio_write(%struct.b43_wldev* %62, i32 %64, i32 49)
  br label %66

66:                                               ; preds = %61, %56
  br label %95

67:                                               ; preds = %22
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 5
  %71 = call i32 @b43_radio_write(%struct.b43_wldev* %68, i32 %70, i32 9)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 9
  %75 = call i32 @b43_radio_write(%struct.b43_wldev* %72, i32 %74, i32 12)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 11
  %79 = call i32 @b43_radio_write(%struct.b43_wldev* %76, i32 %78, i32 0)
  %80 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %81 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 5
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 10
  %88 = call i32 @b43_radio_write(%struct.b43_wldev* %85, i32 %87, i32 1)
  br label %94

89:                                               ; preds = %67
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 10
  %93 = call i32 @b43_radio_write(%struct.b43_wldev* %90, i32 %92, i32 49)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 6
  %99 = call i32 @b43_radio_write(%struct.b43_wldev* %96, i32 %98, i32 0)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 7
  %103 = call i32 @b43_radio_write(%struct.b43_wldev* %100, i32 %102, i32 0)
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 8
  %107 = call i32 @b43_radio_write(%struct.b43_wldev* %104, i32 %106, i32 3)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 12
  %111 = call i32 @b43_radio_write(%struct.b43_wldev* %108, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %95
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %19

115:                                              ; preds = %19
  br label %256

116:                                              ; preds = %13
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @b43_current_band(i32 %119)
  %121 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = load i32, i32* @B2056_SYN_RESERVED_ADDR31, align 4
  %126 = call i32 @b43_radio_write(%struct.b43_wldev* %124, i32 %125, i32 296)
  br label %131

127:                                              ; preds = %116
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = load i32, i32* @B2056_SYN_RESERVED_ADDR31, align 4
  %130 = call i32 @b43_radio_write(%struct.b43_wldev* %128, i32 %129, i32 128)
  br label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = load i32, i32* @B2056_SYN_RESERVED_ADDR30, align 4
  %134 = call i32 @b43_radio_write(%struct.b43_wldev* %132, i32 %133, i32 0)
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = load i32, i32* @B2056_SYN_GPIO_MASTER1, align 4
  %137 = call i32 @b43_radio_write(%struct.b43_wldev* %135, i32 %136, i32 41)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %252, %131
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %141, label %255

141:                                              ; preds = %138
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @B2056_TX1, align 4
  br label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @B2056_TX0, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %5, align 4
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @B2056_TX_IQCAL_VCM_HG, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @b43_radio_write(%struct.b43_wldev* %150, i32 %153, i32 0)
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @B2056_TX_IQCAL_IDAC, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @b43_radio_write(%struct.b43_wldev* %155, i32 %158, i32 0)
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @B2056_TX_TSSI_VCM, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @b43_radio_write(%struct.b43_wldev* %160, i32 %163, i32 3)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @B2056_TX_TX_AMP_DET, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @b43_radio_write(%struct.b43_wldev* %165, i32 %168, i32 0)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @B2056_TX_TSSI_MISC1, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @b43_radio_write(%struct.b43_wldev* %170, i32 %173, i32 8)
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @B2056_TX_TSSI_MISC2, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @b43_radio_write(%struct.b43_wldev* %175, i32 %178, i32 0)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @B2056_TX_TSSI_MISC3, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @b43_radio_write(%struct.b43_wldev* %180, i32 %183, i32 0)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @b43_current_band(i32 %187)
  %189 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %230

191:                                              ; preds = %148
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @B2056_TX_TX_SSI_MASTER, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @b43_radio_write(%struct.b43_wldev* %192, i32 %195, i32 5)
  %197 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %198 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 5
  br i1 %200, label %201, label %207

201:                                              ; preds = %191
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @B2056_TX_TSSIA, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @b43_radio_write(%struct.b43_wldev* %202, i32 %205, i32 0)
  br label %207

207:                                              ; preds = %201, %191
  %208 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %209 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp sge i32 %210, 5
  br i1 %211, label %212, label %218

212:                                              ; preds = %207
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @B2056_TX_TSSIG, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @b43_radio_write(%struct.b43_wldev* %213, i32 %216, i32 49)
  br label %224

218:                                              ; preds = %207
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @B2056_TX_TSSIG, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @b43_radio_write(%struct.b43_wldev* %219, i32 %222, i32 17)
  br label %224

224:                                              ; preds = %218, %212
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @b43_radio_write(%struct.b43_wldev* %225, i32 %228, i32 14)
  br label %251

230:                                              ; preds = %148
  %231 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @B2056_TX_TX_SSI_MASTER, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @b43_radio_write(%struct.b43_wldev* %231, i32 %234, i32 9)
  %236 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* @B2056_TX_TSSIA, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @b43_radio_write(%struct.b43_wldev* %236, i32 %239, i32 49)
  %241 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* @B2056_TX_TSSIG, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @b43_radio_write(%struct.b43_wldev* %241, i32 %244, i32 0)
  %246 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @b43_radio_write(%struct.b43_wldev* %246, i32 %249, i32 12)
  br label %251

251:                                              ; preds = %230, %224
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %4, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %138

255:                                              ; preds = %138
  br label %256

256:                                              ; preds = %255, %115
  br label %257

257:                                              ; preds = %256, %12
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
