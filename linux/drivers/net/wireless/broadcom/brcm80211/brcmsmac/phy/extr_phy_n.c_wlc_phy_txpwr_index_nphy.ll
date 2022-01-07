; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_index_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_index_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@PHY_CORE_0 = common dso_local global i32 0, align 4
@PHY_TPC_HW_OFF = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE1TXPWRCTL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE2TXPWRCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [2 x i32], align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %28 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %33 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %32, i32 1)
  br label %34

34:                                               ; preds = %31, %4
  store i32 192, i32* %11, align 4
  store i32 320, i32* %12, align 4
  store i32 448, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %567, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %570

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %567

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PHY_CORE_0, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 26, i32 27
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %230

57:                                               ; preds = %49
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %567

68:                                               ; preds = %57
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @NREV_GE(i32 %72, i32 3)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %68
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mod_phy_reg(%struct.brcms_phy* %76, i32 143, i32 256, i32 %84)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mod_phy_reg(%struct.brcms_phy* %86, i32 165, i32 256, i32 %94)
  br label %107

96:                                               ; preds = %68
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %99 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mod_phy_reg(%struct.brcms_phy* %97, i32 165, i32 16384, i32 %105)
  br label %107

107:                                              ; preds = %96, %75
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @PHY_CORE_0, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 170, i32 171
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @write_phy_reg(%struct.brcms_phy* %108, i32 %113, i32 %121)
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 272, %124
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %127 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %123, i32 7, i32 1, i32 %125, i32 16, i32* %132)
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %135 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %134, i32 15, i32 1, i32 87, i32 16, i32* %14)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @PHY_CORE_0, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 255, i32 65280
  %141 = load i32, i32* %14, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @PHY_CORE_0, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %107
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %148 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %147, i32 0, i32 2
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %154, 8
  br label %166

156:                                              ; preds = %107
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %158 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %157, i32 0, i32 2
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 0
  br label %166

166:                                              ; preds = %156, %146
  %167 = phi i32 [ %155, %146 ], [ %165, %156 ]
  %168 = load i32, i32* %14, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %14, align 4
  %170 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %171 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %170, i32 15, i32 1, i32 87, i32 16, i32* %14)
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %209

174:                                              ; preds = %166
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = mul nsw i32 2, %176
  %178 = add nsw i32 80, %177
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %180 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %175, i32 15, i32 2, i32 %178, i32 16, i32* %185)
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 85, %188
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %191 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %190, i32 0, i32 2
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 6
  %197 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %187, i32 15, i32 1, i32 %189, i32 16, i32* %196)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 93, %199
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %202 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %201, i32 0, i32 2
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 6
  %208 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %198, i32 15, i32 1, i32 %200, i32 16, i32* %207)
  br label %209

209:                                              ; preds = %174, %166
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %212 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %210, i32 %213)
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %216 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %215, i32 0, i32 2
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %224 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %223, i32 0, i32 2
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 7
  store i32 %222, i32* %229, align 4
  br label %558

230:                                              ; preds = %49
  %231 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %232 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %231, i32 0, i32 2
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %363

240:                                              ; preds = %230
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %242 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @NREV_GE(i32 %244, i32 3)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %268

247:                                              ; preds = %240
  %248 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %250 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %249, i32 0, i32 2
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @mod_phy_reg(%struct.brcms_phy* %248, i32 143, i32 256, i32 %256)
  %258 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %260 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %259, i32 0, i32 2
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @mod_phy_reg(%struct.brcms_phy* %258, i32 165, i32 256, i32 %266)
  br label %279

268:                                              ; preds = %240
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %270 = call i8* @read_phy_reg(%struct.brcms_phy* %269, i32 165)
  %271 = ptrtoint i8* %270 to i32
  %272 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %273 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %272, i32 0, i32 2
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 1
  store i32 %271, i32* %278, align 4
  br label %279

279:                                              ; preds = %268, %247
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @PHY_CORE_0, align 4
  %283 = icmp eq i32 %281, %282
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 170, i32 171
  %286 = call i8* @read_phy_reg(%struct.brcms_phy* %280, i32 %285)
  %287 = ptrtoint i8* %286 to i32
  %288 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %289 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %288, i32 0, i32 2
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 2
  store i32 %287, i32* %294, align 4
  %295 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 272, %296
  %298 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %299 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %298, i32 0, i32 2
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 3
  %305 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %295, i32 7, i32 1, i32 %297, i32 16, i32* %304)
  %306 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %307 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %306, i32 15, i32 1, i32 87, i32 16, i32* %23)
  %308 = load i32, i32* %9, align 4
  %309 = load i32, i32* @PHY_CORE_0, align 4
  %310 = icmp eq i32 %308, %309
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i32 8, i32 0
  %313 = load i32, i32* %23, align 4
  %314 = ashr i32 %313, %312
  store i32 %314, i32* %23, align 4
  %315 = load i32, i32* %23, align 4
  %316 = and i32 %315, 255
  store i32 %316, i32* %23, align 4
  %317 = load i32, i32* %23, align 4
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %319 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %318, i32 0, i32 2
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 4
  store i32 %317, i32* %324, align 4
  %325 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %326 = load i32, i32* %9, align 4
  %327 = mul nsw i32 2, %326
  %328 = add nsw i32 80, %327
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %330 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %329, i32 0, i32 2
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %330, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 5
  %336 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %325, i32 15, i32 2, i32 %328, i32 16, i32* %335)
  %337 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %338 = load i32, i32* %9, align 4
  %339 = add nsw i32 85, %338
  %340 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %341 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %340, i32 0, i32 2
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %341, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 6
  %347 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %337, i32 15, i32 1, i32 %339, i32 16, i32* %346)
  %348 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %349 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %348, i32 0, i32 2
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 7
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %357 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %356, i32 0, i32 2
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 8
  store i32 %355, i32* %362, align 4
  br label %363

