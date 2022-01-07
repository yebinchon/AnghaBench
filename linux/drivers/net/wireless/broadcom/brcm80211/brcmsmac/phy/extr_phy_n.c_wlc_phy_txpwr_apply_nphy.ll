; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_apply_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_apply_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*, %struct.TYPE_4__, i32*, i32, i32, i32, %struct.TYPE_3__*, i32*, i32, i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CH_2G_GROUP = common dso_local global i32 0, align 4
@CH_5G_GROUP = common dso_local global i32 0, align 4
@TXP_FIRST_CCK = common dso_local global i64 0, align 8
@TXP_LAST_CCK = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM = common dso_local global i64 0, align 8
@TXP_LAST_OFDM = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_20_SISO = common dso_local global i32 0, align 4
@TXP_LAST_MCS_20_SISO = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_20_CDD = common dso_local global i64 0, align 8
@TXP_LAST_MCS_20_CDD = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM_20_CDD = common dso_local global i64 0, align 8
@TXP_LAST_OFDM_20_CDD = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_20_STBC = common dso_local global i64 0, align 8
@TXP_LAST_MCS_20_STBC = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_20_SDM = common dso_local global i64 0, align 8
@TXP_LAST_MCS_20_SDM = common dso_local global i32 0, align 4
@NPHY_IS_SROM_REINTERPRET = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_SISO = common dso_local global i64 0, align 8
@TXP_LAST_MCS_40_SISO = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM_40_SISO = common dso_local global i64 0, align 8
@TXP_LAST_OFDM_40_SISO = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_40_CDD = common dso_local global i64 0, align 8
@TXP_LAST_MCS_40_CDD = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM_40_CDD = common dso_local global i64 0, align 8
@TXP_LAST_OFDM_40_CDD = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_40_STBC = common dso_local global i64 0, align 8
@TXP_LAST_MCS_40_STBC = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_40_SDM = common dso_local global i64 0, align 8
@TXP_LAST_MCS_40_SDM = common dso_local global i32 0, align 4
@TXP_MCS_32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpwr_apply_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %352, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CH_2G_GROUP, align 4
  %16 = load i32, i32* @CH_5G_GROUP, align 4
  %17 = add nsw i32 %15, %16
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %355

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %193 [
    i32 0, label %21
    i32 1, label %73
    i32 2, label %113
    i32 3, label %153
  ]

21:                                               ; preds = %19
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 14
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min(i32 %27, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 23
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* @TXP_FIRST_CCK, align 8
  %45 = load i32, i32* @TXP_LAST_CCK, align 4
  %46 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %41, i32* %42, i32 %43, i64 %44, i32 %45)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 65535
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 65535
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %11, align 8
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 26
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 25
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %67, i32 0, i32 24
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %6, align 4
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 23
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %12, align 8
  br label %193

73:                                               ; preds = %19
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 14
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 14
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @min(i32 %79, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 65535
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %90, i32* %91, align 4
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 16
  %96 = and i32 %95, 65535
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %96, i32* %97, align 4
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %11, align 8
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 22
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %7, align 4
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 21
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %8, align 4
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 20
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %6, align 4
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %111 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %110, i32 0, i32 19
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %12, align 8
  br label %193

113:                                              ; preds = %19
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 14
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %121 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %120, i32 0, i32 14
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @min(i32 %119, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, 65535
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = ashr i32 %134, 16
  %136 = and i32 %135, 65535
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %136, i32* %137, align 4
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %139 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  store i32* %140, i32** %11, align 8
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 18
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %7, align 4
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %144, i32 0, i32 17
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %8, align 4
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %148 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %147, i32 0, i32 16
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %6, align 4
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %151 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %150, i32 0, i32 15
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %12, align 8
  br label %193

153:                                              ; preds = %19
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %155 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %154, i32 0, i32 14
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %160, i32 0, i32 14
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @min(i32 %159, i32 %165)
  store i32 %166, i32* %9, align 4
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %168 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, 65535
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %170, i32* %171, align 4
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %173 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 %174, 16
  %176 = and i32 %175, 65535
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %176, i32* %177, align 4
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  store i32* %180, i32** %11, align 8
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %181, i32 0, i32 13
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %7, align 4
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %185 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %8, align 4
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %188 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %187, i32 0, i32 11
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %6, align 4
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %190, i32 0, i32 10
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %12, align 8
  br label %193

193:                                              ; preds = %19, %153, %113, %73, %21
  %194 = load i32*, i32** %12, align 8
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %196 = load i32, i32* %9, align 4
  %197 = load i64, i64* @TXP_FIRST_OFDM, align 8
  %198 = load i32, i32* @TXP_LAST_OFDM, align 4
  %199 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %194, i32* %195, i32 %196, i64 %197, i32 %198)
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* @TXP_FIRST_MCS_20_SISO, align 4
  %202 = load i32, i32* @TXP_LAST_MCS_20_SISO, align 4
  %203 = load i64, i64* @TXP_FIRST_OFDM, align 8
  %204 = call i32 @wlc_phy_ofdm_to_mcs_powers_nphy(i32* %200, i32 %201, i32 %202, i64 %203)
  %205 = load i32*, i32** %12, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load i64, i64* @TXP_FIRST_MCS_20_CDD, align 8
  %209 = load i32, i32* @TXP_LAST_MCS_20_CDD, align 4
  %210 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %205, i32* %206, i32 %207, i64 %208, i32 %209)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %212 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %211, i32 0, i32 9
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @NREV_GE(i32 %214, i32 3)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %193
  %218 = load i32*, i32** %12, align 8
  %219 = load i32, i32* %7, align 4
  %220 = load i64, i64* @TXP_FIRST_MCS_20_CDD, align 8
  %221 = load i32, i32* @TXP_LAST_MCS_20_CDD, align 4
  %222 = call i32 @wlc_phy_txpwr_nphy_po_apply(i32* %218, i32 %219, i64 %220, i32 %221)
  br label %223

