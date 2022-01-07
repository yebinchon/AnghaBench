; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_srom_read_ppr_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_srom_read_ppr_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_10__*, i32*, i32, i32*, i32, i32*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ssb_sprom }
%struct.ssb_sprom = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_9__*, i32*, i32, i32*, i32, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32 }

@CH_2G_GROUP = common dso_local global i32 0, align 4
@CH_5G_GROUP = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i64 0, align 8
@PHY_CORE_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txpwr_srom_read_ppr_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txpwr_srom_read_ppr_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssb_sprom*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 27
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %8, align 8
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 26
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 9
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %927

22:                                               ; preds = %1
  %23 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %24 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 15
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 240
  %32 = ashr i32 %31, 4
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 3840
  %37 = ashr i32 %36, 8
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 61440
  %42 = ashr i32 %41, 12
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %46 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 15
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 240
  %54 = ashr i32 %53, 4
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 3840
  %59 = ashr i32 %58, 8
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 61440
  %64 = ashr i32 %63, 12
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %68 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 15
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 240
  %76 = ashr i32 %75, 4
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 3840
  %81 = ashr i32 %80, 8
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 61440
  %86 = ashr i32 %85, 12
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %90 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 15
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 240
  %98 = ashr i32 %97, 4
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %100 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %99, i32 0, i32 13
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 3840
  %103 = ashr i32 %102, 8
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 14
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, 61440
  %108 = ashr i32 %107, 12
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 15
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %921, %22
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @CH_2G_GROUP, align 4
  %114 = load i32, i32* @CH_5G_GROUP, align 4
  %115 = add nsw i32 %113, %114
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %924

117:                                              ; preds = %111
  %118 = load i32, i32* %7, align 4
  switch i32 %118, label %920 [
    i32 0, label %119
    i32 1, label %334
    i32 2, label %544
    i32 3, label %732
  ]

119:                                              ; preds = %117
  %120 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %121 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %120, i32 0, i32 6
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %127 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %126, i32 0, i32 18
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load i64, i64* @PHY_CORE_0, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 19
  store i32 %125, i32* %131, align 4
  %132 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %133 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %132, i32 0, i32 6
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %139 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %138, i32 0, i32 18
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i64, i64* @PHY_CORE_1, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 19
  store i32 %137, i32* %143, align 4
  %144 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %145 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %144, i32 0, i32 6
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 8
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 18
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = load i64, i64* @PHY_CORE_0, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 18
  store i32 %151, i32* %157, align 4
  %158 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %159 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %158, i32 0, i32 6
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 8
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %167 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %166, i32 0, i32 18
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i64, i64* @PHY_CORE_1, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 18
  store i32 %165, i32* %171, align 4
  %172 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %173 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %172, i32 0, i32 6
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 8
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 18
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = load i64, i64* @PHY_CORE_0, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 17
  store i32 %179, i32* %185, align 4
  %186 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %187 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %186, i32 0, i32 6
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 8
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %195 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %194, i32 0, i32 18
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i64, i64* @PHY_CORE_1, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 17
  store i32 %193, i32* %199, align 4
  %200 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %201 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %200, i32 0, i32 6
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 8
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %209 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %208, i32 0, i32 18
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i64, i64* @PHY_CORE_0, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 16
  store i32 %207, i32* %213, align 4
  %214 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %215 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %214, i32 0, i32 6
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 8
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %223 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %222, i32 0, i32 18
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load i64, i64* @PHY_CORE_1, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 16
  store i32 %221, i32* %227, align 4
  %228 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %229 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %228, i32 0, i32 6
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %235 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %234, i32 0, i32 18
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load i64, i64* @PHY_CORE_0, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 15
  store i32 %233, i32* %239, align 4
  %240 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %241 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %240, i32 0, i32 6
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 1
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %247 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %246, i32 0, i32 18
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = load i64, i64* @PHY_CORE_1, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 15
  store i32 %245, i32* %251, align 4
  %252 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %253 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %252, i32 0, i32 13
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %256 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %255, i32 0, i32 25
  store i32 %254, i32* %256, align 4
  %257 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %258 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %257, i32 0, i32 12
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %261 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %260, i32 0, i32 24
  store i32 %259, i32* %261, align 8
  %262 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %263 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %262, i32 0, i32 11
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %268 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %267, i32 0, i32 23
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 %266, i32* %270, align 4
  %271 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %272 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %271, i32 0, i32 11
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %277 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %276, i32 0, i32 23
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  store i32 %275, i32* %279, align 4
  %280 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %281 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %280, i32 0, i32 11
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 2
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %285, i32 0, i32 23
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  store i32 %284, i32* %288, align 4
  %289 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %290 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %289, i32 0, i32 11
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %295 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %294, i32 0, i32 23
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  store i32 %293, i32* %297, align 4
  %298 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %299 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %298, i32 0, i32 11
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 4
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %304 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %303, i32 0, i32 23
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 4
  store i32 %302, i32* %306, align 4
  %307 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %308 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %307, i32 0, i32 11
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 5
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %313 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %312, i32 0, i32 23
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 5
  store i32 %311, i32* %315, align 4
  %316 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %317 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %316, i32 0, i32 11
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 6
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %322 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %321, i32 0, i32 23
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 6
  store i32 %320, i32* %324, align 4
  %325 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %326 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %325, i32 0, i32 11
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 7
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %331 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %330, i32 0, i32 23
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 7
  store i32 %329, i32* %333, align 4
  br label %920