363:                                              ; preds = %279, %230
  %364 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %365 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  store i32 %366, i32* %24, align 4
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %368 = load i32, i32* @PHY_TPC_HW_OFF, align 4
  %369 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %367, i32 %368)
  %370 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %371 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i64 @NREV_IS(i32 %373, i32 1)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %363
  %377 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %378 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %377, i32 0, i32 3
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @ON, align 4
  %383 = call i32 @wlapi_bmac_phyclk_fgc(i32 %381, i32 %382)
  br label %384

384:                                              ; preds = %376, %363
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %386 = load i32, i32* %10, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %7, align 4
  %389 = add nsw i32 %387, %388
  %390 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %385, i32 %386, i32 1, i32 %389, i32 32, i32* %15)
  %391 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %392 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %391, i32 0, i32 4
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i64 @NREV_GE(i32 %394, i32 3)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %384
  %398 = load i32, i32* %15, align 4
  %399 = ashr i32 %398, 16
  %400 = and i32 %399, 131071
  store i32 %400, i32* %16, align 4
  br label %405

401:                                              ; preds = %384
  %402 = load i32, i32* %15, align 4
  %403 = ashr i32 %402, 16
  %404 = and i32 %403, 8191
  store i32 %404, i32* %16, align 4
  br label %405

405:                                              ; preds = %401, %397
  %406 = load i32, i32* %15, align 4
  %407 = ashr i32 %406, 8
  %408 = and i32 %407, 63
  store i32 %408, i32* %17, align 4
  %409 = load i32, i32* %15, align 4
  %410 = ashr i32 %409, 0
  %411 = and i32 %410, 255
  store i32 %411, i32* %18, align 4
  %412 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %413 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = call i64 @NREV_GE(i32 %415, i32 3)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %405
  %419 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* @PHY_CORE_0, align 4
  %422 = icmp eq i32 %420, %421
  %423 = zext i1 %422 to i64
  %424 = select i1 %422, i32 143, i32 165
  %425 = call i32 @mod_phy_reg(%struct.brcms_phy* %419, i32 %424, i32 256, i32 256)
  br label %429

426:                                              ; preds = %405
  %427 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %428 = call i32 @mod_phy_reg(%struct.brcms_phy* %427, i32 165, i32 16384, i32 16384)
  br label %429

429:                                              ; preds = %426, %418
  %430 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %431 = load i32, i32* %9, align 4
  %432 = load i32, i32* @PHY_CORE_0, align 4
  %433 = icmp eq i32 %431, %432
  %434 = zext i1 %433 to i64
  %435 = select i1 %433, i32 170, i32 171
  %436 = load i32, i32* %17, align 4
  %437 = call i32 @write_phy_reg(%struct.brcms_phy* %430, i32 %435, i32 %436)
  %438 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %439 = load i32, i32* %9, align 4
  %440 = add nsw i32 272, %439
  %441 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %438, i32 7, i32 1, i32 %440, i32 16, i32* %16)
  %442 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %443 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %442, i32 15, i32 1, i32 87, i32 16, i32* %14)
  %444 = load i32, i32* %9, align 4
  %445 = load i32, i32* @PHY_CORE_0, align 4
  %446 = icmp eq i32 %444, %445
  %447 = zext i1 %446 to i64
  %448 = select i1 %446, i32 255, i32 65280
  %449 = load i32, i32* %14, align 4
  %450 = and i32 %449, %448
  store i32 %450, i32* %14, align 4
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* @PHY_CORE_0, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %429
  %455 = load i32, i32* %18, align 4
  %456 = shl i32 %455, 8
  br label %460

457:                                              ; preds = %429
  %458 = load i32, i32* %18, align 4
  %459 = shl i32 %458, 0
  br label %460

