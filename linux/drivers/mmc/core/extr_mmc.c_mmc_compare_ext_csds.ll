; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_compare_ext_csds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_compare_ext_csds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@EXT_CSD_PARTITION_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_ERASED_MEM_CONT = common dso_local global i64 0, align 8
@EXT_CSD_REV = common dso_local global i64 0, align 8
@EXT_CSD_STRUCTURE = common dso_local global i64 0, align 8
@EXT_CSD_CARD_TYPE = common dso_local global i64 0, align 8
@EXT_CSD_S_A_TIMEOUT = common dso_local global i64 0, align 8
@EXT_CSD_HC_WP_GRP_SIZE = common dso_local global i64 0, align 8
@EXT_CSD_ERASE_TIMEOUT_MULT = common dso_local global i64 0, align 8
@EXT_CSD_HC_ERASE_GRP_SIZE = common dso_local global i64 0, align 8
@EXT_CSD_SEC_TRIM_MULT = common dso_local global i64 0, align 8
@EXT_CSD_SEC_ERASE_MULT = common dso_local global i64 0, align 8
@EXT_CSD_SEC_FEATURE_SUPPORT = common dso_local global i64 0, align 8
@EXT_CSD_TRIM_MULT = common dso_local global i64 0, align 8
@EXT_CSD_SEC_CNT = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_52_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_26_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_52_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_26_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_200_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_200_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_DDR_52_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_DDR_52_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_DDR_200_360 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @mmc_compare_ext_csds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_compare_ext_csds(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %308

12:                                               ; preds = %2
  %13 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %14 = call i32 @mmc_get_ext_csd(%struct.mmc_card* %13, i64** %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %308

19:                                               ; preds = %12
  %20 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* @EXT_CSD_PARTITION_SUPPORT, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %295

29:                                               ; preds = %19
  %30 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* @EXT_CSD_ERASED_MEM_CONT, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %295

39:                                               ; preds = %29
  %40 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* @EXT_CSD_REV, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %295

49:                                               ; preds = %39
  %50 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* @EXT_CSD_STRUCTURE, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %295

59:                                               ; preds = %49
  %60 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* @EXT_CSD_CARD_TYPE, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %63, %67
  br i1 %68, label %69, label %295

69:                                               ; preds = %59
  %70 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = load i64, i64* @EXT_CSD_S_A_TIMEOUT, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %73, %77
  br i1 %78, label %79, label %295

79:                                               ; preds = %69
  %80 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* @EXT_CSD_HC_WP_GRP_SIZE, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %83, %87
  br i1 %88, label %89, label %295

89:                                               ; preds = %79
  %90 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i64, i64* @EXT_CSD_ERASE_TIMEOUT_MULT, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %295

99:                                               ; preds = %89
  %100 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %101 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* @EXT_CSD_HC_ERASE_GRP_SIZE, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %295

109:                                              ; preds = %99
  %110 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %6, align 8
  %115 = load i64, i64* @EXT_CSD_SEC_TRIM_MULT, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %295

119:                                              ; preds = %109
  %120 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %121 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 10
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %6, align 8
  %125 = load i64, i64* @EXT_CSD_SEC_ERASE_MULT, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %123, %127
  br i1 %128, label %129, label %295

129:                                              ; preds = %119
  %130 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %131 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 11
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %6, align 8
  %135 = load i64, i64* @EXT_CSD_SEC_FEATURE_SUPPORT, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %133, %137
  br i1 %138, label %139, label %295

139:                                              ; preds = %129
  %140 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %141 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 12
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %6, align 8
  %145 = load i64, i64* @EXT_CSD_TRIM_MULT, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %143, %147
  br i1 %148, label %149, label %295

149:                                              ; preds = %139
  %150 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %151 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 13
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %6, align 8
  %157 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %158 = add nsw i32 %157, 0
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %156, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %155, %161
  br i1 %162, label %163, label %295

163:                                              ; preds = %149
  %164 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %165 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 13
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %6, align 8
  %171 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %169, %175
  br i1 %176, label %177, label %295

177:                                              ; preds = %163
  %178 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %179 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 13
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %6, align 8
  %185 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %186 = add nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %184, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %183, %189
  br i1 %190, label %191, label %295

191:                                              ; preds = %177
  %192 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %193 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 13
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 3
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** %6, align 8
  %199 = load i32, i32* @EXT_CSD_SEC_CNT, align 4
  %200 = add nsw i32 %199, 3
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %197, %203
  br i1 %204, label %205, label %295

205:                                              ; preds = %191
  %206 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %207 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 14
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %6, align 8
  %211 = load i64, i64* @EXT_CSD_PWR_CL_52_195, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %209, %213
  br i1 %214, label %215, label %295

215:                                              ; preds = %205
  %216 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %217 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 15
  %219 = load i64, i64* %218, align 8
  %220 = load i64*, i64** %6, align 8
  %221 = load i64, i64* @EXT_CSD_PWR_CL_26_195, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %219, %223
  br i1 %224, label %225, label %295

225:                                              ; preds = %215
  %226 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %227 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 16
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %6, align 8
  %231 = load i64, i64* @EXT_CSD_PWR_CL_52_360, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %229, %233
  br i1 %234, label %235, label %295

235:                                              ; preds = %225
  %236 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %237 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 17
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** %6, align 8
  %241 = load i64, i64* @EXT_CSD_PWR_CL_26_360, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %239, %243
  br i1 %244, label %245, label %295

245:                                              ; preds = %235
  %246 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %247 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 18
  %249 = load i64, i64* %248, align 8
  %250 = load i64*, i64** %6, align 8
  %251 = load i64, i64* @EXT_CSD_PWR_CL_200_195, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %249, %253
  br i1 %254, label %255, label %295

255:                                              ; preds = %245
  %256 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %257 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 19
  %259 = load i64, i64* %258, align 8
  %260 = load i64*, i64** %6, align 8
  %261 = load i64, i64* @EXT_CSD_PWR_CL_200_360, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %259, %263
  br i1 %264, label %265, label %295

265:                                              ; preds = %255
  %266 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %267 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 20
  %269 = load i64, i64* %268, align 8
  %270 = load i64*, i64** %6, align 8
  %271 = load i64, i64* @EXT_CSD_PWR_CL_DDR_52_195, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %269, %273
  br i1 %274, label %275, label %295

275:                                              ; preds = %265
  %276 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %277 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 21
  %279 = load i64, i64* %278, align 8
  %280 = load i64*, i64** %6, align 8
  %281 = load i64, i64* @EXT_CSD_PWR_CL_DDR_52_360, align 8
  %282 = getelementptr inbounds i64, i64* %280, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %279, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %275
  %286 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %287 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 22
  %289 = load i64, i64* %288, align 8
  %290 = load i64*, i64** %6, align 8
  %291 = load i64, i64* @EXT_CSD_PWR_CL_DDR_200_360, align 8
  %292 = getelementptr inbounds i64, i64* %290, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %289, %293
  br label %295

295:                                              ; preds = %285, %275, %265, %255, %245, %235, %225, %215, %205, %191, %177, %163, %149, %139, %129, %119, %109, %99, %89, %79, %69, %59, %49, %39, %29, %19
  %296 = phi i1 [ false, %275 ], [ false, %265 ], [ false, %255 ], [ false, %245 ], [ false, %235 ], [ false, %225 ], [ false, %215 ], [ false, %205 ], [ false, %191 ], [ false, %177 ], [ false, %163 ], [ false, %149 ], [ false, %139 ], [ false, %129 ], [ false, %119 ], [ false, %109 ], [ false, %99 ], [ false, %89 ], [ false, %79 ], [ false, %69 ], [ false, %59 ], [ false, %49 ], [ false, %39 ], [ false, %29 ], [ false, %19 ], [ %294, %285 ]
  %297 = xor i1 %296, true
  %298 = zext i1 %297 to i32
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = load i32, i32* @EINVAL, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %7, align 4
  br label %304

304:                                              ; preds = %301, %295
  %305 = load i64*, i64** %6, align 8
  %306 = call i32 @kfree(i64* %305)
  %307 = load i32, i32* %7, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %304, %17, %11
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @mmc_get_ext_csd(%struct.mmc_card*, i64**) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