223:                                              ; preds = %217, %193
  %224 = load i32*, i32** %12, align 8
  %225 = load i64, i64* @TXP_FIRST_OFDM_20_CDD, align 8
  %226 = load i32, i32* @TXP_LAST_OFDM_20_CDD, align 4
  %227 = load i64, i64* @TXP_FIRST_MCS_20_CDD, align 8
  %228 = call i32 @wlc_phy_mcs_to_ofdm_powers_nphy(i32* %224, i64 %225, i32 %226, i64 %227)
  %229 = load i32*, i32** %12, align 8
  %230 = load i32*, i32** %11, align 8
  %231 = load i32, i32* %9, align 4
  %232 = load i64, i64* @TXP_FIRST_MCS_20_STBC, align 8
  %233 = load i32, i32* @TXP_LAST_MCS_20_STBC, align 4
  %234 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %229, i32* %230, i32 %231, i64 %232, i32 %233)
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %235, i32 0, i32 9
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @NREV_GE(i32 %238, i32 3)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %223
  %242 = load i32*, i32** %12, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i64, i64* @TXP_FIRST_MCS_20_STBC, align 8
  %245 = load i32, i32* @TXP_LAST_MCS_20_STBC, align 4
  %246 = call i32 @wlc_phy_txpwr_nphy_po_apply(i32* %242, i32 %243, i64 %244, i32 %245)
  br label %247

247:                                              ; preds = %241, %223
  %248 = load i32*, i32** %12, align 8
  %249 = load i32*, i32** %11, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %9, align 4
  %252 = load i64, i64* @TXP_FIRST_MCS_20_SDM, align 8
  %253 = load i32, i32* @TXP_LAST_MCS_20_SDM, align 4
  %254 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %248, i32* %250, i32 %251, i64 %252, i32 %253)
  %255 = load i64, i64* @NPHY_IS_SROM_REINTERPRET, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %306