334:                                              ; preds = %117
  %335 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %336 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %335, i32 0, i32 6
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %342 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %341, i32 0, i32 18
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %342, align 8
  %344 = load i64, i64* @PHY_CORE_0, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 14
  store i32 %340, i32* %346, align 4
  %347 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %348 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %347, i32 0, i32 6
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i64 1
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %354 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %353, i32 0, i32 18
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = load i64, i64* @PHY_CORE_1, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 14
  store i32 %352, i32* %358, align 4
  %359 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %360 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %359, i32 0, i32 6
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 5
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %368 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %367, i32 0, i32 18
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %368, align 8
  %370 = load i64, i64* @PHY_CORE_0, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 13
  store i32 %366, i32* %372, align 4
  %373 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %374 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %373, i32 0, i32 6
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i64 1
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 5
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %382 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %381, i32 0, i32 18
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %382, align 8
  %384 = load i64, i64* @PHY_CORE_1, align 8
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 13
  store i32 %380, i32* %386, align 4
  %387 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %388 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %387, i32 0, i32 6
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i64 0
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 5
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %396 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %395, i32 0, i32 18
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %396, align 8
  %398 = load i64, i64* @PHY_CORE_0, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 12
  store i32 %394, i32* %400, align 4
  %401 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %402 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %401, i32 0, i32 6
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i64 1
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 5
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 1
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %410 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %409, i32 0, i32 18
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %410, align 8
  %412 = load i64, i64* @PHY_CORE_1, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 12
  store i32 %408, i32* %414, align 4
  %415 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %416 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %415, i32 0, i32 6
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i64 0
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 5
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 2
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %424 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %423, i32 0, i32 18
  %425 = load %struct.TYPE_10__*, %struct.TYPE_10__** %424, align 8
  %426 = load i64, i64* @PHY_CORE_0, align 8
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 11
  store i32 %422, i32* %428, align 4
  %429 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %430 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %429, i32 0, i32 6
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i64 1
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 5
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 2
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %438 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %437, i32 0, i32 18
  %439 = load %struct.TYPE_10__*, %struct.TYPE_10__** %438, align 8
  %440 = load i64, i64* @PHY_CORE_1, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i32 0, i32 11
  store i32 %436, i32* %442, align 4
  %443 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %444 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %443, i32 0, i32 6
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i64 0
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %450 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %449, i32 0, i32 18
  %451 = load %struct.TYPE_10__*, %struct.TYPE_10__** %450, align 8
  %452 = load i64, i64* @PHY_CORE_0, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %453, i32 0, i32 10
  store i32 %448, i32* %454, align 4
  %455 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %456 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %455, i32 0, i32 6
  %457 = load %struct.TYPE_9__*, %struct.TYPE_9__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i64 1
  %459 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %462 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %461, i32 0, i32 18
  %463 = load %struct.TYPE_10__*, %struct.TYPE_10__** %462, align 8
  %464 = load i64, i64* @PHY_CORE_1, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %463, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 10
  store i32 %460, i32* %466, align 4
  %467 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %468 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %467, i32 0, i32 10
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %471 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %470, i32 0, i32 22
  store i32 %469, i32* %471, align 8
  %472 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %473 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %472, i32 0, i32 9
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 0
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %478 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %477, i32 0, i32 21
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 0
  store i32 %476, i32* %480, align 4
  %481 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %482 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %481, i32 0, i32 9
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %487 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %486, i32 0, i32 21
  %488 = load i32*, i32** %487, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 1
  store i32 %485, i32* %489, align 4
  %490 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %491 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %490, i32 0, i32 9
  %492 = load i32*, i32** %491, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 2
  %494 = load i32, i32* %493, align 4
  %495 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %496 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %495, i32 0, i32 21
  %497 = load i32*, i32** %496, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 2
  store i32 %494, i32* %498, align 4
  %499 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %500 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %499, i32 0, i32 9
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 3
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %505 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %504, i32 0, i32 21
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 3
  store i32 %503, i32* %507, align 4
  %508 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %509 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %508, i32 0, i32 9
  %510 = load i32*, i32** %509, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 4
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %514 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %513, i32 0, i32 21
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 4
  store i32 %512, i32* %516, align 4
  %517 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %518 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %517, i32 0, i32 9
  %519 = load i32*, i32** %518, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 5
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %523 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %522, i32 0, i32 21
  %524 = load i32*, i32** %523, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 5
  store i32 %521, i32* %525, align 4
  %526 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %527 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %526, i32 0, i32 9
  %528 = load i32*, i32** %527, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 6
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %532 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %531, i32 0, i32 21
  %533 = load i32*, i32** %532, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 6
  store i32 %530, i32* %534, align 4
  %535 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %536 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %535, i32 0, i32 9
  %537 = load i32*, i32** %536, align 8
  %538 = getelementptr inbounds i32, i32* %537, i64 7
  %539 = load i32, i32* %538, align 4
  %540 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %541 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %540, i32 0, i32 21
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 7
  store i32 %539, i32* %543, align 4
  br label %920

