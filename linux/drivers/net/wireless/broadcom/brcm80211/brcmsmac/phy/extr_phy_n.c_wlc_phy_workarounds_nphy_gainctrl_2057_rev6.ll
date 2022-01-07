; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_gainctrl_2057_rev6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy_gainctrl_2057_rev6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1G_gain_db_rev7 = internal constant [4 x i32] [i32 9, i32 14, i32 19, i32 24], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gain_db_rev7 = internal constant [10 x i32] [i32 -9, i32 -6, i32 -3, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gainbits_rev7 = internal constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.rfseqA_init_gain_rev7 = internal constant [2 x i32] [i32 25167, i32 25167], align 4
@NPHY_BandControl_currentBand = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAIN1 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAIN2 = common dso_local global i32 0, align 4
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7 = internal constant [4 x i32] [i32 11, i32 16, i32 20, i32 24], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7 = internal constant [4 x i32] [i32 11, i32 17, i32 22, i32 25], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7 = internal constant [4 x i32] [i32 -1, i32 6, i32 10, i32 14], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.1 = internal constant [4 x i32] [i32 11, i32 17, i32 21, i32 25], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.2 = internal constant [4 x i32] [i32 12, i32 18, i32 22, i32 26], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.3 = internal constant [4 x i32] [i32 1, i32 8, i32 12, i32 16], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.4 = internal constant [4 x i32] [i32 12, i32 18, i32 22, i32 26], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.5 = internal constant [4 x i32] [i32 12, i32 18, i32 22, i32 26], align 16
@wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.6 = internal constant [4 x i32] [i32 -1, i32 6, i32 10, i32 14], align 16
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAINBITS1 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_GAINBITS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_workarounds_nphy_gainctrl_2057_rev6(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = call i32 @mod_phy_reg(%struct.brcms_phy* %24, i32 28, i32 8192, i32 8192)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = call i32 @mod_phy_reg(%struct.brcms_phy* %26, i32 50, i32 8192, i32 8192)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = call i32 @read_phy_reg(%struct.brcms_phy* %28, i32 9)
  %30 = load i32, i32* @NPHY_BandControl_currentBand, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1G_gain_db_rev7, i64 0, i64 0), i32** %4, align 8
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %35, i32 %36, i32 4, i32 8, i32 8, i32* %37)
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %39, i32 %40, i32 4, i32 8, i32 8, i32* %41)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = call i32 @mod_phy_reg(%struct.brcms_phy* %43, i32 643, i32 255, i32 64)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @CHSPEC_IS40(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = call i32 @mod_phy_reg(%struct.brcms_phy* %51, i32 640, i32 255, i32 62)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = call i32 @mod_phy_reg(%struct.brcms_phy* %53, i32 643, i32 255, i32 62)
  br label %55

55:                                               ; preds = %50, %34
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = call i32 @mod_phy_reg(%struct.brcms_phy* %56, i32 649, i32 255, i32 70)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @CHSPEC_IS20(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = call i32 @mod_phy_reg(%struct.brcms_phy* %64, i32 768, i32 63, i32 13)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = call i32 @mod_phy_reg(%struct.brcms_phy* %66, i32 769, i32 63, i32 13)
  br label %68

68:                                               ; preds = %63, %55
  br label %254

69:                                               ; preds = %1
  store i32 158, i32* %10, align 4
  store i32 158, i32* %11, align 4
  store i32 36, i32* %13, align 4
  store i32 138, i32* %14, align 4
  store i32 8, i32* %15, align 4
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.rfseqA_init_gain_rev7, i64 0, i64 0), i32** %9, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gain_db_rev7, i64 0, i64 0), i32** %7, align 8
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.tiaA_gainbits_rev7, i64 0, i64 0), i32** %8, align 8
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CHSPEC_CHANNEL(i32 %72)
  %74 = call i32 @CHAN5G_FREQ(i32 %73)
  store i32 %74, i32* %20, align 4
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @CHSPEC_IS20(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %69
  store i32 25, i32* %19, align 4
  store i32 130, i32* %12, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp sle i32 %81, 5080
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %20, align 4
  %85 = icmp eq i32 %84, 5825
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  store i32 62, i32* %17, align 4
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7, i64 0, i64 0), i32** %4, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7, i64 0, i64 0), i32** %5, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7, i64 0, i64 0), i32** %6, align 8
  br label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %20, align 4
  %89 = icmp sge i32 %88, 5500
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %20, align 4
  %92 = icmp sle i32 %91, 5700
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 69, i32* %17, align 4
  store i32 20, i32* %13, align 4
  store i32 255, i32* %18, align 4
  store i32 1, i32* %23, align 4
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.1, i64 0, i64 0), i32** %4, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.2, i64 0, i64 0), i32** %5, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.3, i64 0, i64 0), i32** %6, align 8
  br label %95