257:                                              ; preds = %247
  %258 = load i32*, i32** %12, align 8
  %259 = load i32*, i32** %11, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 4
  %261 = load i32, i32* %9, align 4
  %262 = load i64, i64* @TXP_FIRST_MCS_40_SISO, align 8
  %263 = load i32, i32* @TXP_LAST_MCS_40_SISO, align 4
  %264 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %258, i32* %260, i32 %261, i64 %262, i32 %263)
  %265 = load i32*, i32** %12, align 8
  %266 = load i64, i64* @TXP_FIRST_OFDM_40_SISO, align 8
  %267 = load i32, i32* @TXP_LAST_OFDM_40_SISO, align 4
  %268 = load i64, i64* @TXP_FIRST_MCS_40_SISO, align 8
  %269 = call i32 @wlc_phy_mcs_to_ofdm_powers_nphy(i32* %265, i64 %266, i32 %267, i64 %268)
  %270 = load i32*, i32** %12, align 8
  %271 = load i32*, i32** %11, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  %273 = load i32, i32* %9, align 4
  %274 = load i64, i64* @TXP_FIRST_MCS_40_CDD, align 8
  %275 = load i32, i32* @TXP_LAST_MCS_40_CDD, align 4
  %276 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %270, i32* %272, i32 %273, i64 %274, i32 %275)
  %277 = load i32*, i32** %12, align 8
  %278 = load i32, i32* %7, align 4
  %279 = load i64, i64* @TXP_FIRST_MCS_40_CDD, align 8
  %280 = load i32, i32* @TXP_LAST_MCS_40_CDD, align 4
  %281 = call i32 @wlc_phy_txpwr_nphy_po_apply(i32* %277, i32 %278, i64 %279, i32 %280)
  %282 = load i32*, i32** %12, align 8
  %283 = load i64, i64* @TXP_FIRST_OFDM_40_CDD, align 8
  %284 = load i32, i32* @TXP_LAST_OFDM_40_CDD, align 4
  %285 = load i64, i64* @TXP_FIRST_MCS_40_CDD, align 8
  %286 = call i32 @wlc_phy_mcs_to_ofdm_powers_nphy(i32* %282, i64 %283, i32 %284, i64 %285)
  %287 = load i32*, i32** %12, align 8
  %288 = load i32*, i32** %11, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 4
  %290 = load i32, i32* %9, align 4
  %291 = load i64, i64* @TXP_FIRST_MCS_40_STBC, align 8
  %292 = load i32, i32* @TXP_LAST_MCS_40_STBC, align 4
  %293 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %287, i32* %289, i32 %290, i64 %291, i32 %292)
  %294 = load i32*, i32** %12, align 8
  %295 = load i32, i32* %8, align 4
  %296 = load i64, i64* @TXP_FIRST_MCS_40_STBC, align 8
  %297 = load i32, i32* @TXP_LAST_MCS_40_STBC, align 4
  %298 = call i32 @wlc_phy_txpwr_nphy_po_apply(i32* %294, i32 %295, i64 %296, i32 %297)
  %299 = load i32*, i32** %12, align 8
  %300 = load i32*, i32** %11, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 6
  %302 = load i32, i32* %9, align 4
  %303 = load i64, i64* @TXP_FIRST_MCS_40_SDM, align 8
  %304 = load i32, i32* @TXP_LAST_MCS_40_SDM, align 4
  %305 = call i32 @wlc_phy_txpwr_nphy_srom_convert(i32* %299, i32* %301, i32 %302, i64 %303, i32 %304)
  br label %331

306:                                              ; preds = %247
  %307 = load i64, i64* @TXP_FIRST_OFDM_40_SISO, align 8
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %3, align 4
  %309 = load i64, i64* @TXP_FIRST_OFDM, align 8
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %4, align 4
  br label %311

311:                                              ; preds = %325, %306
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* @TXP_LAST_MCS_40_SDM, align 4
  %314 = icmp sle i32 %312, %313
  br i1 %314, label %315, label %330

315:                                              ; preds = %311
  %316 = load i32*, i32** %12, align 8
  %317 = load i32, i32* %4, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %12, align 8
  %322 = load i32, i32* %3, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %320, i32* %324, align 4
  br label %325

325:                                              ; preds = %315
  %326 = load i32, i32* %3, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %3, align 4
  %328 = load i32, i32* %4, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %4, align 4
  br label %311

330:                                              ; preds = %311
  br label %331

331:                                              ; preds = %330, %257
  %332 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %333 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %332, i32 0, i32 9
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = call i64 @NREV_GE(i32 %335, i32 3)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %331
  %339 = load i32*, i32** %12, align 8
  %340 = load i32, i32* %6, align 4
  %341 = load i64, i64* @TXP_FIRST_OFDM_40_SISO, align 8
  %342 = load i32, i32* @TXP_LAST_MCS_40_SDM, align 4
  %343 = call i32 @wlc_phy_txpwr_nphy_po_apply(i32* %339, i32 %340, i64 %341, i32 %342)
  br label %344

344:                                              ; preds = %338, %331
  %345 = load i32*, i32** %12, align 8
  %346 = load i64, i64* @TXP_FIRST_MCS_40_CDD, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32*, i32** %12, align 8
  %350 = load i64, i64* @TXP_MCS_32, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  store i32 %348, i32* %351, align 4
  br label %352

352:                                              ; preds = %344
  %353 = load i32, i32* %5, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %5, align 4
  br label %13

355:                                              ; preds = %13
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wlc_phy_txpwr_nphy_srom_convert(i32*, i32*, i32, i64, i32) #1

declare dso_local i32 @wlc_phy_ofdm_to_mcs_powers_nphy(i32*, i32, i32, i64) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_txpwr_nphy_po_apply(i32*, i32, i64, i32) #1

declare dso_local i32 @wlc_phy_mcs_to_ofdm_powers_nphy(i32*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