544:                                              ; preds = %117
  %545 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %546 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %545, i32 0, i32 6
  %547 = load %struct.TYPE_9__*, %struct.TYPE_9__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %547, i64 0
  %549 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %548, i32 0, i32 3
  %550 = load i32, i32* %549, align 8
  %551 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %552 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %551, i32 0, i32 18
  %553 = load %struct.TYPE_10__*, %struct.TYPE_10__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i64 0
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 9
  store i32 %550, i32* %555, align 4
  %556 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %557 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %556, i32 0, i32 6
  %558 = load %struct.TYPE_9__*, %struct.TYPE_9__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %558, i64 1
  %560 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %559, i32 0, i32 3
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %563 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %562, i32 0, i32 18
  %564 = load %struct.TYPE_10__*, %struct.TYPE_10__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %564, i64 1
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 9
  store i32 %561, i32* %566, align 4
  %567 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %568 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %567, i32 0, i32 6
  %569 = load %struct.TYPE_9__*, %struct.TYPE_9__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %569, i64 0
  %571 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i32 0, i32 2
  %572 = load i32*, i32** %571, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 0
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %576 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %575, i32 0, i32 18
  %577 = load %struct.TYPE_10__*, %struct.TYPE_10__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i64 0
  %579 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %578, i32 0, i32 8
  store i32 %574, i32* %579, align 4
  %580 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %581 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %580, i32 0, i32 6
  %582 = load %struct.TYPE_9__*, %struct.TYPE_9__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %582, i64 1
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 2
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 0
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %589 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %588, i32 0, i32 18
  %590 = load %struct.TYPE_10__*, %struct.TYPE_10__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %590, i64 1
  %592 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %591, i32 0, i32 8
  store i32 %587, i32* %592, align 4
  %593 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %594 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %593, i32 0, i32 6
  %595 = load %struct.TYPE_9__*, %struct.TYPE_9__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i64 0
  %597 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %596, i32 0, i32 2
  %598 = load i32*, i32** %597, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 1
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %602 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %601, i32 0, i32 18
  %603 = load %struct.TYPE_10__*, %struct.TYPE_10__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i64 0
  %605 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %604, i32 0, i32 7
  store i32 %600, i32* %605, align 4
  %606 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %607 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %606, i32 0, i32 6
  %608 = load %struct.TYPE_9__*, %struct.TYPE_9__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %608, i64 1
  %610 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %609, i32 0, i32 2
  %611 = load i32*, i32** %610, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 1
  %613 = load i32, i32* %612, align 4
  %614 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %615 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %614, i32 0, i32 18
  %616 = load %struct.TYPE_10__*, %struct.TYPE_10__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %616, i64 1
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 7
  store i32 %613, i32* %618, align 4
  %619 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %620 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %619, i32 0, i32 6
  %621 = load %struct.TYPE_9__*, %struct.TYPE_9__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %621, i64 0
  %623 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %622, i32 0, i32 2
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 2
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %628 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %627, i32 0, i32 18
  %629 = load %struct.TYPE_10__*, %struct.TYPE_10__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %629, i64 0
  %631 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %630, i32 0, i32 6
  store i32 %626, i32* %631, align 4
  %632 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %633 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %632, i32 0, i32 6
  %634 = load %struct.TYPE_9__*, %struct.TYPE_9__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i64 1
  %636 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %635, i32 0, i32 2
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 2
  %639 = load i32, i32* %638, align 4
  %640 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %641 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %640, i32 0, i32 18
  %642 = load %struct.TYPE_10__*, %struct.TYPE_10__** %641, align 8
  %643 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %642, i64 1
  %644 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %643, i32 0, i32 6
  store i32 %639, i32* %644, align 4
  %645 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %646 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %645, i32 0, i32 18
  %647 = load %struct.TYPE_10__*, %struct.TYPE_10__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %647, i64 0
  %649 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %648, i32 0, i32 5
  store i32 0, i32* %649, align 4
  %650 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %651 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %650, i32 0, i32 18
  %652 = load %struct.TYPE_10__*, %struct.TYPE_10__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %652, i64 1
  %654 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %653, i32 0, i32 5
  store i32 0, i32* %654, align 4
  %655 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %656 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %655, i32 0, i32 8
  %657 = load i32, i32* %656, align 8
  %658 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %659 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %658, i32 0, i32 20
  store i32 %657, i32* %659, align 8
  %660 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %661 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %660, i32 0, i32 7
  %662 = load i32*, i32** %661, align 8
  %663 = getelementptr inbounds i32, i32* %662, i64 0
  %664 = load i32, i32* %663, align 4
  %665 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %666 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %665, i32 0, i32 19
  %667 = load i32*, i32** %666, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 0
  store i32 %664, i32* %668, align 4
  %669 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %670 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %669, i32 0, i32 7
  %671 = load i32*, i32** %670, align 8
  %672 = getelementptr inbounds i32, i32* %671, i64 1
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %675 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %674, i32 0, i32 19
  %676 = load i32*, i32** %675, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 1
  store i32 %673, i32* %677, align 4
  %678 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %679 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %678, i32 0, i32 7
  %680 = load i32*, i32** %679, align 8
  %681 = getelementptr inbounds i32, i32* %680, i64 2
  %682 = load i32, i32* %681, align 4
  %683 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %684 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %683, i32 0, i32 19
  %685 = load i32*, i32** %684, align 8
  %686 = getelementptr inbounds i32, i32* %685, i64 2
  store i32 %682, i32* %686, align 4
  %687 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %688 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %687, i32 0, i32 7
  %689 = load i32*, i32** %688, align 8
  %690 = getelementptr inbounds i32, i32* %689, i64 3
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %693 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %692, i32 0, i32 19
  %694 = load i32*, i32** %693, align 8
  %695 = getelementptr inbounds i32, i32* %694, i64 3
  store i32 %691, i32* %695, align 4
  %696 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %697 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %696, i32 0, i32 7
  %698 = load i32*, i32** %697, align 8
  %699 = getelementptr inbounds i32, i32* %698, i64 4
  %700 = load i32, i32* %699, align 4
  %701 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %702 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %701, i32 0, i32 19
  %703 = load i32*, i32** %702, align 8
  %704 = getelementptr inbounds i32, i32* %703, i64 4
  store i32 %700, i32* %704, align 4
  %705 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %706 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %705, i32 0, i32 7
  %707 = load i32*, i32** %706, align 8
  %708 = getelementptr inbounds i32, i32* %707, i64 5
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %711 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %710, i32 0, i32 19
  %712 = load i32*, i32** %711, align 8
  %713 = getelementptr inbounds i32, i32* %712, i64 5
  store i32 %709, i32* %713, align 4
  %714 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %715 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %714, i32 0, i32 7
  %716 = load i32*, i32** %715, align 8
  %717 = getelementptr inbounds i32, i32* %716, i64 6
  %718 = load i32, i32* %717, align 4
  %719 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %720 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %719, i32 0, i32 19
  %721 = load i32*, i32** %720, align 8
  %722 = getelementptr inbounds i32, i32* %721, i64 6
  store i32 %718, i32* %722, align 4
  %723 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %724 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %723, i32 0, i32 7
  %725 = load i32*, i32** %724, align 8
  %726 = getelementptr inbounds i32, i32* %725, i64 7
  %727 = load i32, i32* %726, align 4
  %728 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %729 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %728, i32 0, i32 19
  %730 = load i32*, i32** %729, align 8
  %731 = getelementptr inbounds i32, i32* %730, i64 7
  store i32 %727, i32* %731, align 4
  br label %920

