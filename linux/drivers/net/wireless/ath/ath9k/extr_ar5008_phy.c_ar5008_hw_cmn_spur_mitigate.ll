; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_cmn_spur_mitigate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_cmn_spur_mitigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@ar5008_hw_cmn_spur_mitigate.pilot_mask_reg = internal constant [4 x i32] [i32 130, i32 129, i32 133, i32 132], align 16
@ar5008_hw_cmn_spur_mitigate.chan_mask_reg = internal constant [4 x i32] [i32 128, i32 131, i32 135, i32 134], align 16
@ar5008_hw_cmn_spur_mitigate.inc = internal constant [4 x i32] [i32 0, i32 100, i32 0, i32 0], align 16
@AR_PHY_BIN_MASK_1 = common dso_local global i32 0, align 4
@AR_PHY_VIT_MASK2_M_46_61 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_2 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_31_45 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK_3 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_16_30 = common dso_local global i32 0, align 4
@AR_PHY_MASK_CTL = common dso_local global i32 0, align 4
@AR_PHY_MASK2_M_00_15 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_1 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_15_01 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_2 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_30_16 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_3 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_45_31 = common dso_local global i32 0, align 4
@AR_PHY_BIN_MASK2_4 = common dso_local global i32 0, align 4
@AR_PHY_MASK2_P_61_45 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5008_hw_cmn_spur_mitigate(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [123 x i32], align 16
  %13 = alloca [123 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = bitcast [123 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 492, i1 false)
  %21 = bitcast [123 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 492, i1 false)
  store i32 -6000, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 100
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 100
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %77, %3
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %80

29:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %18, align 4
  %32 = icmp slt i32 %31, 30
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %18, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = shl i32 1, %47
  %49 = or i32 %46, %48
  store i32 %49, i32* %17, align 4
  br label %50

50:                                               ; preds = %41, %37, %33
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 100
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %18, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5008_hw_cmn_spur_mitigate.inc, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5008_hw_cmn_spur_mitigate.pilot_mask_reg, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @REG_WRITE(%struct.ath_hw* %63, i32 %67, i32 %68)
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* @ar5008_hw_cmn_spur_mitigate.chan_mask_reg, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @REG_WRITE(%struct.ath_hw* %70, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %26

80:                                               ; preds = %26
  store i32 6100, i32* %10, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 120
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 120
  store i32 %84, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %127, %80
  %86 = load i32, i32* %11, align 4
  %87 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 0
  %88 = call i32 @ARRAY_SIZE(i32* %87)
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i64 @abs(i32 %101)
  %103 = trunc i64 %102 to i32
  store volatile i32 %103, i32* %19, align 4
  %104 = load volatile i32, i32* %19, align 4
  %105 = icmp slt i32 %104, 75
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 1, i32* %14, align 4
  br label %108

107:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sdiv i32 %113, 100
  %115 = call i64 @abs(i32 %114)
  %116 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 %115
  store i32 %112, i32* %116, align 4
  br label %123

117:                                              ; preds = %108
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %10, align 4
  %120 = sdiv i32 %119, 100
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 %121
  store i32 %118, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %111
  br label %124

124:                                              ; preds = %123, %94, %90
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %125, 100
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %85

130:                                              ; preds = %85
  %131 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 46
  %132 = load i32, i32* %131, align 8
  %133 = shl i32 %132, 30
  %134 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 47
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 28
  %137 = or i32 %133, %136
  %138 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 48
  %139 = load i32, i32* %138, align 16
  %140 = shl i32 %139, 26
  %141 = or i32 %137, %140
  %142 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 49
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 24
  %145 = or i32 %141, %144
  %146 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 50
  %147 = load i32, i32* %146, align 8
  %148 = shl i32 %147, 22
  %149 = or i32 %145, %148
  %150 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 51
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 20
  %153 = or i32 %149, %152
  %154 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 52
  %155 = load i32, i32* %154, align 16
  %156 = shl i32 %155, 18
  %157 = or i32 %153, %156
  %158 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 53
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 16
  %161 = or i32 %157, %160
  %162 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 54
  %163 = load i32, i32* %162, align 8
  %164 = shl i32 %163, 14
  %165 = or i32 %161, %164
  %166 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 55
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 12
  %169 = or i32 %165, %168
  %170 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 56
  %171 = load i32, i32* %170, align 16
  %172 = shl i32 %171, 10
  %173 = or i32 %169, %172
  %174 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 57
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 8
  %177 = or i32 %173, %176
  %178 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 58
  %179 = load i32, i32* %178, align 8
  %180 = shl i32 %179, 6
  %181 = or i32 %177, %180
  %182 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 59
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 4
  %185 = or i32 %181, %184
  %186 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 60
  %187 = load i32, i32* %186, align 16
  %188 = shl i32 %187, 2
  %189 = or i32 %185, %188
  %190 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 61
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 0
  %193 = or i32 %189, %192
  store i32 %193, i32* %15, align 4
  %194 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %195 = load i32, i32* @AR_PHY_BIN_MASK_1, align 4
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @REG_WRITE(%struct.ath_hw* %194, i32 %195, i32 %196)
  %198 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %199 = load i32, i32* @AR_PHY_VIT_MASK2_M_46_61, align 4
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @REG_WRITE(%struct.ath_hw* %198, i32 %199, i32 %200)
  %202 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 31
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 28
  %205 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 32
  %206 = load i32, i32* %205, align 16
  %207 = shl i32 %206, 26
  %208 = or i32 %204, %207
  %209 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 33
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %210, 24
  %212 = or i32 %208, %211
  %213 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 34
  %214 = load i32, i32* %213, align 8
  %215 = shl i32 %214, 22
  %216 = or i32 %212, %215
  %217 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 35
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 20
  %220 = or i32 %216, %219
  %221 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 36
  %222 = load i32, i32* %221, align 16
  %223 = shl i32 %222, 18
  %224 = or i32 %220, %223
  %225 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 37
  %226 = load i32, i32* %225, align 4
  %227 = shl i32 %226, 16
  %228 = or i32 %224, %227
  %229 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 48
  %230 = load i32, i32* %229, align 16
  %231 = shl i32 %230, 14
  %232 = or i32 %228, %231
  %233 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 39
  %234 = load i32, i32* %233, align 4
  %235 = shl i32 %234, 12
  %236 = or i32 %232, %235
  %237 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 40
  %238 = load i32, i32* %237, align 16
  %239 = shl i32 %238, 10
  %240 = or i32 %236, %239
  %241 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 41
  %242 = load i32, i32* %241, align 4
  %243 = shl i32 %242, 8
  %244 = or i32 %240, %243
  %245 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 42
  %246 = load i32, i32* %245, align 8
  %247 = shl i32 %246, 6
  %248 = or i32 %244, %247
  %249 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 43
  %250 = load i32, i32* %249, align 4
  %251 = shl i32 %250, 4
  %252 = or i32 %248, %251
  %253 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 44
  %254 = load i32, i32* %253, align 16
  %255 = shl i32 %254, 2
  %256 = or i32 %252, %255
  %257 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 45
  %258 = load i32, i32* %257, align 4
  %259 = shl i32 %258, 0
  %260 = or i32 %256, %259
  store i32 %260, i32* %15, align 4
  %261 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %262 = load i32, i32* @AR_PHY_BIN_MASK_2, align 4
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @REG_WRITE(%struct.ath_hw* %261, i32 %262, i32 %263)
  %265 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %266 = load i32, i32* @AR_PHY_MASK2_M_31_45, align 4
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @REG_WRITE(%struct.ath_hw* %265, i32 %266, i32 %267)
  %269 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 16
  %270 = load i32, i32* %269, align 16
  %271 = shl i32 %270, 30
  %272 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 16
  %273 = load i32, i32* %272, align 16
  %274 = shl i32 %273, 28
  %275 = or i32 %271, %274
  %276 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 18
  %277 = load i32, i32* %276, align 8
  %278 = shl i32 %277, 26
  %279 = or i32 %275, %278
  %280 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 18
  %281 = load i32, i32* %280, align 8
  %282 = shl i32 %281, 24
  %283 = or i32 %279, %282
  %284 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 20
  %285 = load i32, i32* %284, align 16
  %286 = shl i32 %285, 22
  %287 = or i32 %283, %286
  %288 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 20
  %289 = load i32, i32* %288, align 16
  %290 = shl i32 %289, 20
  %291 = or i32 %287, %290
  %292 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 22
  %293 = load i32, i32* %292, align 8
  %294 = shl i32 %293, 18
  %295 = or i32 %291, %294
  %296 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 22
  %297 = load i32, i32* %296, align 8
  %298 = shl i32 %297, 16
  %299 = or i32 %295, %298
  %300 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 24
  %301 = load i32, i32* %300, align 16
  %302 = shl i32 %301, 14
  %303 = or i32 %299, %302
  %304 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 24
  %305 = load i32, i32* %304, align 16
  %306 = shl i32 %305, 12
  %307 = or i32 %303, %306
  %308 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 25
  %309 = load i32, i32* %308, align 4
  %310 = shl i32 %309, 10
  %311 = or i32 %307, %310
  %312 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 26
  %313 = load i32, i32* %312, align 8
  %314 = shl i32 %313, 8
  %315 = or i32 %311, %314
  %316 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 27
  %317 = load i32, i32* %316, align 4
  %318 = shl i32 %317, 6
  %319 = or i32 %315, %318
  %320 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 28
  %321 = load i32, i32* %320, align 16
  %322 = shl i32 %321, 4
  %323 = or i32 %319, %322
  %324 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 29
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %325, 2
  %327 = or i32 %323, %326
  %328 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 30
  %329 = load i32, i32* %328, align 8
  %330 = shl i32 %329, 0
  %331 = or i32 %327, %330
  store i32 %331, i32* %15, align 4
  %332 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %333 = load i32, i32* @AR_PHY_BIN_MASK_3, align 4
  %334 = load i32, i32* %15, align 4
  %335 = call i32 @REG_WRITE(%struct.ath_hw* %332, i32 %333, i32 %334)
  %336 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %337 = load i32, i32* @AR_PHY_MASK2_M_16_30, align 4
  %338 = load i32, i32* %15, align 4
  %339 = call i32 @REG_WRITE(%struct.ath_hw* %336, i32 %337, i32 %338)
  %340 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 0
  %341 = load i32, i32* %340, align 16
  %342 = shl i32 %341, 30
  %343 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 28
  %346 = or i32 %342, %345
  %347 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 2
  %348 = load i32, i32* %347, align 8
  %349 = shl i32 %348, 26
  %350 = or i32 %346, %349
  %351 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 3
  %352 = load i32, i32* %351, align 4
  %353 = shl i32 %352, 24
  %354 = or i32 %350, %353
  %355 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 4
  %356 = load i32, i32* %355, align 16
  %357 = shl i32 %356, 22
  %358 = or i32 %354, %357
  %359 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 5
  %360 = load i32, i32* %359, align 4
  %361 = shl i32 %360, 20
  %362 = or i32 %358, %361
  %363 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 6
  %364 = load i32, i32* %363, align 8
  %365 = shl i32 %364, 18
  %366 = or i32 %362, %365
  %367 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 7
  %368 = load i32, i32* %367, align 4
  %369 = shl i32 %368, 16
  %370 = or i32 %366, %369
  %371 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 8
  %372 = load i32, i32* %371, align 16
  %373 = shl i32 %372, 14
  %374 = or i32 %370, %373
  %375 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 9
  %376 = load i32, i32* %375, align 4
  %377 = shl i32 %376, 12
  %378 = or i32 %374, %377
  %379 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 10
  %380 = load i32, i32* %379, align 8
  %381 = shl i32 %380, 10
  %382 = or i32 %378, %381
  %383 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 11
  %384 = load i32, i32* %383, align 4
  %385 = shl i32 %384, 8
  %386 = or i32 %382, %385
  %387 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 12
  %388 = load i32, i32* %387, align 16
  %389 = shl i32 %388, 6
  %390 = or i32 %386, %389
  %391 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 13
  %392 = load i32, i32* %391, align 4
  %393 = shl i32 %392, 4
  %394 = or i32 %390, %393
  %395 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 14
  %396 = load i32, i32* %395, align 8
  %397 = shl i32 %396, 2
  %398 = or i32 %394, %397
  %399 = getelementptr inbounds [123 x i32], [123 x i32]* %12, i64 0, i64 15
  %400 = load i32, i32* %399, align 4
  %401 = shl i32 %400, 0
  %402 = or i32 %398, %401
  store i32 %402, i32* %15, align 4
  %403 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %404 = load i32, i32* @AR_PHY_MASK_CTL, align 4
  %405 = load i32, i32* %15, align 4
  %406 = call i32 @REG_WRITE(%struct.ath_hw* %403, i32 %404, i32 %405)
  %407 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %408 = load i32, i32* @AR_PHY_MASK2_M_00_15, align 4
  %409 = load i32, i32* %15, align 4
  %410 = call i32 @REG_WRITE(%struct.ath_hw* %407, i32 %408, i32 %409)
  %411 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 15
  %412 = load i32, i32* %411, align 4
  %413 = shl i32 %412, 28
  %414 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 14
  %415 = load i32, i32* %414, align 8
  %416 = shl i32 %415, 26
  %417 = or i32 %413, %416
  %418 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 13
  %419 = load i32, i32* %418, align 4
  %420 = shl i32 %419, 24
  %421 = or i32 %417, %420
  %422 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 12
  %423 = load i32, i32* %422, align 16
  %424 = shl i32 %423, 22
  %425 = or i32 %421, %424
  %426 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 11
  %427 = load i32, i32* %426, align 4
  %428 = shl i32 %427, 20
  %429 = or i32 %425, %428
  %430 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 10
  %431 = load i32, i32* %430, align 8
  %432 = shl i32 %431, 18
  %433 = or i32 %429, %432
  %434 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 9
  %435 = load i32, i32* %434, align 4
  %436 = shl i32 %435, 16
  %437 = or i32 %433, %436
  %438 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 8
  %439 = load i32, i32* %438, align 16
  %440 = shl i32 %439, 14
  %441 = or i32 %437, %440
  %442 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 7
  %443 = load i32, i32* %442, align 4
  %444 = shl i32 %443, 12
  %445 = or i32 %441, %444
  %446 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 6
  %447 = load i32, i32* %446, align 8
  %448 = shl i32 %447, 10
  %449 = or i32 %445, %448
  %450 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 5
  %451 = load i32, i32* %450, align 4
  %452 = shl i32 %451, 8
  %453 = or i32 %449, %452
  %454 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 4
  %455 = load i32, i32* %454, align 16
  %456 = shl i32 %455, 6
  %457 = or i32 %453, %456
  %458 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 3
  %459 = load i32, i32* %458, align 4
  %460 = shl i32 %459, 4
  %461 = or i32 %457, %460
  %462 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 2
  %463 = load i32, i32* %462, align 8
  %464 = shl i32 %463, 2
  %465 = or i32 %461, %464
  %466 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 1
  %467 = load i32, i32* %466, align 4
  %468 = shl i32 %467, 0
  %469 = or i32 %465, %468
  store i32 %469, i32* %15, align 4
  %470 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %471 = load i32, i32* @AR_PHY_BIN_MASK2_1, align 4
  %472 = load i32, i32* %15, align 4
  %473 = call i32 @REG_WRITE(%struct.ath_hw* %470, i32 %471, i32 %472)
  %474 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %475 = load i32, i32* @AR_PHY_MASK2_P_15_01, align 4
  %476 = load i32, i32* %15, align 4
  %477 = call i32 @REG_WRITE(%struct.ath_hw* %474, i32 %475, i32 %476)
  %478 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 30
  %479 = load i32, i32* %478, align 8
  %480 = shl i32 %479, 28
  %481 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 29
  %482 = load i32, i32* %481, align 4
  %483 = shl i32 %482, 26
  %484 = or i32 %480, %483
  %485 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 28
  %486 = load i32, i32* %485, align 16
  %487 = shl i32 %486, 24
  %488 = or i32 %484, %487
  %489 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 27
  %490 = load i32, i32* %489, align 4
  %491 = shl i32 %490, 22
  %492 = or i32 %488, %491
  %493 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 26
  %494 = load i32, i32* %493, align 8
  %495 = shl i32 %494, 20
  %496 = or i32 %492, %495
  %497 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 25
  %498 = load i32, i32* %497, align 4
  %499 = shl i32 %498, 18
  %500 = or i32 %496, %499
  %501 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 24
  %502 = load i32, i32* %501, align 16
  %503 = shl i32 %502, 16
  %504 = or i32 %500, %503
  %505 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 23
  %506 = load i32, i32* %505, align 4
  %507 = shl i32 %506, 14
  %508 = or i32 %504, %507
  %509 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 22
  %510 = load i32, i32* %509, align 8
  %511 = shl i32 %510, 12
  %512 = or i32 %508, %511
  %513 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 21
  %514 = load i32, i32* %513, align 4
  %515 = shl i32 %514, 10
  %516 = or i32 %512, %515
  %517 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 20
  %518 = load i32, i32* %517, align 16
  %519 = shl i32 %518, 8
  %520 = or i32 %516, %519
  %521 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 19
  %522 = load i32, i32* %521, align 4
  %523 = shl i32 %522, 6
  %524 = or i32 %520, %523
  %525 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 18
  %526 = load i32, i32* %525, align 8
  %527 = shl i32 %526, 4
  %528 = or i32 %524, %527
  %529 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 17
  %530 = load i32, i32* %529, align 4
  %531 = shl i32 %530, 2
  %532 = or i32 %528, %531
  %533 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 16
  %534 = load i32, i32* %533, align 16
  %535 = shl i32 %534, 0
  %536 = or i32 %532, %535
  store i32 %536, i32* %15, align 4
  %537 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %538 = load i32, i32* @AR_PHY_BIN_MASK2_2, align 4
  %539 = load i32, i32* %15, align 4
  %540 = call i32 @REG_WRITE(%struct.ath_hw* %537, i32 %538, i32 %539)
  %541 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %542 = load i32, i32* @AR_PHY_MASK2_P_30_16, align 4
  %543 = load i32, i32* %15, align 4
  %544 = call i32 @REG_WRITE(%struct.ath_hw* %541, i32 %542, i32 %543)
  %545 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 45
  %546 = load i32, i32* %545, align 4
  %547 = shl i32 %546, 28
  %548 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 44
  %549 = load i32, i32* %548, align 16
  %550 = shl i32 %549, 26
  %551 = or i32 %547, %550
  %552 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 43
  %553 = load i32, i32* %552, align 4
  %554 = shl i32 %553, 24
  %555 = or i32 %551, %554
  %556 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 42
  %557 = load i32, i32* %556, align 8
  %558 = shl i32 %557, 22
  %559 = or i32 %555, %558
  %560 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 41
  %561 = load i32, i32* %560, align 4
  %562 = shl i32 %561, 20
  %563 = or i32 %559, %562
  %564 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 40
  %565 = load i32, i32* %564, align 16
  %566 = shl i32 %565, 18
  %567 = or i32 %563, %566
  %568 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 39
  %569 = load i32, i32* %568, align 4
  %570 = shl i32 %569, 16
  %571 = or i32 %567, %570
  %572 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 38
  %573 = load i32, i32* %572, align 8
  %574 = shl i32 %573, 14
  %575 = or i32 %571, %574
  %576 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 37
  %577 = load i32, i32* %576, align 4
  %578 = shl i32 %577, 12
  %579 = or i32 %575, %578
  %580 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 36
  %581 = load i32, i32* %580, align 16
  %582 = shl i32 %581, 10
  %583 = or i32 %579, %582
  %584 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 35
  %585 = load i32, i32* %584, align 4
  %586 = shl i32 %585, 8
  %587 = or i32 %583, %586
  %588 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 34
  %589 = load i32, i32* %588, align 8
  %590 = shl i32 %589, 6
  %591 = or i32 %587, %590
  %592 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 33
  %593 = load i32, i32* %592, align 4
  %594 = shl i32 %593, 4
  %595 = or i32 %591, %594
  %596 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 32
  %597 = load i32, i32* %596, align 16
  %598 = shl i32 %597, 2
  %599 = or i32 %595, %598
  %600 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 31
  %601 = load i32, i32* %600, align 4
  %602 = shl i32 %601, 0
  %603 = or i32 %599, %602
  store i32 %603, i32* %15, align 4
  %604 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %605 = load i32, i32* @AR_PHY_BIN_MASK2_3, align 4
  %606 = load i32, i32* %15, align 4
  %607 = call i32 @REG_WRITE(%struct.ath_hw* %604, i32 %605, i32 %606)
  %608 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %609 = load i32, i32* @AR_PHY_MASK2_P_45_31, align 4
  %610 = load i32, i32* %15, align 4
  %611 = call i32 @REG_WRITE(%struct.ath_hw* %608, i32 %609, i32 %610)
  %612 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 61
  %613 = load i32, i32* %612, align 4
  %614 = shl i32 %613, 30
  %615 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 60
  %616 = load i32, i32* %615, align 16
  %617 = shl i32 %616, 28
  %618 = or i32 %614, %617
  %619 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 59
  %620 = load i32, i32* %619, align 4
  %621 = shl i32 %620, 26
  %622 = or i32 %618, %621
  %623 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 58
  %624 = load i32, i32* %623, align 8
  %625 = shl i32 %624, 24
  %626 = or i32 %622, %625
  %627 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 57
  %628 = load i32, i32* %627, align 4
  %629 = shl i32 %628, 22
  %630 = or i32 %626, %629
  %631 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 56
  %632 = load i32, i32* %631, align 16
  %633 = shl i32 %632, 20
  %634 = or i32 %630, %633
  %635 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 55
  %636 = load i32, i32* %635, align 4
  %637 = shl i32 %636, 18
  %638 = or i32 %634, %637
  %639 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 54
  %640 = load i32, i32* %639, align 8
  %641 = shl i32 %640, 16
  %642 = or i32 %638, %641
  %643 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 53
  %644 = load i32, i32* %643, align 4
  %645 = shl i32 %644, 14
  %646 = or i32 %642, %645
  %647 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 52
  %648 = load i32, i32* %647, align 16
  %649 = shl i32 %648, 12
  %650 = or i32 %646, %649
  %651 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 51
  %652 = load i32, i32* %651, align 4
  %653 = shl i32 %652, 10
  %654 = or i32 %650, %653
  %655 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 50
  %656 = load i32, i32* %655, align 8
  %657 = shl i32 %656, 8
  %658 = or i32 %654, %657
  %659 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 49
  %660 = load i32, i32* %659, align 4
  %661 = shl i32 %660, 6
  %662 = or i32 %658, %661
  %663 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 48
  %664 = load i32, i32* %663, align 16
  %665 = shl i32 %664, 4
  %666 = or i32 %662, %665
  %667 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 47
  %668 = load i32, i32* %667, align 4
  %669 = shl i32 %668, 2
  %670 = or i32 %666, %669
  %671 = getelementptr inbounds [123 x i32], [123 x i32]* %13, i64 0, i64 46
  %672 = load i32, i32* %671, align 8
  %673 = shl i32 %672, 0
  %674 = or i32 %670, %673
  store i32 %674, i32* %15, align 4
  %675 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %676 = load i32, i32* @AR_PHY_BIN_MASK2_4, align 4
  %677 = load i32, i32* %15, align 4
  %678 = call i32 @REG_WRITE(%struct.ath_hw* %675, i32 %676, i32 %677)
  %679 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %680 = load i32, i32* @AR_PHY_MASK2_P_61_45, align 4
  %681 = load i32, i32* %15, align 4
  %682 = call i32 @REG_WRITE(%struct.ath_hw* %679, i32 %680, i32 %681)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
