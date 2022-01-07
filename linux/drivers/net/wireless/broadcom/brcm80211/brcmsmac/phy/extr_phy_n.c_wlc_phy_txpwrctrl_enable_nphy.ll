; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_enable_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_enable_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32*, i64, i32*, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@WL_CHANSPEC_BW_40 = common dso_local global i64 0, align 8
@MHF1 = common dso_local global i32 0, align 4
@MHF1_IQSWAP_WAR = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE1TXPWRCTL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE2TXPWRCTL = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [84 x i32], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %26 [
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %20, %20
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %160

30:                                               ; preds = %27
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @NREV_GE(i32 %34, i32 3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %39 = call i64 @wlc_phy_txpwr_ison_nphy(%struct.brcms_phy* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @wlc_phy_txpwr_idx_cur_get_nphy(%struct.brcms_phy* %50, i32 %52)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %49
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %42

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %37
  br label %64

64:                                               ; preds = %63, %30
  store i32 84, i32* %11, align 4
  store i32 64, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %73, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [84 x i32], [84 x i32]* %12, i64 0, i64 %71
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %65

76:                                               ; preds = %65
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds [84 x i32], [84 x i32]* %12, i64 0, i64 0
  %81 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %77, i32 26, i32 %78, i32 %79, i32 16, i32* %80)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds [84 x i32], [84 x i32]* %12, i64 0, i64 0
  %86 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %82, i32 27, i32 %83, i32 %84, i32 16, i32* %85)
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @NREV_GE(i32 %90, i32 3)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %95 = call i32 @and_phy_reg(%struct.brcms_phy* %94, i32 487, i32 -57345)
  br label %99

96:                                               ; preds = %76
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %98 = call i32 @and_phy_reg(%struct.brcms_phy* %97, i32 487, i32 -24577)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %101 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @NREV_GE(i32 %103, i32 3)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %108 = call i32 @or_phy_reg(%struct.brcms_phy* %107, i32 143, i32 256)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = call i32 @or_phy_reg(%struct.brcms_phy* %109, i32 165, i32 256)
  br label %114

111:                                              ; preds = %99
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %113 = call i32 @or_phy_reg(%struct.brcms_phy* %112, i32 165, i32 16384)
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %116 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @NREV_IS(i32 %118, i32 2)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %123 = call i32 @mod_phy_reg(%struct.brcms_phy* %122, i32 220, i32 255, i32 83)
  br label %135

124:                                              ; preds = %114
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %126 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @NREV_LT(i32 %128, i32 2)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %133 = call i32 @mod_phy_reg(%struct.brcms_phy* %132, i32 220, i32 255, i32 90)
  br label %134

134:                                              ; preds = %131, %124
  br label %135

135:                                              ; preds = %134, %121
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %137 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @NREV_LT(i32 %139, i32 2)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %135
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 5
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MHF1, align 4
  %155 = load i32, i32* @MHF1_IQSWAP_WAR, align 4
  %156 = load i32, i32* @MHF1_IQSWAP_WAR, align 4
  %157 = load i32, i32* @BRCM_BAND_ALL, align 4
  %158 = call i32 @wlapi_bmac_mhf(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %148, %142, %135
  br label %343

160:                                              ; preds = %27
  %161 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %162 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %164 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %161, i32 %162, i32 84, i32 64, i32 8, i32* %165)
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %168 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %170 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %167, i32 %168, i32 84, i32 64, i32 8, i32* %171)
  %173 = load i32, i32* %4, align 4
  %174 = icmp eq i32 %173, 128
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i32 1, i32 0
  store i32 %176, i32* %7, align 4
  store i32 24576, i32* %5, align 4
  %177 = load i32, i32* %7, align 4
  %178 = shl i32 %177, 14
  %179 = load i32, i32* %7, align 4
  %180 = shl i32 %179, 13
  %181 = or i32 %178, %180
  store i32 %181, i32* %6, align 4
  %182 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %183 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @NREV_GE(i32 %185, i32 3)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %160
  %189 = load i32, i32* %5, align 4
  %190 = or i32 %189, 32768
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %7, align 4
  %192 = shl i32 %191, 15
  %193 = load i32, i32* %6, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %188, %160
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @mod_phy_reg(%struct.brcms_phy* %196, i32 487, i32 %197, i32 %198)
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @CHSPEC_IS5G(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %231

205:                                              ; preds = %195
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %207 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @NREV_GE(i32 %209, i32 7)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %214 = call i32 @mod_phy_reg(%struct.brcms_phy* %213, i32 487, i32 127, i32 50)
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %216 = call i32 @mod_phy_reg(%struct.brcms_phy* %215, i32 546, i32 255, i32 50)
  br label %230

217:                                              ; preds = %205
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %219 = call i32 @mod_phy_reg(%struct.brcms_phy* %218, i32 487, i32 127, i32 100)
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %221 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @NREV_GT(i32 %223, i32 1)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %217
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %228 = call i32 @mod_phy_reg(%struct.brcms_phy* %227, i32 546, i32 255, i32 100)
  br label %229

229:                                              ; preds = %226, %217
  br label %230

230:                                              ; preds = %229, %212
  br label %231

231:                                              ; preds = %230, %195
  %232 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %233 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @NREV_GE(i32 %235, i32 3)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %266

238:                                              ; preds = %231
  %239 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %240 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 128
  br i1 %244, label %245, label %265

245:                                              ; preds = %238
  %246 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %247 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 128
  br i1 %251, label %252, label %265

252:                                              ; preds = %245
  %253 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %254 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %255 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %260 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @wlc_phy_txpwr_idx_cur_set_nphy(%struct.brcms_phy* %253, i32 %258, i32 %263)
  br label %265

265:                                              ; preds = %252, %245, %238
  br label %266

266:                                              ; preds = %265, %231
  %267 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %268 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i64 @NREV_GE(i32 %270, i32 3)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %266
  %274 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %275 = call i32 @and_phy_reg(%struct.brcms_phy* %274, i32 143, i32 -257)
  %276 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %277 = call i32 @and_phy_reg(%struct.brcms_phy* %276, i32 165, i32 -257)
  br label %281

278:                                              ; preds = %266
  %279 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %280 = call i32 @and_phy_reg(%struct.brcms_phy* %279, i32 165, i32 -16385)
  br label %281

281:                                              ; preds = %278, %273
  %282 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %283 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %282, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i64 @NREV_IS(i32 %285, i32 2)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %281
  %289 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %290 = call i32 @mod_phy_reg(%struct.brcms_phy* %289, i32 220, i32 255, i32 59)
  br label %302

291:                                              ; preds = %281
  %292 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %293 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %292, i32 0, i32 6
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = call i64 @NREV_LT(i32 %295, i32 2)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %291
  %299 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %300 = call i32 @mod_phy_reg(%struct.brcms_phy* %299, i32 220, i32 255, i32 64)
  br label %301

301:                                              ; preds = %298, %291
  br label %302

302:                                              ; preds = %301, %288
  %303 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %304 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %303, i32 0, i32 6
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = call i64 @NREV_LT(i32 %306, i32 2)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %325

309:                                              ; preds = %302
  %310 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %311 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %325

315:                                              ; preds = %309
  %316 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %317 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %316, i32 0, i32 5
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @MHF1, align 4
  %322 = load i32, i32* @MHF1_IQSWAP_WAR, align 4
  %323 = load i32, i32* @BRCM_BAND_ALL, align 4
  %324 = call i32 @wlapi_bmac_mhf(i32 %320, i32 %321, i32 %322, i32 0, i32 %323)
  br label %325

325:                                              ; preds = %315, %309, %302
  %326 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %327 = call i64 @PHY_IPA(%struct.brcms_phy* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %325
  %330 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %331 = load i32, i32* @PHY_CORE_0, align 4
  %332 = icmp eq i32 0, %331
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i32 663, i32 667
  %335 = call i32 @mod_phy_reg(%struct.brcms_phy* %330, i32 %334, i32 4, i32 0)
  %336 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %337 = load i32, i32* @PHY_CORE_0, align 4
  %338 = icmp eq i32 1, %337
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i32 663, i32 667
  %341 = call i32 @mod_phy_reg(%struct.brcms_phy* %336, i32 %340, i32 4, i32 0)
  br label %342

342:                                              ; preds = %329, %325
  br label %343

343:                                              ; preds = %342, %159
  %344 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %345 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %343
  %349 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %350 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %349, i32 0)
  br label %351

351:                                              ; preds = %348, %343
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @wlc_phy_txpwr_ison_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwr_idx_cur_get_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @wlapi_bmac_mhf(i32, i32, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @NREV_GT(i32, i32) #1

declare dso_local i32 @wlc_phy_txpwr_idx_cur_set_nphy(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
