; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_generate_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_generate_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.p54_common* }
%struct.p54_common = type { %struct.ieee80211_supported_band**, %struct.TYPE_2__* }
%struct.ieee80211_supported_band = type { i32, i32, i32, %struct.ieee80211_supported_band*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_supported_band* }
%struct.p54_channel_list = type { i32, i32*, %struct.p54_channel_entry* }
%struct.p54_channel_entry = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i32, %struct.ieee80211_channel*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CHAN_HAS_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s%s%s is/are missing for channel:%d [%d MHz].\0A\00", align 1
@CHAN_HAS_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" [iqauto calibration data]\00", align 1
@CHAN_HAS_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c" [output power limits]\00", align 1
@CHAN_HAS_CURVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c" [curve data]\00", align 1
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_TX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Disabling totally damaged %d GHz band\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.p54_channel_list*, i32*, i32)* @p54_generate_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_generate_band(%struct.ieee80211_hw* %0, %struct.p54_channel_list* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.p54_channel_list*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p54_common*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.p54_channel_entry*, align 8
  %17 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.p54_channel_list* %1, %struct.p54_channel_list** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 1
  %20 = load %struct.p54_common*, %struct.p54_common** %19, align 8
  store %struct.p54_common* %20, %struct.p54_common** %10, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  %23 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %24 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %29 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27, %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %262

39:                                               ; preds = %27
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.ieee80211_supported_band* @kzalloc(i32 32, i32 %40)
  store %struct.ieee80211_supported_band* %41, %struct.ieee80211_supported_band** %11, align 8
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %43 = icmp ne %struct.ieee80211_supported_band* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %250

45:                                               ; preds = %39
  %46 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %47 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.ieee80211_supported_band* @kcalloc(i32 %52, i32 32, i32 %53)
  %55 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %55, i32 0, i32 3
  store %struct.ieee80211_supported_band* %54, %struct.ieee80211_supported_band** %56, align 8
  %57 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %57, i32 0, i32 3
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %58, align 8
  %60 = icmp ne %struct.ieee80211_supported_band* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %45
  br label %250

62:                                               ; preds = %45
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @p54_fill_band_bitrates(%struct.ieee80211_hw* %63, %struct.ieee80211_supported_band* %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %250

70:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %204, %70
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %74 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ult i32 %72, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %84 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %82, %85
  br label %87

87:                                               ; preds = %81, %71
  %88 = phi i1 [ false, %71 ], [ %86, %81 ]
  br i1 %88, label %89, label %207

89:                                               ; preds = %87
  %90 = load %struct.p54_channel_list*, %struct.p54_channel_list** %7, align 8
  %91 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %90, i32 0, i32 2
  %92 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %92, i64 %94
  store %struct.p54_channel_entry* %95, %struct.p54_channel_entry** %16, align 8
  %96 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %97 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %96, i32 0, i32 3
  %98 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %98, i64 %100
  %102 = bitcast %struct.ieee80211_supported_band* %101 to %struct.ieee80211_channel*
  store %struct.ieee80211_channel* %102, %struct.ieee80211_channel** %17, align 8
  %103 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %104 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  br label %204

109:                                              ; preds = %89
  %110 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %111 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CHAN_HAS_ALL, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %150

115:                                              ; preds = %109
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %117 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %120 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CHAN_HAS_CAL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)
  %127 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %128 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CHAN_HAS_LIMIT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)
  %135 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %136 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CHAN_HAS_CURVE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %143 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %144 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %147 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @wiphy_err(i32 %118, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %126, i8* %134, i8* %142, i32 %145, i32 %148)
  br label %204

150:                                              ; preds = %109
  %151 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %152 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %155 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %157 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %160 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %16, align 8
  %162 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %165 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %167 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %166, i32 0, i32 3
  %168 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %168, i64 %170
  %172 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %173 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %175, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store %struct.ieee80211_supported_band* %171, %struct.ieee80211_supported_band** %179, align 8
  %180 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %181 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @SURVEY_INFO_TIME_TX, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %188 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %187, i32 0, i32 1
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  store i32 %186, i32* %194, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  %198 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %14, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %14, align 4
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %201, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %150, %115, %108
  %205 = load i32, i32* %13, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %71

207:                                              ; preds = %87
  %208 = load i32, i32* %14, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %207
  %211 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %212 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %216 = icmp eq i32 %214, %215
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 2, i32 5
  %219 = call i32 (i32, i8*, ...) @wiphy_err(i32 %213, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @ENODATA, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %15, align 4
  br label %250

222:                                              ; preds = %207
  %223 = load i32, i32* %14, align 4
  %224 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %225 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %227 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %226, i32 0, i32 0
  %228 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %228, i64 %230
  %232 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %231, align 8
  store %struct.ieee80211_supported_band* %232, %struct.ieee80211_supported_band** %12, align 8
  %233 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %234 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %235 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %234, i32 0, i32 0
  %236 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %236, i64 %238
  store %struct.ieee80211_supported_band* %233, %struct.ieee80211_supported_band** %239, align 8
  %240 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %241 = icmp ne %struct.ieee80211_supported_band* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %222
  %243 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %244 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %243, i32 0, i32 3
  %245 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %244, align 8
  %246 = call i32 @kfree(%struct.ieee80211_supported_band* %245)
  %247 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %248 = call i32 @kfree(%struct.ieee80211_supported_band* %247)
  br label %249

249:                                              ; preds = %242, %222
  store i32 0, i32* %5, align 4
  br label %262

250:                                              ; preds = %210, %69, %61, %44
  %251 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %252 = icmp ne %struct.ieee80211_supported_band* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %250
  %254 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %255 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %254, i32 0, i32 3
  %256 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %255, align 8
  %257 = call i32 @kfree(%struct.ieee80211_supported_band* %256)
  %258 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %259 = call i32 @kfree(%struct.ieee80211_supported_band* %258)
  br label %260

260:                                              ; preds = %253, %250
  %261 = load i32, i32* %15, align 4
  store i32 %261, i32* %5, align 4
  br label %262

262:                                              ; preds = %260, %249, %36
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local %struct.ieee80211_supported_band* @kzalloc(i32, i32) #1

declare dso_local %struct.ieee80211_supported_band* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @p54_fill_band_bitrates(%struct.ieee80211_hw*, %struct.ieee80211_supported_band*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @kfree(%struct.ieee80211_supported_band*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