94:                                               ; preds = %90, %87
  store i32 65, i32* %17, align 4
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_rev7.4, i64 0, i64 0), i32** %4, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna1A_gain_db_2_rev7.5, i64 0, i64 0), i32** %5, align 8
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wlc_phy_workarounds_nphy_gainctrl_2057_rev6.lna2A_gain_db_rev7.6, i64 0, i64 0), i32** %6, align 8
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* %20, align 4
  %98 = icmp sle i32 %97, 4920
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 5, i32* %21, align 4
  store i32 5, i32* %22, align 4
  br label %117

100:                                              ; preds = %96
  %101 = load i32, i32* %20, align 4
  %102 = icmp sgt i32 %101, 4920
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %20, align 4
  %105 = icmp sle i32 %104, 5320
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 3, i32* %21, align 4
  store i32 5, i32* %22, align 4
  br label %116

107:                                              ; preds = %103, %100
  %108 = load i32, i32* %20, align 4
  %109 = icmp sgt i32 %108, 5320
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %20, align 4
  %112 = icmp sle i32 %111, 5700
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 3, i32* %21, align 4
  store i32 2, i32* %22, align 4
  br label %115

114:                                              ; preds = %110, %107
  store i32 4, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %115

115:                                              ; preds = %114, %113
  br label %116

116:                                              ; preds = %115, %106
  br label %117

117:                                              ; preds = %116, %99
  br label %135

118:                                              ; preds = %69
  store i32 58, i32* %17, align 4
  store i32 58, i32* %16, align 4
  store i32 20, i32* %19, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp sge i32 %119, 4920
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %20, align 4
  %123 = icmp sle i32 %122, 5320
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 4, i32* %21, align 4
  store i32 5, i32* %22, align 4
  br label %134

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %20, align 4
  %127 = icmp sgt i32 %126, 5320
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %20, align 4
  %130 = icmp sle i32 %129, 5550
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 4, i32* %21, align 4
  store i32 2, i32* %22, align 4
  br label %133

132:                                              ; preds = %128, %125
  store i32 5, i32* %21, align 4
  store i32 3, i32* %22, align 4
  br label %133

133:                                              ; preds = %132, %131
  br label %134

134:                                              ; preds = %133, %124
  br label %135

