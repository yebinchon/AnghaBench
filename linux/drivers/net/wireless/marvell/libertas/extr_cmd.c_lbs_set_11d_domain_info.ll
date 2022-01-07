; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_11d_domain_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_11d_domain_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wiphy* }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64, i64 }
%struct.cmd_ds_802_11d_domain_info = type { %struct.TYPE_8__, %struct.mrvl_ie_domain_param_set, i8* }
%struct.TYPE_8__ = type { i8* }
%struct.mrvl_ie_domain_param_set = type { i8*, %struct.TYPE_7__, %struct.ieee80211_country_ie_triplet* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.ieee80211_country_ie_triplet = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }

@CMD_ACT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Setting country code '%c%c'\0A\00", align 1
@TLV_TYPE_DOMAIN = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@MAX_11D_TRIPLETS = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"11D triplet (%d, %d, %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"# triplets %d\0A\00", align 1
@LBS_DEB_11D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"802.11D domain param set\00", align 1
@CMD_802_11D_DOMAIN_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_11d_domain_info(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.ieee80211_supported_band**, align 8
  %5 = alloca %struct.cmd_ds_802_11d_domain_info, align 8
  %6 = alloca %struct.mrvl_ie_domain_param_set*, align 8
  %7 = alloca %struct.ieee80211_country_ie_triplet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %19 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.wiphy*, %struct.wiphy** %22, align 8
  store %struct.wiphy* %23, %struct.wiphy** %3, align 8
  %24 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %25, align 8
  store %struct.ieee80211_supported_band** %26, %struct.ieee80211_supported_band*** %4, align 8
  %27 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, %struct.cmd_ds_802_11d_domain_info* %5, i32 0, i32 1
  store %struct.mrvl_ie_domain_param_set* %27, %struct.mrvl_ie_domain_param_set** %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %28 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  br label %250

35:                                               ; preds = %1
  %36 = call i32 @memset(%struct.cmd_ds_802_11d_domain_info* %5, i32 0, i32 48)
  %37 = load i32, i32* @CMD_ACT_SET, align 4
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, %struct.cmd_ds_802_11d_domain_info* %5, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i64
  %46 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (i8*, i64, ...) @lbs_deb_11d(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %51)
  %53 = load i32, i32* @TLV_TYPE_DOMAIN, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %56 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %59 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %64 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %62, i8* %66, align 1
  %67 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %73 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %71, i8* %75, align 1
  %76 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %77 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8 32, i8* %79, align 1
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %216, %35
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @MAX_11D_TRIPLETS, align 8
  %87 = icmp ult i64 %85, %86
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  br i1 %89, label %90, label %219

90:                                               ; preds = %88
  %91 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %91, i64 %93
  %95 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %94, align 8
  %96 = icmp ne %struct.ieee80211_supported_band* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %216

98:                                               ; preds = %90
  store i64 0, i64* %15, align 8
  br label %99

99:                                               ; preds = %185, %98
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %101, i64 %103
  %105 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %104, align 8
  %106 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %100, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @MAX_11D_TRIPLETS, align 8
  %112 = icmp ult i64 %110, %111
  br label %113

113:                                              ; preds = %109, %99
  %114 = phi i1 [ false, %99 ], [ %112, %109 ]
  br i1 %114, label %115, label %188

115:                                              ; preds = %113
  %116 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %116, i64 %118
  %120 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %119, align 8
  %121 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %120, i32 0, i32 1
  %122 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %121, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %122, i64 %123
  store %struct.ieee80211_channel* %124, %struct.ieee80211_channel** %9, align 8
  %125 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %115
  br label %185

132:                                              ; preds = %115
  %133 = load i64, i64* %16, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  store i64 1, i64* %16, align 8
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %137 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %12, align 8
  store i64 %138, i64* %13, align 8
  %139 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %14, align 8
  store i64 1, i64* %11, align 8
  br label %185

142:                                              ; preds = %132
  %143 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %144 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %146, 1
  %148 = icmp eq i64 %145, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %142
  %150 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %151 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %14, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i64, i64* %13, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %13, align 8
  %158 = load i64, i64* %11, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %11, align 8
  br label %184

160:                                              ; preds = %149, %142
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i32 (i8*, i64, ...) @lbs_deb_11d(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %161, i64 %162, i64 %163)
  %165 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %166 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %165, i32 0, i32 2
  %167 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %166, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %167, i64 %168
  store %struct.ieee80211_country_ie_triplet* %169, %struct.ieee80211_country_ie_triplet** %7, align 8
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %7, align 8
  %172 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store i64 %170, i64* %173, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i64 %174, i64* %177, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %7, align 8
  %180 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  store i64 %178, i64* %181, align 8
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %10, align 8
  store i64 0, i64* %16, align 8
  br label %184

184:                                              ; preds = %160, %155
  br label %185

185:                                              ; preds = %184, %135, %131
  %186 = load i64, i64* %15, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %15, align 8
  br label %99

188:                                              ; preds = %113
  %189 = load i64, i64* %16, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %188
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %11, align 8
  %194 = load i64, i64* %14, align 8
  %195 = call i32 (i8*, i64, ...) @lbs_deb_11d(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %192, i64 %193, i64 %194)
  %196 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %197 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %196, i32 0, i32 2
  %198 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %197, align 8
  %199 = load i64, i64* %10, align 8
  %200 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %198, i64 %199
  store %struct.ieee80211_country_ie_triplet* %200, %struct.ieee80211_country_ie_triplet** %7, align 8
  %201 = load i64, i64* %12, align 8
  %202 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %7, align 8
  %203 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %11, align 8
  %206 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %7, align 8
  %207 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  store i64 %205, i64* %208, align 8
  %209 = load i64, i64* %14, align 8
  %210 = load %struct.ieee80211_country_ie_triplet*, %struct.ieee80211_country_ie_triplet** %7, align 8
  %211 = getelementptr inbounds %struct.ieee80211_country_ie_triplet, %struct.ieee80211_country_ie_triplet* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  store i64 %209, i64* %212, align 8
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %10, align 8
  br label %215

215:                                              ; preds = %191, %188
  br label %216

216:                                              ; preds = %215, %97
  %217 = load i32, i32* %8, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %80

219:                                              ; preds = %88
  %220 = load i64, i64* %10, align 8
  %221 = call i32 (i8*, i64, ...) @lbs_deb_11d(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %220)
  %222 = load i64, i64* %10, align 8
  %223 = mul i64 %222, 24
  store i64 %223, i64* %17, align 8
  %224 = load i64, i64* %17, align 8
  %225 = add i64 8, %224
  %226 = trunc i64 %225 to i32
  %227 = call i8* @cpu_to_le16(i32 %226)
  %228 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %229 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  store i8* %227, i8** %230, align 8
  %231 = load i32, i32* @LBS_DEB_11D, align 4
  %232 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, %struct.cmd_ds_802_11d_domain_info* %5, i32 0, i32 1
  %233 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %232, i32 0, i32 0
  %234 = bitcast i8** %233 to i64*
  %235 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %6, align 8
  %236 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @le16_to_cpu(i8* %238)
  %240 = call i32 @lbs_deb_hex(i32 %231, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64* %234, i32 %239)
  %241 = load i64, i64* %17, align 8
  %242 = add i64 40, %241
  %243 = trunc i64 %242 to i32
  %244 = call i8* @cpu_to_le16(i32 %243)
  %245 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, %struct.cmd_ds_802_11d_domain_info* %5, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  store i8* %244, i8** %246, align 8
  %247 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %248 = load i32, i32* @CMD_802_11D_DOMAIN_INFO, align 4
  %249 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %247, i32 %248, %struct.cmd_ds_802_11d_domain_info* %5)
  store i32 %249, i32* %18, align 4
  br label %250

250:                                              ; preds = %219, %34
  %251 = load i32, i32* %18, align 4
  ret i32 %251
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11d_domain_info*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_deb_11d(i8*, i64, ...) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i64*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11d_domain_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