732:                                              ; preds = %117
  %733 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %734 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %733, i32 0, i32 6
  %735 = load %struct.TYPE_9__*, %struct.TYPE_9__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %735, i64 0
  %737 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 8
  %739 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %740 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %739, i32 0, i32 18
  %741 = load %struct.TYPE_10__*, %struct.TYPE_10__** %740, align 8
  %742 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %741, i64 0
  %743 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %742, i32 0, i32 4
  store i32 %738, i32* %743, align 4
  %744 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %745 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %744, i32 0, i32 6
  %746 = load %struct.TYPE_9__*, %struct.TYPE_9__** %745, align 8
  %747 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %746, i64 1
  %748 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 8
  %750 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %751 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %750, i32 0, i32 18
  %752 = load %struct.TYPE_10__*, %struct.TYPE_10__** %751, align 8
  %753 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %752, i64 1
  %754 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %753, i32 0, i32 4
  store i32 %749, i32* %754, align 4
  %755 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %756 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %755, i32 0, i32 6
  %757 = load %struct.TYPE_9__*, %struct.TYPE_9__** %756, align 8
  %758 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %757, i64 0
  %759 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %758, i32 0, i32 0
  %760 = load i32*, i32** %759, align 8
  %761 = getelementptr inbounds i32, i32* %760, i64 0
  %762 = load i32, i32* %761, align 4
  %763 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %764 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %763, i32 0, i32 18
  %765 = load %struct.TYPE_10__*, %struct.TYPE_10__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %765, i64 0
  %767 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %766, i32 0, i32 3
  store i32 %762, i32* %767, align 4
  %768 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %769 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %768, i32 0, i32 6
  %770 = load %struct.TYPE_9__*, %struct.TYPE_9__** %769, align 8
  %771 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %770, i64 1
  %772 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %771, i32 0, i32 0
  %773 = load i32*, i32** %772, align 8
  %774 = getelementptr inbounds i32, i32* %773, i64 0
  %775 = load i32, i32* %774, align 4
  %776 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %777 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %776, i32 0, i32 18
  %778 = load %struct.TYPE_10__*, %struct.TYPE_10__** %777, align 8
  %779 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %778, i64 1
  %780 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %779, i32 0, i32 3
  store i32 %775, i32* %780, align 4
  %781 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %782 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %781, i32 0, i32 6
  %783 = load %struct.TYPE_9__*, %struct.TYPE_9__** %782, align 8
  %784 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %783, i64 0
  %785 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %784, i32 0, i32 0
  %786 = load i32*, i32** %785, align 8
  %787 = getelementptr inbounds i32, i32* %786, i64 1
  %788 = load i32, i32* %787, align 4
  %789 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %790 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %789, i32 0, i32 18
  %791 = load %struct.TYPE_10__*, %struct.TYPE_10__** %790, align 8
  %792 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %791, i64 0
  %793 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %792, i32 0, i32 2
  store i32 %788, i32* %793, align 4
  %794 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %795 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %794, i32 0, i32 6
  %796 = load %struct.TYPE_9__*, %struct.TYPE_9__** %795, align 8
  %797 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %796, i64 1
  %798 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %797, i32 0, i32 0
  %799 = load i32*, i32** %798, align 8
  %800 = getelementptr inbounds i32, i32* %799, i64 1
  %801 = load i32, i32* %800, align 4
  %802 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %803 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %802, i32 0, i32 18
  %804 = load %struct.TYPE_10__*, %struct.TYPE_10__** %803, align 8
  %805 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %804, i64 1
  %806 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %805, i32 0, i32 2
  store i32 %801, i32* %806, align 4
  %807 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %808 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %807, i32 0, i32 6
  %809 = load %struct.TYPE_9__*, %struct.TYPE_9__** %808, align 8
  %810 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %809, i64 0
  %811 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %810, i32 0, i32 0
  %812 = load i32*, i32** %811, align 8
  %813 = getelementptr inbounds i32, i32* %812, i64 2
  %814 = load i32, i32* %813, align 4
  %815 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %816 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %815, i32 0, i32 18
  %817 = load %struct.TYPE_10__*, %struct.TYPE_10__** %816, align 8
  %818 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %817, i64 0
  %819 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %818, i32 0, i32 1
  store i32 %814, i32* %819, align 4
  %820 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %821 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %820, i32 0, i32 6
  %822 = load %struct.TYPE_9__*, %struct.TYPE_9__** %821, align 8
  %823 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %822, i64 1
  %824 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %823, i32 0, i32 0
  %825 = load i32*, i32** %824, align 8
  %826 = getelementptr inbounds i32, i32* %825, i64 2
  %827 = load i32, i32* %826, align 4
  %828 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %829 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %828, i32 0, i32 18
  %830 = load %struct.TYPE_10__*, %struct.TYPE_10__** %829, align 8
  %831 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %830, i64 1
  %832 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %831, i32 0, i32 1
  store i32 %827, i32* %832, align 4
  %833 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %834 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %833, i32 0, i32 18
  %835 = load %struct.TYPE_10__*, %struct.TYPE_10__** %834, align 8
  %836 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %835, i64 0
  %837 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %836, i32 0, i32 0
  store i32 0, i32* %837, align 4
  %838 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %839 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %838, i32 0, i32 18
  %840 = load %struct.TYPE_10__*, %struct.TYPE_10__** %839, align 8
  %841 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %840, i64 1
  %842 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %841, i32 0, i32 0
  store i32 0, i32* %842, align 4
  %843 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %844 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %843, i32 0, i32 5
  %845 = load i32, i32* %844, align 8
  %846 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %847 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %846, i32 0, i32 17
  store i32 %845, i32* %847, align 8
  %848 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %849 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %848, i32 0, i32 4
  %850 = load i32*, i32** %849, align 8
  %851 = getelementptr inbounds i32, i32* %850, i64 0
  %852 = load i32, i32* %851, align 4
  %853 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %854 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %853, i32 0, i32 16
  %855 = load i32*, i32** %854, align 8
  %856 = getelementptr inbounds i32, i32* %855, i64 0
  store i32 %852, i32* %856, align 4
  %857 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %858 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %857, i32 0, i32 4
  %859 = load i32*, i32** %858, align 8
  %860 = getelementptr inbounds i32, i32* %859, i64 1
  %861 = load i32, i32* %860, align 4
  %862 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %863 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %862, i32 0, i32 16
  %864 = load i32*, i32** %863, align 8
  %865 = getelementptr inbounds i32, i32* %864, i64 1
  store i32 %861, i32* %865, align 4
  %866 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %867 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %866, i32 0, i32 4
  %868 = load i32*, i32** %867, align 8
  %869 = getelementptr inbounds i32, i32* %868, i64 2
  %870 = load i32, i32* %869, align 4
  %871 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %872 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %871, i32 0, i32 16
  %873 = load i32*, i32** %872, align 8
  %874 = getelementptr inbounds i32, i32* %873, i64 2
  store i32 %870, i32* %874, align 4
  %875 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %876 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %875, i32 0, i32 4
  %877 = load i32*, i32** %876, align 8
  %878 = getelementptr inbounds i32, i32* %877, i64 3
  %879 = load i32, i32* %878, align 4
  %880 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %881 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %880, i32 0, i32 16
  %882 = load i32*, i32** %881, align 8
  %883 = getelementptr inbounds i32, i32* %882, i64 3
  store i32 %879, i32* %883, align 4
  %884 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %885 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %884, i32 0, i32 4
  %886 = load i32*, i32** %885, align 8
  %887 = getelementptr inbounds i32, i32* %886, i64 4
  %888 = load i32, i32* %887, align 4
  %889 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %890 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %889, i32 0, i32 16
  %891 = load i32*, i32** %890, align 8
  %892 = getelementptr inbounds i32, i32* %891, i64 4
  store i32 %888, i32* %892, align 4
  %893 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %894 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %893, i32 0, i32 4
  %895 = load i32*, i32** %894, align 8
  %896 = getelementptr inbounds i32, i32* %895, i64 5
  %897 = load i32, i32* %896, align 4
  %898 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %899 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %898, i32 0, i32 16
  %900 = load i32*, i32** %899, align 8
  %901 = getelementptr inbounds i32, i32* %900, i64 5
  store i32 %897, i32* %901, align 4
  %902 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %903 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %902, i32 0, i32 4
  %904 = load i32*, i32** %903, align 8
  %905 = getelementptr inbounds i32, i32* %904, i64 6
  %906 = load i32, i32* %905, align 4
  %907 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %908 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %907, i32 0, i32 16
  %909 = load i32*, i32** %908, align 8
  %910 = getelementptr inbounds i32, i32* %909, i64 6
  store i32 %906, i32* %910, align 4
  %911 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  %912 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %911, i32 0, i32 4
  %913 = load i32*, i32** %912, align 8
  %914 = getelementptr inbounds i32, i32* %913, i64 7
  %915 = load i32, i32* %914, align 4
  %916 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %917 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %916, i32 0, i32 16
  %918 = load i32*, i32** %917, align 8
  %919 = getelementptr inbounds i32, i32* %918, i64 7
  store i32 %915, i32* %919, align 4
  br label %920

920:                                              ; preds = %117, %732, %544, %334, %119
  br label %921

921:                                              ; preds = %920
  %922 = load i32, i32* %7, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %7, align 4
  br label %111

924:                                              ; preds = %111
  %925 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %926 = call i32 @wlc_phy_txpwr_apply_nphy(%struct.brcms_phy* %925)
  br label %927

927:                                              ; preds = %924, %21
  ret void
}

declare dso_local i32 @wlc_phy_txpwr_apply_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