135:                                              ; preds = %134, %117
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @write_phy_reg(%struct.brcms_phy* %136, i32 32, i32 %137)
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @write_phy_reg(%struct.brcms_phy* %139, i32 679, i32 %140)
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %143 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %142, i32 %143, i32 %147, i32 262, i32 16, i32* %148)
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @write_phy_reg(%struct.brcms_phy* %150, i32 34, i32 %151)
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @write_phy_reg(%struct.brcms_phy* %153, i32 681, i32 %154)
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @write_phy_reg(%struct.brcms_phy* %156, i32 54, i32 %157)
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @write_phy_reg(%struct.brcms_phy* %159, i32 684, i32 %160)
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @write_phy_reg(%struct.brcms_phy* %162, i32 55, i32 %163)
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 @write_phy_reg(%struct.brcms_phy* %165, i32 685, i32 %166)
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @write_phy_reg(%struct.brcms_phy* %168, i32 56, i32 %169)
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @write_phy_reg(%struct.brcms_phy* %171, i32 686, i32 %172)
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %176 = load i32*, i32** %7, align 8
  %177 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %174, i32 %175, i32 10, i32 32, i32 8, i32* %176)
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %178, i32 %179, i32 10, i32 32, i32 8, i32* %180)
  %182 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %183 = load i32, i32* @NPHY_TBL_ID_GAINBITS1, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %182, i32 %183, i32 10, i32 32, i32 8, i32* %184)
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = load i32, i32* @NPHY_TBL_ID_GAINBITS2, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %186, i32 %187, i32 10, i32 32, i32 8, i32* %188)
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = load i32, i32* %17, align 4
  %192 = shl i32 %191, 0
  %193 = call i32 @mod_phy_reg(%struct.brcms_phy* %190, i32 643, i32 255, i32 %192)
  %194 = load i32, i32* %23, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %203

196:                                              ; preds = %135
  %197 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %198 = load i32, i32* %18, align 4
  %199 = call i32 @write_phy_reg(%struct.brcms_phy* %197, i32 43, i32 %198)
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @write_phy_reg(%struct.brcms_phy* %200, i32 65, i32 %201)
  br label %203

203:                                              ; preds = %196, %135
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %205 = load i32, i32* %19, align 4
  %206 = shl i32 %205, 0
  %207 = call i32 @mod_phy_reg(%struct.brcms_phy* %204, i32 768, i32 63, i32 %206)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %209 = load i32, i32* %19, align 4
  %210 = shl i32 %209, 0
  %211 = call i32 @mod_phy_reg(%struct.brcms_phy* %208, i32 769, i32 63, i32 %210)
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %213 = load i32, i32* %21, align 4
  %214 = shl i32 %213, 0
  %215 = call i32 @mod_phy_reg(%struct.brcms_phy* %212, i32 740, i32 63, i32 %214)
  %216 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %217 = load i32, i32* %22, align 4
  %218 = shl i32 %217, 6
  %219 = call i32 @mod_phy_reg(%struct.brcms_phy* %216, i32 740, i32 4032, i32 %218)
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %221 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @CHSPEC_IS20(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %248

225:                                              ; preds = %203
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %227 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %226, i32 %227, i32 4, i32 8, i32 8, i32* %228)
  %230 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %231 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %230, i32 %231, i32 4, i32 8, i32 8, i32* %232)
  %234 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %235 = load i32, i32* @NPHY_TBL_ID_GAIN1, align 4
  %236 = load i32*, i32** %6, align 8
  %237 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %234, i32 %235, i32 4, i32 16, i32 8, i32* %236)
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %239 = load i32, i32* @NPHY_TBL_ID_GAIN2, align 4
  %240 = load i32*, i32** %6, align 8
  %241 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %238, i32 %239, i32 4, i32 16, i32 8, i32* %240)
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @write_phy_reg(%struct.brcms_phy* %242, i32 36, i32 %243)
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %246 = load i32, i32* %12, align 4
  %247 = call i32 @write_phy_reg(%struct.brcms_phy* %245, i32 683, i32 %246)
  br label %253

248:                                              ; preds = %203
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %250 = load i32, i32* %16, align 4
  %251 = shl i32 %250, 0
  %252 = call i32 @mod_phy_reg(%struct.brcms_phy* %249, i32 640, i32 255, i32 %251)
  br label %253

253:                                              ; preds = %248, %225
  br label %254

254:                                              ; preds = %253, %68
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i64 @CHSPEC_IS20(i32) #1

declare dso_local i32 @CHAN5G_FREQ(i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
