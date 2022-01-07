; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_restore_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_restore_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.b43_phy_n_iq_comp, i64*, %struct.b43_phy_n_iq_comp, i64*, i64*, i64* }
%struct.b43_phy_n_iq_comp = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@R2057_TX0_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX0_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_FINE_Q = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_I = common dso_local global i32 0, align 4
@R2057_TX1_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_restore_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_restore_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca [4 x i64], align 16
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.b43_phy_n_iq_comp*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  store %struct.b43_phy* %12, %struct.b43_phy** %3, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 1
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %15, align 8
  store %struct.b43_phy_n* %16, %struct.b43_phy_n** %4, align 8
  store i64* null, i64** %6, align 8
  store i64* null, i64** %7, align 8
  store i64* null, i64** %9, align 8
  store %struct.b43_phy_n_iq_comp* null, %struct.b43_phy_n_iq_comp** %10, align 8
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @b43_current_band(i32 %19)
  %21 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %25 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %265

30:                                               ; preds = %23
  %31 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %32 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %7, align 8
  %35 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %36 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 5
  store i64* %39, i64** %6, align 8
  br label %57

40:                                               ; preds = %1
  %41 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %42 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %265

47:                                               ; preds = %40
  %48 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %49 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  store i64* %51, i64** %7, align 8
  %52 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %53 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 5
  store i64* %56, i64** %6, align 8
  br label %57

57:                                               ; preds = %47, %30
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @B43_NTAB16(i32 15, i32 80)
  %60 = load i64*, i64** %7, align 8
  %61 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %58, i32 %59, i32 4, i64* %60)
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %85, %57
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 3
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %75, i64* %79, align 8
  br label %84

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %82
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %62

88:                                               ; preds = %62
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @B43_NTAB16(i32 15, i32 88)
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 0
  %92 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %89, i32 %90, i32 4, i64* %91)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @B43_NTAB16(i32 15, i32 85)
  %95 = load i64*, i64** %6, align 8
  %96 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %93, i32 %94, i32 2, i64* %95)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i32 @B43_NTAB16(i32 15, i32 93)
  %99 = load i64*, i64** %6, align 8
  %100 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %97, i32 %98, i32 2, i64* %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 2
  br i1 %105, label %106, label %109

106:                                              ; preds = %88
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = call i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev* %107)
  br label %109

109:                                              ; preds = %106, %88
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @b43_current_band(i32 %112)
  %114 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %118 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i64*, i64** %119, align 8
  store i64* %120, i64** %9, align 8
  %121 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %122 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store %struct.b43_phy_n_iq_comp* %123, %struct.b43_phy_n_iq_comp** %10, align 8
  br label %132

124:                                              ; preds = %109
  %125 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %126 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  store i64* %128, i64** %9, align 8
  %129 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %130 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store %struct.b43_phy_n_iq_comp* %131, %struct.b43_phy_n_iq_comp** %10, align 8
  br label %132

132:                                              ; preds = %124, %116
  %133 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %134 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %135, 19
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %261

138:                                              ; preds = %132
  %139 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %140 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %141, 7
  br i1 %142, label %143, label %192

143:                                              ; preds = %138
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* @R2057_TX0_LOFT_FINE_I, align 4
  %146 = load i64*, i64** %9, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @b43_radio_write(%struct.b43_wldev* %144, i32 %145, i64 %148)
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = load i32, i32* @R2057_TX0_LOFT_FINE_Q, align 4
  %152 = load i64*, i64** %9, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @b43_radio_write(%struct.b43_wldev* %150, i32 %151, i64 %154)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = load i32, i32* @R2057_TX0_LOFT_COARSE_I, align 4
  %158 = load i64*, i64** %9, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 4
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @b43_radio_write(%struct.b43_wldev* %156, i32 %157, i64 %160)
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = load i32, i32* @R2057_TX0_LOFT_COARSE_Q, align 4
  %164 = load i64*, i64** %9, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @b43_radio_write(%struct.b43_wldev* %162, i32 %163, i64 %166)
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = load i32, i32* @R2057_TX1_LOFT_FINE_I, align 4
  %170 = load i64*, i64** %9, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @b43_radio_write(%struct.b43_wldev* %168, i32 %169, i64 %172)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = load i32, i32* @R2057_TX1_LOFT_FINE_Q, align 4
  %176 = load i64*, i64** %9, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @b43_radio_write(%struct.b43_wldev* %174, i32 %175, i64 %178)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %181 = load i32, i32* @R2057_TX1_LOFT_COARSE_I, align 4
  %182 = load i64*, i64** %9, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 6
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @b43_radio_write(%struct.b43_wldev* %180, i32 %181, i64 %184)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = load i32, i32* @R2057_TX1_LOFT_COARSE_Q, align 4
  %188 = load i64*, i64** %9, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 7
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @b43_radio_write(%struct.b43_wldev* %186, i32 %187, i64 %190)
  br label %260

192:                                              ; preds = %138
  %193 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %194 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sge i32 %195, 3
  br i1 %196, label %197, label %238

197:                                              ; preds = %192
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %199 = load i64*, i64** %9, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @b43_radio_write(%struct.b43_wldev* %198, i32 8225, i64 %201)
  %203 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %204 = load i64*, i64** %9, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @b43_radio_write(%struct.b43_wldev* %203, i32 8226, i64 %206)
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %209 = load i64*, i64** %9, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 2
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @b43_radio_write(%struct.b43_wldev* %208, i32 12321, i64 %211)
  %213 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %214 = load i64*, i64** %9, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 3
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @b43_radio_write(%struct.b43_wldev* %213, i32 12322, i64 %216)
  %218 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %219 = load i64*, i64** %9, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 4
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @b43_radio_write(%struct.b43_wldev* %218, i32 8227, i64 %221)
  %223 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %224 = load i64*, i64** %9, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 5
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @b43_radio_write(%struct.b43_wldev* %223, i32 8228, i64 %226)
  %228 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %229 = load i64*, i64** %9, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 6
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @b43_radio_write(%struct.b43_wldev* %228, i32 12323, i64 %231)
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %234 = load i64*, i64** %9, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 7
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @b43_radio_write(%struct.b43_wldev* %233, i32 12324, i64 %236)
  br label %259

238:                                              ; preds = %192
  %239 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %240 = load i64*, i64** %9, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @b43_radio_write(%struct.b43_wldev* %239, i32 139, i64 %242)
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %245 = load i64*, i64** %9, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 1
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @b43_radio_write(%struct.b43_wldev* %244, i32 186, i64 %247)
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %250 = load i64*, i64** %9, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 2
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @b43_radio_write(%struct.b43_wldev* %249, i32 141, i64 %252)
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = load i64*, i64** %9, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 3
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @b43_radio_write(%struct.b43_wldev* %254, i32 188, i64 %257)
  br label %259

259:                                              ; preds = %238, %197
  br label %260

260:                                              ; preds = %259, %143
  br label %261

261:                                              ; preds = %260, %137
  %262 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %263 = load %struct.b43_phy_n_iq_comp*, %struct.b43_phy_n_iq_comp** %10, align 8
  %264 = call i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev* %262, i32 1, %struct.b43_phy_n_iq_comp* %263)
  br label %265

265:                                              ; preds = %261, %46, %29
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i64*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i64) #1

declare dso_local i32 @b43_nphy_rx_iq_coeffs(%struct.b43_wldev*, i32, %struct.b43_phy_n_iq_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
