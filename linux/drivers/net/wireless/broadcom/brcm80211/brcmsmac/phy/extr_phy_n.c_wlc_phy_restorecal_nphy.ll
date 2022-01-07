; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_restorecal_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_restorecal_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64*, i32, i64*, i64*, i64* }

@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@RADIO_2056_TX_LOFT_FINE_I = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX_LOFT_FINE_Q = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@RADIO_2056_TX_LOFT_COARSE_I = common dso_local global i32 0, align 4
@RADIO_2056_TX_LOFT_COARSE_Q = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TX_VOS_CNCL = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TX_VOS_CNCL = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TX_BB_MXGM = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TX_BB_MXGM = common dso_local global i32 0, align 4
@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@LOFT_FINE_I = common dso_local global i32 0, align 4
@LOFT_FINE_Q = common dso_local global i32 0, align 4
@LOFT_COARSE_I = common dso_local global i32 0, align 4
@LOFT_COARSE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_restorecal_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_restorecal_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i64* null, i64** %7, align 8
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @CHSPEC_IS2G(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %477

19:                                               ; preds = %13
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %5, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 5
  store i64* %28, i64** %3, align 8
  br label %45

29:                                               ; preds = %1
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %477

35:                                               ; preds = %29
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %5, align 8
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 5
  store i64* %44, i64** %3, align 8
  br label %45

45:                                               ; preds = %35, %19
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %48 = load i64*, i64** %5, align 8
  %49 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %46, i32 %47, i32 4, i32 80, i32 16, i64* %48)
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @NREV_GE(i32 %53, i32 3)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %45
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %59, i64* %60, align 16
  %61 = load i64*, i64** %5, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 %63, i64* %64, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 %67, i64* %68, align 16
  %69 = load i64*, i64** %5, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 %71, i64* %72, align 8
  br label %78

73:                                               ; preds = %45
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %74, align 16
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 0, i64* %76, align 16
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %56
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %82 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %79, i32 %80, i32 4, i32 88, i32 16, i64* %81)
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %84 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %85 = load i64*, i64** %3, align 8
  %86 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %83, i32 %84, i32 2, i32 85, i32 16, i64* %85)
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %89 = load i64*, i64** %3, align 8
  %90 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %87, i32 %88, i32 2, i32 93, i32 16, i64* %89)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @NREV_LT(i32 %94, i32 2)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %78
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = call i32 @wlc_phy_tx_iq_war_nphy(%struct.brcms_phy* %98)
  br label %100

100:                                              ; preds = %97, %78
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @CHSPEC_IS2G(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %258

106:                                              ; preds = %100
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @NREV_GE(i32 %110, i32 7)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  store i64* %117, i64** %7, align 8
  br label %252

118:                                              ; preds = %106
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %120 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @NREV_GE(i32 %122, i32 3)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %214

125:                                              ; preds = %118
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %127 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %128 = load i32, i32* @RADIO_2056_TX0, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @write_radio_reg(%struct.brcms_phy* %126, i32 %129, i64 %135)
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %138 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %139 = load i32, i32* @RADIO_2056_TX0, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @write_radio_reg(%struct.brcms_phy* %137, i32 %140, i64 %146)
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %150 = load i32, i32* @RADIO_2056_TX1, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @write_radio_reg(%struct.brcms_phy* %148, i32 %151, i64 %157)
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %160 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %161 = load i32, i32* @RADIO_2056_TX1, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 3
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 3
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @write_radio_reg(%struct.brcms_phy* %159, i32 %162, i64 %168)
  %170 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %171 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %172 = load i32, i32* @RADIO_2056_TX0, align 4
  %173 = or i32 %171, %172
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 4
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @write_radio_reg(%struct.brcms_phy* %170, i32 %173, i64 %179)
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %183 = load i32, i32* @RADIO_2056_TX0, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %186 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 5
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @write_radio_reg(%struct.brcms_phy* %181, i32 %184, i64 %190)
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %193 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %194 = load i32, i32* @RADIO_2056_TX1, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %197 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 3
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 6
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @write_radio_reg(%struct.brcms_phy* %192, i32 %195, i64 %201)
  %203 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %204 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %205 = load i32, i32* @RADIO_2056_TX1, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %208 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  %210 = load i64*, i64** %209, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 7
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @write_radio_reg(%struct.brcms_phy* %203, i32 %206, i64 %212)
  br label %251

214:                                              ; preds = %118
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %216 = load i32, i32* @RADIO_2055_CORE1_TX_VOS_CNCL, align 4
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %218 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 3
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @write_radio_reg(%struct.brcms_phy* %215, i32 %216, i64 %222)
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %225 = load i32, i32* @RADIO_2055_CORE2_TX_VOS_CNCL, align 4
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %227 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 3
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i64 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @write_radio_reg(%struct.brcms_phy* %224, i32 %225, i64 %231)
  %233 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %234 = load i32, i32* @RADIO_2055_CORE1_TX_BB_MXGM, align 4
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 3
  %238 = load i64*, i64** %237, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 2
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @write_radio_reg(%struct.brcms_phy* %233, i32 %234, i64 %240)
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %243 = load i32, i32* @RADIO_2055_CORE2_TX_BB_MXGM, align 4
  %244 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %245 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 3
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 3
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @write_radio_reg(%struct.brcms_phy* %242, i32 %243, i64 %249)
  br label %251

251:                                              ; preds = %214, %125
  br label %252

252:                                              ; preds = %251, %113
  %253 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %254 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %255 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  %257 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %253, i32 1, i32* %256)
  br label %410