460:                                              ; preds = %457, %454
  %461 = phi i32 [ %456, %454 ], [ %459, %457 ]
  %462 = load i32, i32* %14, align 4
  %463 = or i32 %462, %461
  store i32 %463, i32* %14, align 4
  %464 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %465 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %464, i32 15, i32 1, i32 87, i32 16, i32* %14)
  %466 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %467 = load i32, i32* %10, align 4
  %468 = load i32, i32* %12, align 4
  %469 = load i32, i32* %7, align 4
  %470 = add nsw i32 %468, %469
  %471 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %466, i32 %467, i32 1, i32 %470, i32 32, i32* %19)
  %472 = load i32, i32* %19, align 4
  %473 = ashr i32 %472, 10
  %474 = and i32 %473, 1023
  store i32 %474, i32* %20, align 4
  %475 = load i32, i32* %19, align 4
  %476 = ashr i32 %475, 0
  %477 = and i32 %476, 1023
  store i32 %477, i32* %21, align 4
  %478 = load i32, i32* %8, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %491

480:                                              ; preds = %460
  %481 = load i32, i32* %20, align 4
  %482 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %481, i32* %482, align 4
  %483 = load i32, i32* %21, align 4
  %484 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %483, i32* %484, align 4
  %485 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %486 = load i32, i32* %9, align 4
  %487 = mul nsw i32 2, %486
  %488 = add nsw i32 80, %487
  %489 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %490 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %485, i32 15, i32 2, i32 %488, i32 16, i32* %489)
  br label %491

491:                                              ; preds = %480, %460
  %492 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %493 = load i32, i32* %10, align 4
  %494 = load i32, i32* %13, align 4
  %495 = load i32, i32* %7, align 4
  %496 = add nsw i32 %494, %495
  %497 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %492, i32 %493, i32 1, i32 %496, i32 32, i32* %22)
  %498 = load i32, i32* %8, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %491
  %501 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %502 = load i32, i32* %9, align 4
  %503 = add nsw i32 85, %502
  %504 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %501, i32 15, i32 1, i32 %503, i32 16, i32* %22)
  br label %505

505:                                              ; preds = %500, %491
  %506 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %507 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %506, i32 0, i32 4
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = call i64 @NREV_IS(i32 %509, i32 1)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %520

512:                                              ; preds = %505
  %513 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %514 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %513, i32 0, i32 3
  %515 = load %struct.TYPE_4__*, %struct.TYPE_4__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @OFF, align 4
  %519 = call i32 @wlapi_bmac_phyclk_fgc(i32 %517, i32 %518)
  br label %520

520:                                              ; preds = %512, %505
  %521 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %522 = call i64 @PHY_IPA(%struct.brcms_phy* %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %554

524:                                              ; preds = %520
  %525 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %526 = load i32, i32* %9, align 4
  %527 = load i32, i32* @PHY_CORE_0, align 4
  %528 = icmp eq i32 %526, %527
  br i1 %528, label %529, label %531

529:                                              ; preds = %524
  %530 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  br label %533

531:                                              ; preds = %524
  %532 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  br label %533

533:                                              ; preds = %531, %529
  %534 = phi i32 [ %530, %529 ], [ %532, %531 ]
  %535 = load i32, i32* %7, align 4
  %536 = add nsw i32 576, %535
  %537 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %525, i32 %534, i32 1, i32 %536, i32 32, i32* %25)
  %538 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %539 = load i32, i32* %9, align 4
  %540 = load i32, i32* @PHY_CORE_0, align 4
  %541 = icmp eq i32 %539, %540
  %542 = zext i1 %541 to i64
  %543 = select i1 %541, i32 663, i32 667
  %544 = load i32, i32* %25, align 4
  %545 = shl i32 %544, 4
  %546 = call i32 @mod_phy_reg(%struct.brcms_phy* %538, i32 %543, i32 8176, i32 %545)
  %547 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %548 = load i32, i32* %9, align 4
  %549 = load i32, i32* @PHY_CORE_0, align 4
  %550 = icmp eq i32 %548, %549
  %551 = zext i1 %550 to i64
  %552 = select i1 %550, i32 663, i32 667
  %553 = call i32 @mod_phy_reg(%struct.brcms_phy* %547, i32 %552, i32 4, i32 4)
  br label %554

554:                                              ; preds = %533, %520
  %555 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %556 = load i32, i32* %24, align 4
  %557 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %555, i32 %556)
  br label %558

558:                                              ; preds = %554, %209
  %559 = load i32, i32* %7, align 4
  %560 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %561 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %560, i32 0, i32 2
  %562 = load %struct.TYPE_6__*, %struct.TYPE_6__** %561, align 8
  %563 = load i32, i32* %9, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %562, i64 %564
  %566 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i32 0, i32 0
  store i32 %559, i32* %566, align 4
  br label %567

567:                                              ; preds = %558, %67, %48
  %568 = load i32, i32* %9, align 4
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %9, align 4
  br label %35

570:                                              ; preds = %35
  %571 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %572 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %571, i32 0, i32 1
  %573 = load i64, i64* %572, align 8
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %578

575:                                              ; preds = %570
  %576 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %577 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %576, i32 0)
  br label %578

578:                                              ; preds = %575, %570
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i8* @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlapi_bmac_phyclk_fgc(i32, i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
