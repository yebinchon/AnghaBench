; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_update_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_update_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i64, i32 }
%struct.wmi_scan_chan_list_arg = type { i32, %struct.wmi_channel_arg*, i32 }
%struct.wmi_channel_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i64, i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@MODE_11G = common dso_local global i64 0, align 8
@MODE_11A = common dso_local global i64 0, align 8
@MODE_UNKNOWN = common dso_local global i64 0, align 8
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"mac channel [%zd/%d] freq %d maxpower %d regpower %d antenna %d mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_update_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_update_channel_list(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_supported_band**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.wmi_scan_chan_list_arg, align 8
  %9 = alloca %struct.wmi_channel_arg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 1
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %15, align 8
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %4, align 8
  %17 = bitcast %struct.wmi_scan_chan_list_arg* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %24, align 8
  store %struct.ieee80211_supported_band** %25, %struct.ieee80211_supported_band*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %74, %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %31, i64 %33
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %34, align 8
  %36 = icmp ne %struct.ieee80211_supported_band* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %74

38:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %70, %38
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %41, i64 %43
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %40, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %39
  %50 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, i64 %52
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %53, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 1
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %56, i64 %58
  %60 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  br label %70

66:                                               ; preds = %49
  %67 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %66, %65
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %39

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73, %37
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %26

77:                                               ; preds = %26
  %78 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul i64 80, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.wmi_channel_arg* @kzalloc(i32 %83, i32 %84)
  %86 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 1
  store %struct.wmi_channel_arg* %85, %struct.wmi_channel_arg** %86, align 8
  %87 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 1
  %88 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %87, align 8
  %89 = icmp ne %struct.wmi_channel_arg* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %288

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 1
  %95 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %94, align 8
  store %struct.wmi_channel_arg* %95, %struct.wmi_channel_arg** %9, align 8
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %278, %93
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %281

100:                                              ; preds = %96
  %101 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %101, i64 %103
  %105 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %104, align 8
  %106 = icmp ne %struct.ieee80211_supported_band* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %278

108:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %274, %108
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %111, i64 %113
  %115 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %114, align 8
  %116 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %110, %117
  br i1 %118, label %119, label %277

119:                                              ; preds = %109
  %120 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %120, i64 %122
  %124 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %123, align 8
  %125 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %124, i32 0, i32 1
  %126 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %126, i64 %128
  store %struct.ieee80211_channel* %129, %struct.ieee80211_channel** %7, align 8
  %130 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %131 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %119
  br label %274

137:                                              ; preds = %119
  %138 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %139 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %141 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %143 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %151 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %153 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %161 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %163 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %172 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %177 = and i32 %175, %176
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %180 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %182 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %185 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %189 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %192 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %191, i32 0, i32 10
  store i32 %190, i32* %192, align 8
  %193 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %194 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %197 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %196, i32 0, i32 13
  store i32 %195, i32* %197, align 8
  %198 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %199 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %198, i32 0, i32 12
  store i64 0, i64* %199, align 8
  %200 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %201 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %202, 2
  %204 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %205 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 8
  %206 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %207 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %208, 2
  %210 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %211 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 4
  %212 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %213 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %214, 2
  %216 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %217 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 8
  %218 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %219 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %218, i32 0, i32 11
  store i64 0, i64* %219, align 8
  %220 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %221 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %137
  %226 = load i64, i64* @MODE_11G, align 8
  %227 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %228 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %227, i32 0, i32 9
  store i64 %226, i64* %228, align 8
  br label %233

229:                                              ; preds = %137
  %230 = load i64, i64* @MODE_11A, align 8
  %231 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %232 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %231, i32 0, i32 9
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %229, %225
  %234 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %235 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %234, i32 0, i32 9
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @MODE_UNKNOWN, align 8
  %238 = icmp eq i64 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i64 @WARN_ON_ONCE(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  br label %274

243:                                              ; preds = %233
  %244 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %245 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %246 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %247 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 1
  %248 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %247, align 8
  %249 = ptrtoint %struct.wmi_channel_arg* %246 to i64
  %250 = ptrtoint %struct.wmi_channel_arg* %248 to i64
  %251 = sub i64 %249, %250
  %252 = sdiv exact i64 %251, 80
  %253 = trunc i64 %252 to i32
  %254 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %257 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %256, i32 0, i32 10
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %260 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %263 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %266 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %269 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %268, i32 0, i32 9
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @ath10k_dbg(%struct.ath10k* %244, i32 %245, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %253, i32 %255, i32 %258, i32 %261, i32 %264, i32 %267, i64 %270)
  %272 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %9, align 8
  %273 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %272, i32 1
  store %struct.wmi_channel_arg* %273, %struct.wmi_channel_arg** %9, align 8
  br label %274

274:                                              ; preds = %243, %242, %136
  %275 = load i32, i32* %13, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %13, align 4
  br label %109

277:                                              ; preds = %109
  br label %278

278:                                              ; preds = %277, %107
  %279 = load i32, i32* %6, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %96

281:                                              ; preds = %96
  %282 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %283 = call i32 @ath10k_wmi_scan_chan_list(%struct.ath10k* %282, %struct.wmi_scan_chan_list_arg* %8)
  store i32 %283, i32* %12, align 4
  %284 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %8, i32 0, i32 1
  %285 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %284, align 8
  %286 = call i32 @kfree(%struct.wmi_channel_arg* %285)
  %287 = load i32, i32* %12, align 4
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %281, %90
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local %struct.wmi_channel_arg* @kzalloc(i32, i32) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32, i32, i64) #2

declare dso_local i32 @ath10k_wmi_scan_chan_list(%struct.ath10k*, %struct.wmi_scan_chan_list_arg*) #2

declare dso_local i32 @kfree(%struct.wmi_channel_arg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