258:                                              ; preds = %100
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %260 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i64 @NREV_GE(i32 %262, i32 7)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %258
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %267 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i64*, i64** %268, align 8
  store i64* %269, i64** %7, align 8
  br label %404

270:                                              ; preds = %258
  %271 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %272 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i64 @NREV_GE(i32 %274, i32 3)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %366

277:                                              ; preds = %270
  %278 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %279 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %280 = load i32, i32* @RADIO_2056_TX0, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %283 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 0
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @write_radio_reg(%struct.brcms_phy* %278, i32 %281, i64 %287)
  %289 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %290 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %291 = load i32, i32* @RADIO_2056_TX0, align 4
  %292 = or i32 %290, %291
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %294 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 1
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @write_radio_reg(%struct.brcms_phy* %289, i32 %292, i64 %298)
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %301 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_I, align 4
  %302 = load i32, i32* @RADIO_2056_TX1, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %305 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 1
  %307 = load i64*, i64** %306, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 2
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @write_radio_reg(%struct.brcms_phy* %300, i32 %303, i64 %309)
  %311 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %312 = load i32, i32* @RADIO_2056_TX_LOFT_FINE_Q, align 4
  %313 = load i32, i32* @RADIO_2056_TX1, align 4
  %314 = or i32 %312, %313
  %315 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %316 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  %318 = load i64*, i64** %317, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 3
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @write_radio_reg(%struct.brcms_phy* %311, i32 %314, i64 %320)
  %322 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %323 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %324 = load i32, i32* @RADIO_2056_TX0, align 4
  %325 = or i32 %323, %324
  %326 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %327 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 1
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 4
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @write_radio_reg(%struct.brcms_phy* %322, i32 %325, i64 %331)
  %333 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %334 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %335 = load i32, i32* @RADIO_2056_TX0, align 4
  %336 = or i32 %334, %335
  %337 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %338 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i64*, i64** %339, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 5
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @write_radio_reg(%struct.brcms_phy* %333, i32 %336, i64 %342)
  %344 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %345 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_I, align 4
  %346 = load i32, i32* @RADIO_2056_TX1, align 4
  %347 = or i32 %345, %346
  %348 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %349 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 1
  %351 = load i64*, i64** %350, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 6
  %353 = load i64, i64* %352, align 8
  %354 = call i32 @write_radio_reg(%struct.brcms_phy* %344, i32 %347, i64 %353)
  %355 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %356 = load i32, i32* @RADIO_2056_TX_LOFT_COARSE_Q, align 4
  %357 = load i32, i32* @RADIO_2056_TX1, align 4
  %358 = or i32 %356, %357
  %359 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %360 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %359, i32 0, i32 3
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  %362 = load i64*, i64** %361, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 7
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @write_radio_reg(%struct.brcms_phy* %355, i32 %358, i64 %364)
  br label %403

