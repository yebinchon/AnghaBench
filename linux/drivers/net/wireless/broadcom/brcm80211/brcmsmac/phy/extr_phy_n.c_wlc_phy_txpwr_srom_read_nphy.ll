; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_srom_read_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_srom_read_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64, i64, i64, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ssb_sprom }
%struct.ssb_sprom = type { i64, i64, i64, %struct.TYPE_14__, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }

@PHY_CHAIN_TX_DISABLE_TEMP = common dso_local global i64 0, align 8
@NPHY_SROM_TEMPSHIFT = common dso_local global i64 0, align 8
@NPHY_SROM_MAXTEMPOFFSET = common dso_local global i64 0, align 8
@NPHY_SROM_MINTEMPOFFSET = common dso_local global i64 0, align 8
@PHY_HYSTERESIS_DELTATEMP = common dso_local global i64 0, align 8
@NPHY_CAL_MAXTEMPDELTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*)* @wlc_phy_txpwr_srom_read_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_phy_txpwr_srom_read_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 9
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.ssb_sprom* %9, %struct.ssb_sprom** %3, align 8
  %10 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %11 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %16 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %21 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %26 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %34 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %42 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %50 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %58 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %66 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %74 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %79 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  %81 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %82 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %90 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  %97 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %98 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %1
  %104 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %105 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  br label %121

112:                                              ; preds = %1
  %113 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %114 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  br label %121

121:                                              ; preds = %112, %103
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %123 = call i32 @wlc_phy_txpower_ipa_upd(%struct.brcms_phy* %122)
  %124 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %125 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %130 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i64, i64* @PHY_CHAIN_TX_DISABLE_TEMP, align 8
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %136 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %121
  %138 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %139 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %179

147:                                              ; preds = %137
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @NPHY_SROM_TEMPSHIFT, align 8
  %152 = load i64, i64* @NPHY_SROM_MAXTEMPOFFSET, align 8
  %153 = add nsw i64 %151, %152
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i64, i64* @NPHY_SROM_MAXTEMPOFFSET, align 8
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %158 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  br label %178

159:                                              ; preds = %147
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @NPHY_SROM_TEMPSHIFT, align 8
  %164 = load i64, i64* @NPHY_SROM_MINTEMPOFFSET, align 8
  %165 = add nsw i64 %163, %164
  %166 = icmp slt i64 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i64, i64* @NPHY_SROM_MINTEMPOFFSET, align 8
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %170 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  br label %177

171:                                              ; preds = %159
  %172 = load i64, i64* @NPHY_SROM_TEMPSHIFT, align 8
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %174 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %175, %172
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %171, %167
  br label %178

178:                                              ; preds = %177, %155
  br label %179

179:                                              ; preds = %178, %137
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @PHY_HYSTERESIS_DELTATEMP, align 8
  %184 = sub nsw i64 %182, %183
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %186 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  %187 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %188 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %193 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @NPHY_CAL_MAXTEMPDELTA, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %179
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %199 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %198, i32 0, i32 3
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %197, %179
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = call i32 @wlc_phy_txpwr_srom_read_ppr_nphy(%struct.brcms_phy* %201)
  ret i32 1
}

declare dso_local i32 @wlc_phy_txpower_ipa_upd(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwr_srom_read_ppr_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
