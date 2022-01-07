; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_spurwar_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_spurwar_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_4__*, i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@__const.wlc_phy_spurwar_nphy.nphy_adj_tone_id_buf = private unnamed_addr constant [2 x i32] [i32 57, i32 58], align 4
@__const.wlc_phy_spurwar_nphy.nphy_adj_noise_var_buf = private unnamed_addr constant [2 x i32] [i32 1023, i32 1023], align 4
@NPHY_ANARXLPFBW_REDUCTIONFACT = common dso_local global i32 0, align 4
@NPHY_ADJUSTED_MINCRSPOWER = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4716 = common dso_local global i32 0, align 4
@BCMA_PKG_ID_BCM4717 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_spurwar_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_spurwar_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([2 x i32]* @__const.wlc_phy_spurwar_nphy.nphy_adj_tone_id_buf to i8*), i64 8, i1 false)
  %10 = bitcast [2 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.wlc_phy_spurwar_nphy.nphy_adj_noise_var_buf to i8*), i64 8, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @NREV_GE(i32 %14, i32 3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %218

17:                                               ; preds = %1
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %23, i32 1)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @CHSPEC_CHANNEL(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %25
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = load i32, i32* @NPHY_ANARXLPFBW_REDUCTIONFACT, align 4
  %37 = call i32 @wlc_phy_adjust_rx_analpfbw_nphy(%struct.brcms_phy* %35, i32 %36)
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @CHSPEC_IS2G(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %34
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 11
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @CHSPEC_IS40(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %56 = call i32 @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy* %53, i32 2, i32* %54, i32* %55)
  br label %60

57:                                               ; preds = %46, %43
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = call i32 @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy* %58, i32 0, i32* null, i32* null)
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = load i32, i32* @NPHY_ADJUSTED_MINCRSPOWER, align 4
  %64 = call i32 @wlc_phy_adjust_crsminpwr_nphy(%struct.brcms_phy* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %25
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %65
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @CHSPEC_IS2G(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %141

76:                                               ; preds = %70
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @CHSPEC_IS40(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %76
  %83 = load i32, i32* %3, align 4
  switch i32 %83, label %124 [
    i32 3, label %84
    i32 4, label %89
    i32 5, label %94
    i32 6, label %99
    i32 7, label %104
    i32 8, label %109
    i32 9, label %114
    i32 10, label %119
  ]

84:                                               ; preds = %82
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 57, i32* %85, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 58, i32* %86, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 559, i32* %87, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 607, i32* %88, align 4
  store i32 1, i32* %6, align 4
  br label %125

89:                                               ; preds = %82
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 41, i32* %90, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 42, i32* %91, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 559, i32* %92, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 607, i32* %93, align 4
  store i32 1, i32* %6, align 4
  br label %125

94:                                               ; preds = %82
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 25, i32* %95, align 4
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 26, i32* %96, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 591, i32* %97, align 4
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 607, i32* %98, align 4
  store i32 1, i32* %6, align 4
  br label %125

99:                                               ; preds = %82
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 9, i32* %100, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 10, i32* %101, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 559, i32* %102, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 591, i32* %103, align 4
  store i32 1, i32* %6, align 4
  br label %125

104:                                              ; preds = %82
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 121, i32* %105, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 122, i32* %106, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 399, i32* %107, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 591, i32* %108, align 4
  store i32 1, i32* %6, align 4
  br label %125

109:                                              ; preds = %82
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 105, i32* %110, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 106, i32* %111, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 559, i32* %112, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 607, i32* %113, align 4
  store i32 1, i32* %6, align 4
  br label %125

114:                                              ; preds = %82
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 89, i32* %115, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 90, i32* %116, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 559, i32* %117, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 591, i32* %118, align 4
  store i32 1, i32* %6, align 4
  br label %125

119:                                              ; preds = %82
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 73, i32* %120, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 74, i32* %121, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 559, i32* %122, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 591, i32* %123, align 4
  store i32 1, i32* %6, align 4
  br label %125

124:                                              ; preds = %82
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %124, %119, %114, %109, %104, %99, %94, %89, %84
  br label %126

126:                                              ; preds = %125, %76
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %131 = call i32 @ARRAY_SIZE(i32* %130)
  store i32 %131, i32* %7, align 4
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = load i32, i32* %7, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %136 = call i32 @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy* %132, i32 %133, i32* %134, i32* %135)
  store i32 0, i32* %8, align 4
  br label %140

137:                                              ; preds = %126
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %139 = call i32 @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy* %138, i32 0, i32* null, i32* null)
  br label %140

140:                                              ; preds = %137, %129
  br label %141

141:                                              ; preds = %140, %70, %65
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %143 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %209

146:                                              ; preds = %141
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %148 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @CHSPEC_IS5G(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %209

152:                                              ; preds = %146
  %153 = load i32, i32* %3, align 4
  switch i32 %153, label %189 [
    i32 54, label %154
    i32 38, label %157
    i32 102, label %157
    i32 118, label %157
    i32 134, label %180
    i32 151, label %183
    i32 153, label %186
    i32 161, label %186
  ]

154:                                              ; preds = %152
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 32, i32* %155, align 4
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 607, i32* %156, align 4
  br label %192

157:                                              ; preds = %152, %152, %152
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %159 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @BCMA_CHIP_ID_BCM4716, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %157
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %167 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @BCMA_PKG_ID_BCM4717, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 32, i32* %174, align 4
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 543, i32* %175, align 4
  br label %179

176:                                              ; preds = %165, %157
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %177, align 4
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %192

180:                                              ; preds = %152
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 32, i32* %181, align 4
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 543, i32* %182, align 4
  br label %192

183:                                              ; preds = %152
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 16, i32* %184, align 4
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 575, i32* %185, align 4
  br label %192

186:                                              ; preds = %152, %152
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 48, i32* %187, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 575, i32* %188, align 4
  br label %192

189:                                              ; preds = %152
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %190, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %186, %183, %180, %179, %154
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %192
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %204 = call i32 @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy* %201, i32 1, i32* %202, i32* %203)
  br label %208

205:                                              ; preds = %196, %192
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %207 = call i32 @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy* %206, i32 0, i32* null, i32* null)
  br label %208

208:                                              ; preds = %205, %200
  br label %209

209:                                              ; preds = %208, %146, %141
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %211 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %216 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %215, i32 0)
  br label %217

217:                                              ; preds = %214, %209
  br label %218

218:                                              ; preds = %217, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @NREV_GE(i32, i32) #2

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i32 @CHSPEC_CHANNEL(i32) #2

declare dso_local i32 @wlc_phy_adjust_rx_analpfbw_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i64 @CHSPEC_IS2G(i32) #2

declare dso_local i64 @CHSPEC_IS40(i32) #2

declare dso_local i32 @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy*, i32, i32*, i32*) #2

declare dso_local i32 @wlc_phy_adjust_crsminpwr_nphy(%struct.brcms_phy*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
