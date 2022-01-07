; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info_5112.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_pcal_info_5112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32**, i32*, i32*, i64, i32*, %struct.ath5k_chan_pcal_info*, i32, %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info* }
%struct.ath5k_chan_pcal_info = type { i8*, %struct.ath5k_chan_pcal_info_rf5112 }
%struct.ath5k_chan_pcal_info_rf5112 = type { i32*, i32*, i32*, i8** }

@AR5K_EEPROM_N_PD_CURVES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_EEPROM_GROUP2_OFFSET = common dso_local global i32 0, align 4
@AR5K_EEPROM_GROUP3_OFFSET = common dso_local global i32 0, align 4
@AR5K_EEPROM_GROUP4_OFFSET = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_XPD0_POINTS = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_4_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_eeprom_read_pcal_info_5112 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_pcal_info_5112(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_eeprom_info*, align 8
  %7 = alloca %struct.ath5k_chan_pcal_info_rf5112*, align 8
  %8 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %17, %struct.ath5k_eeprom_info** %6, align 8
  %18 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %19 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %49, %2
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @AR5K_EEPROM_N_PD_CURVES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %31 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %36, %37
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %55 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %52
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %310

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  switch i32 %69, label %135 [
    i32 130, label %70
    i32 129, label %85
    i32 128, label %104
  ]

70:                                               ; preds = %68
  %71 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %72 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @AR5K_EEPROM_GROUPS_START(i64 %73)
  store i64 %74, i64* %10, align 8
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @ath5k_eeprom_init_11a_pcal_freq(%struct.ath5k_hw* %75, i64 %76)
  %78 = load i32, i32* @AR5K_EEPROM_GROUP2_OFFSET, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %10, align 8
  %82 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %83 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %82, i32 0, i32 8
  %84 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %83, align 8
  store %struct.ath5k_chan_pcal_info* %84, %struct.ath5k_chan_pcal_info** %8, align 8
  br label %138

85:                                               ; preds = %68
  %86 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %87 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @AR5K_EEPROM_GROUPS_START(i64 %88)
  store i64 %89, i64* %10, align 8
  %90 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %91 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @AR5K_EEPROM_HDR_11A(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load i32, i32* @AR5K_EEPROM_GROUP3_OFFSET, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %95, %85
  %101 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %102 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %101, i32 0, i32 7
  %103 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %102, align 8
  store %struct.ath5k_chan_pcal_info* %103, %struct.ath5k_chan_pcal_info** %8, align 8
  br label %138

104:                                              ; preds = %68
  %105 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %106 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @AR5K_EEPROM_GROUPS_START(i64 %107)
  store i64 %108, i64* %10, align 8
  %109 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %110 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @AR5K_EEPROM_HDR_11A(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load i32, i32* @AR5K_EEPROM_GROUP4_OFFSET, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %10, align 8
  br label %131

119:                                              ; preds = %104
  %120 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %121 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @AR5K_EEPROM_HDR_11B(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i32, i32* @AR5K_EEPROM_GROUP2_OFFSET, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %10, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %125, %119
  br label %131

131:                                              ; preds = %130, %114
  %132 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %133 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %132, i32 0, i32 5
  %134 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %133, align 8
  store %struct.ath5k_chan_pcal_info* %134, %struct.ath5k_chan_pcal_info** %8, align 8
  br label %138

135:                                              ; preds = %68
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %310

138:                                              ; preds = %131, %100, %70
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %302, %138
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %142 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %140, %147
  br i1 %148, label %149, label %305

149:                                              ; preds = %139
  %150 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %8, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %150, i64 %152
  %154 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %153, i32 0, i32 1
  store %struct.ath5k_chan_pcal_info_rf5112* %154, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %187, %149
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @AR5K_EEPROM_N_XPD0_POINTS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %155
  %160 = load i64, i64* %10, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %10, align 8
  %162 = trunc i64 %160 to i32
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @AR5K_EEPROM_READ(i32 %162, i32 %163)
  %165 = load i32, i32* %13, align 4
  %166 = and i32 %165, 255
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %170 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %169, i32 0, i32 3
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %168, i8** %174, align 8
  %175 = load i32, i32* %13, align 4
  %176 = ashr i32 %175, 8
  %177 = and i32 %176, 255
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to i8*
  %180 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %181 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %180, i32 0, i32 3
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %182, i64 %185
  store i8* %179, i8** %186, align 8
  br label %187

187:                                              ; preds = %159
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %155

190:                                              ; preds = %155
  %191 = load i64, i64* %10, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %10, align 8
  %193 = trunc i64 %191 to i32
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @AR5K_EEPROM_READ(i32 %193, i32 %194)
  %196 = load i32, i32* %13, align 4
  %197 = and i32 %196, 31
  %198 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %199 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 %197, i32* %201, align 4
  %202 = load i32, i32* %13, align 4
  %203 = ashr i32 %202, 5
  %204 = and i32 %203, 31
  %205 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %206 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  store i32 %204, i32* %208, align 4
  %209 = load i32, i32* %13, align 4
  %210 = ashr i32 %209, 10
  %211 = and i32 %210, 31
  %212 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %213 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  store i32 %211, i32* %215, align 4
  %216 = load i64, i64* %10, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %10, align 8
  %218 = trunc i64 %216 to i32
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @AR5K_EEPROM_READ(i32 %218, i32 %219)
  %221 = load i32, i32* %13, align 4
  %222 = and i32 %221, 255
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %227 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 %225, i32* %229, align 4
  %230 = load i32, i32* %13, align 4
  %231 = ashr i32 %230, 8
  %232 = and i32 %231, 255
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  %235 = ptrtoint i8* %234 to i32
  %236 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %237 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  store i32 %235, i32* %239, align 4
  %240 = load i64, i64* %10, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %10, align 8
  %242 = trunc i64 %240 to i32
  %243 = load i32, i32* %13, align 4
  %244 = call i32 @AR5K_EEPROM_READ(i32 %242, i32 %243)
  %245 = load i32, i32* %13, align 4
  %246 = and i32 %245, 255
  %247 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %248 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  store i32 %246, i32* %250, align 4
  %251 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %252 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 20, i32* %254, align 4
  %255 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %256 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  store i32 35, i32* %258, align 4
  %259 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %260 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 2
  store i32 63, i32* %262, align 4
  %263 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %6, align 8
  %264 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @AR5K_EEPROM_VERSION_4_3, align 8
  %267 = icmp sge i64 %265, %266
  br i1 %267, label %268, label %286

268:                                              ; preds = %190
  %269 = load i32, i32* %13, align 4
  %270 = ashr i32 %269, 8
  %271 = and i32 %270, 63
  %272 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %273 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  store i32 %271, i32* %275, align 4
  %276 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %277 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %276, i32 0, i32 3
  %278 = load i8**, i8*** %277, align 8
  %279 = getelementptr inbounds i8*, i8** %278, i64 3
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %8, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %281, i64 %283
  %285 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %284, i32 0, i32 0
  store i8* %280, i8** %285, align 8
  br label %301

286:                                              ; preds = %190
  %287 = load %struct.ath5k_chan_pcal_info_rf5112*, %struct.ath5k_chan_pcal_info_rf5112** %7, align 8
  %288 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf5112, %struct.ath5k_chan_pcal_info_rf5112* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 1, i32* %290, align 4
  %291 = load i32, i32* %13, align 4
  %292 = ashr i32 %291, 8
  %293 = and i32 %292, 255
  %294 = sext i32 %293 to i64
  %295 = inttoptr i64 %294 to i8*
  %296 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %8, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %296, i64 %298
  %300 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %299, i32 0, i32 0
  store i8* %295, i8** %300, align 8
  br label %301

301:                                              ; preds = %286, %268
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %11, align 4
  br label %139

305:                                              ; preds = %139
  %306 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %307 = load i32, i32* %5, align 4
  %308 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %8, align 8
  %309 = call i32 @ath5k_eeprom_convert_pcal_info_5112(%struct.ath5k_hw* %306, i32 %307, %struct.ath5k_chan_pcal_info* %308)
  store i32 %309, i32* %3, align 4
  br label %310

310:                                              ; preds = %305, %135, %65
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i64 @AR5K_EEPROM_GROUPS_START(i64) #1

declare dso_local i32 @ath5k_eeprom_init_11a_pcal_freq(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11A(i32) #1

declare dso_local i32 @AR5K_EEPROM_HDR_11B(i32) #1

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i32 @ath5k_eeprom_convert_pcal_info_5112(%struct.ath5k_hw*, i32, %struct.ath5k_chan_pcal_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
