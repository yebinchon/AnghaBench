; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_txpwr_srom_read_lcnphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_phy_txpwr_srom_read_lcnphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i8**, i32*, i32*, i32*, i8*, i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ssb_sprom }
%struct.ssb_sprom = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcms_phy_pub = type { i32 }

@PWRTBL_NUM_COEFF = common dso_local global i32 0, align 4
@TXP_FIRST_CCK = common dso_local global i32 0, align 4
@TXP_LAST_CCK = common dso_local global i32 0, align 4
@TXP_FIRST_OFDM = common dso_local global i32 0, align 4
@TXP_LAST_OFDM = common dso_local global i32 0, align 4
@TXP_FIRST_SISO_MCS_20 = common dso_local global i32 0, align 4
@TXP_LAST_SISO_MCS_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*)* @wlc_phy_txpwr_srom_read_lcnphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_phy_txpwr_srom_read_lcnphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy_lcnphy*, align 8
  %6 = alloca %struct.ssb_sprom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i8* null, i8** %3, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  store %struct.brcms_phy_lcnphy* %15, %struct.brcms_phy_lcnphy** %5, align 8
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 6
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store %struct.ssb_sprom* %21, %struct.ssb_sprom** %6, align 8
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @CHSPEC_IS2G(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %350

27:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %28 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %29 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %28, i32 0, i32 21
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %34 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %33, i32 0, i32 20
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %36 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %35, i32 0, i32 20
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %39 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %38, i32 0, i32 19
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %41 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %40, i32 0, i32 19
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %48 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %47, i32 0, i32 18
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %55 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %54, i32 0, i32 17
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %62 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %61, i32 0, i32 16
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %65 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %67 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %70 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %72 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %71, i32 0, i32 14
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %75 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 4
  %76 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %77 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %76, i32 0, i32 14
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %80 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %79, i32 0, i32 18
  store i32 %78, i32* %80, align 4
  %81 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %82 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %85 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %84, i32 0, i32 17
  store i32 %83, i32* %85, align 4
  %86 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %87 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %90 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %89, i32 0, i32 16
  store i32 %88, i32* %90, align 4
  %91 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %92 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %95 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %94, i32 0, i32 15
  store i32 %93, i32* %95, align 4
  %96 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %97 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %100 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %99, i32 0, i32 13
  store i32 %98, i32* %100, align 4
  %101 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %102 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %105 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %104, i32 0, i32 11
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %107 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %106, i32 0, i32 13
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %3, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %114 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %146, %27
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @PWRTBL_NUM_COEFF, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %149

119:                                              ; preds = %115
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %121 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %141 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %119
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %115

149:                                              ; preds = %115
  %150 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %151 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %7, align 4
  %153 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %154 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %210

158:                                              ; preds = %149
  %159 = load i8*, i8** %3, align 8
  store i8* %159, i8** %10, align 8
  %160 = load i32, i32* @TXP_FIRST_CCK, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %181, %158
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @TXP_LAST_CCK, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %161
  %166 = load i8*, i8** %10, align 8
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, 15
  %169 = mul nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = sub i64 0, %170
  %172 = getelementptr i8, i8* %166, i64 %171
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %174 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %173, i32 0, i32 0
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  store i8* %172, i8** %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = ashr i32 %179, 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %165
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %161

184:                                              ; preds = %161
  %185 = load i32, i32* @TXP_FIRST_OFDM, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %206, %184
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @TXP_LAST_OFDM, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %186
  %191 = load i8*, i8** %10, align 8
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, 15
  %194 = mul nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = sub i64 0, %195
  %197 = getelementptr i8, i8* %191, i64 %196
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %199 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %198, i32 0, i32 0
  %200 = load i8**, i8*** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  store i8* %197, i8** %203, align 8
  %204 = load i32, i32* %8, align 4
  %205 = ashr i32 %204, 4
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %190
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %186

209:                                              ; preds = %186
  br label %297

210:                                              ; preds = %149
  store i32 0, i32* %11, align 4
  %211 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %212 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %211, i32 0, i32 12
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* @TXP_FIRST_CCK, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %227, %210
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @TXP_LAST_CCK, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %215
  %220 = load i8*, i8** %3, align 8
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %221, i32 0, i32 0
  %223 = load i8**, i8*** %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  store i8* %220, i8** %226, align 8
  br label %227

227:                                              ; preds = %219
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %4, align 4
  br label %215

230:                                              ; preds = %215
  %231 = load i32, i32* @TXP_FIRST_OFDM, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %252, %230
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @TXP_LAST_OFDM, align 4
  %235 = icmp sle i32 %233, %234
  br i1 %235, label %236, label %255

236:                                              ; preds = %232
  %237 = load i8*, i8** %3, align 8
  %238 = load i32, i32* %8, align 4
  %239 = and i32 %238, 15
  %240 = mul nsw i32 %239, 2
  %241 = sext i32 %240 to i64
  %242 = sub i64 0, %241
  %243 = getelementptr i8, i8* %237, i64 %242
  %244 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %245 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %244, i32 0, i32 0
  %246 = load i8**, i8*** %245, align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  store i8* %243, i8** %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = ashr i32 %250, 4
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %236
  %253 = load i32, i32* %4, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %4, align 4
  br label %232

255:                                              ; preds = %232
  %256 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %257 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 16
  store i32 %261, i32* %9, align 4
  %262 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %263 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %9, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %271 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* @TXP_FIRST_SISO_MCS_20, align 4
  store i32 %272, i32* %4, align 4
  br label %273

273:                                              ; preds = %293, %255
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* @TXP_LAST_SISO_MCS_20, align 4
  %276 = icmp sle i32 %274, %275
  br i1 %276, label %277, label %296

277:                                              ; preds = %273
  %278 = load i8*, i8** %3, align 8
  %279 = load i32, i32* %9, align 4
  %280 = and i32 %279, 15
  %281 = mul nsw i32 %280, 2
  %282 = sext i32 %281 to i64
  %283 = sub i64 0, %282
  %284 = getelementptr i8, i8* %278, i64 %283
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %285, i32 0, i32 0
  %287 = load i8**, i8*** %286, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %287, i64 %289
  store i8* %284, i8** %290, align 8
  %291 = load i32, i32* %9, align 4
  %292 = ashr i32 %291, 4
  store i32 %292, i32* %9, align 4
  br label %293

293:                                              ; preds = %277
  %294 = load i32, i32* %4, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %4, align 4
  br label %273

296:                                              ; preds = %273
  br label %297

297:                                              ; preds = %296, %209
  %298 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %299 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %298, i32 0, i32 11
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %302 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %301, i32 0, i32 9
  store i32 %300, i32* %302, align 4
  %303 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %304 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %303, i32 0, i32 10
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %307 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %306, i32 0, i32 8
  store i32 %305, i32* %307, align 4
  %308 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %309 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %308, i32 0, i32 9
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %312 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %311, i32 0, i32 7
  store i32 %310, i32* %312, align 4
  %313 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %314 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %317 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %316, i32 0, i32 6
  store i32 %315, i32* %317, align 4
  %318 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %319 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %322 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 4
  %323 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %324 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %327 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 4
  %328 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %329 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %332 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 4
  %333 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %334 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %337 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %336, i32 0, i32 2
  store i32 %335, i32* %337, align 4
  %338 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %339 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = icmp sgt i32 %340, 1
  br i1 %341, label %342, label %349

342:                                              ; preds = %297
  %343 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %344 = bitcast %struct.brcms_phy* %343 to %struct.brcms_phy_pub*
  %345 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %346 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @wlc_phy_ant_rxdiv_set(%struct.brcms_phy_pub* %344, i32 %347)
  br label %349

349:                                              ; preds = %342, %297
  br label %350

350:                                              ; preds = %349, %1
  %351 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %5, align 8
  %352 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %351, i32 0, i32 1
  store i32 -1, i32* %352, align 4
  ret i32 1
}

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_ant_rxdiv_set(%struct.brcms_phy_pub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