366:                                              ; preds = %270
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %368 = load i32, i32* @RADIO_2055_CORE1_TX_VOS_CNCL, align 4
  %369 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %370 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 1
  %372 = load i64*, i64** %371, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 0
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @write_radio_reg(%struct.brcms_phy* %367, i32 %368, i64 %374)
  %376 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %377 = load i32, i32* @RADIO_2055_CORE2_TX_VOS_CNCL, align 4
  %378 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %379 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 1
  %381 = load i64*, i64** %380, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 1
  %383 = load i64, i64* %382, align 8
  %384 = call i32 @write_radio_reg(%struct.brcms_phy* %376, i32 %377, i64 %383)
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %386 = load i32, i32* @RADIO_2055_CORE1_TX_BB_MXGM, align 4
  %387 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %388 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 1
  %390 = load i64*, i64** %389, align 8
  %391 = getelementptr inbounds i64, i64* %390, i64 2
  %392 = load i64, i64* %391, align 8
  %393 = call i32 @write_radio_reg(%struct.brcms_phy* %385, i32 %386, i64 %392)
  %394 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %395 = load i32, i32* @RADIO_2055_CORE2_TX_BB_MXGM, align 4
  %396 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %397 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 1
  %399 = load i64*, i64** %398, align 8
  %400 = getelementptr inbounds i64, i64* %399, i64 3
  %401 = load i64, i64* %400, align 8
  %402 = call i32 @write_radio_reg(%struct.brcms_phy* %394, i32 %395, i64 %401)
  br label %403

403:                                              ; preds = %366, %277
  br label %404

404:                                              ; preds = %403, %265
  %405 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %406 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %407 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %405, i32 1, i32* %408)
  br label %410

410:                                              ; preds = %404, %252
  %411 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %412 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = call i64 @NREV_GE(i32 %414, i32 7)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %477

417:                                              ; preds = %410
  store i32 0, i32* %6, align 4
  br label %418

418:                                              ; preds = %473, %417
  %419 = load i32, i32* %6, align 4
  %420 = icmp sle i32 %419, 1
  br i1 %420, label %421, label %476

421:                                              ; preds = %418
  %422 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %423 = load i32, i32* @RADIO_2057, align 4
  %424 = load i32, i32* @TX, align 4
  %425 = load i32, i32* %6, align 4
  %426 = load i32, i32* @LOFT_FINE_I, align 4
  %427 = load i64*, i64** %7, align 8
  %428 = load i32, i32* %6, align 4
  %429 = mul nsw i32 2, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i64, i64* %427, i64 %430
  %432 = load i64, i64* %431, align 8
  %433 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %422, i32 %423, i32 %424, i32 %425, i32 %426, i64 %432)
  %434 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %435 = load i32, i32* @RADIO_2057, align 4
  %436 = load i32, i32* @TX, align 4
  %437 = load i32, i32* %6, align 4
  %438 = load i32, i32* @LOFT_FINE_Q, align 4
  %439 = load i64*, i64** %7, align 8
  %440 = load i32, i32* %6, align 4
  %441 = mul nsw i32 2, %440
  %442 = add nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i64, i64* %439, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %434, i32 %435, i32 %436, i32 %437, i32 %438, i64 %445)
  %447 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %448 = load i32, i32* @RADIO_2057, align 4
  %449 = load i32, i32* @TX, align 4
  %450 = load i32, i32* %6, align 4
  %451 = load i32, i32* @LOFT_COARSE_I, align 4
  %452 = load i64*, i64** %7, align 8
  %453 = load i32, i32* %6, align 4
  %454 = mul nsw i32 2, %453
  %455 = add nsw i32 %454, 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %452, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %447, i32 %448, i32 %449, i32 %450, i32 %451, i64 %458)
  %460 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %461 = load i32, i32* @RADIO_2057, align 4
  %462 = load i32, i32* @TX, align 4
  %463 = load i32, i32* %6, align 4
  %464 = load i32, i32* @LOFT_COARSE_Q, align 4
  %465 = load i64*, i64** %7, align 8
  %466 = load i32, i32* %6, align 4
  %467 = mul nsw i32 2, %466
  %468 = add nsw i32 %467, 5
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i64, i64* %465, i64 %469
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %460, i32 %461, i32 %462, i32 %463, i32 %464, i64 %471)
  br label %473

473:                                              ; preds = %421
  %474 = load i32, i32* %6, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %6, align 4
  br label %418

476:                                              ; preds = %418
  br label %477

477:                                              ; preds = %18, %34, %476, %410
  ret void
}

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i64*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @wlc_phy_tx_iq_war_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i64) #1

declare dso_local i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy*, i32, i32*) #1

declare dso_local i32 @WRITE_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
