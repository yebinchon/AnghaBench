; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_parse_nvm_mcc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_parse_nvm_mcc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32*, i32, %struct.ieee80211_reg_rule* }
%struct.ieee80211_reg_rule = type { %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.iwl_cfg = type { i64, i64 }

@IWL_NVM_NUM_CHANNELS_UHB = common dso_local global i32 0, align 4
@iwl_uhb_nvm_channels = common dso_local global i32* null, align 8
@IWL_NVM_EXT = common dso_local global i64 0, align 8
@IWL_NVM_NUM_CHANNELS_EXT = common dso_local global i32 0, align 4
@iwl_ext_nvm_channels = common dso_local global i32* null, align 8
@IWL_NVM_NUM_CHANNELS = common dso_local global i32 0, align 4
@iwl_nvm_channels = common dso_local global i32* null, align 8
@NL80211_MAX_SUPP_REG_RULES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IWL_DL_LAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"building regdom for %d channels\0A\00", align 1
@reg_rules = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_2GHZ_CHANNELS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NVM_CHANNEL_VALID = common dso_local global i32 0, align 4
@IWL_DEFAULT_MAX_TX_POWER = common dso_local global i32 0, align 4
@NL80211_RRF_AUTO_BW = common dso_local global i64 0, align 8
@GEO_WMM_ETSI_5GHZ_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_regdomain* @iwl_parse_nvm_mcc_info(%struct.device* %0, %struct.iwl_cfg* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_regdomain*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.iwl_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ieee80211_regdomain*, align 8
  %20 = alloca %struct.ieee80211_regdomain*, align 8
  %21 = alloca %struct.ieee80211_reg_rule*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %28 = load %struct.iwl_cfg*, %struct.iwl_cfg** %9, align 8
  %29 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i32, i32* @IWL_NVM_NUM_CHANNELS_UHB, align 4
  store i32 %33, i32* %27, align 4
  %34 = load i32*, i32** @iwl_uhb_nvm_channels, align 8
  store i32* %34, i32** %18, align 8
  br label %48

35:                                               ; preds = %6
  %36 = load %struct.iwl_cfg*, %struct.iwl_cfg** %9, align 8
  %37 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IWL_NVM_EXT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @IWL_NVM_NUM_CHANNELS_EXT, align 4
  store i32 %42, i32* %27, align 4
  %43 = load i32*, i32** @iwl_ext_nvm_channels, align 8
  store i32* %43, i32** %18, align 8
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @IWL_NVM_NUM_CHANNELS, align 4
  store i32 %45, i32* %27, align 4
  %46 = load i32*, i32** @iwl_nvm_channels, align 8
  store i32* %46, i32** %18, align 8
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %27, align 4
  %51 = icmp sgt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %27, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @NL80211_MAX_SUPP_REG_RULES, align 4
  %60 = icmp sgt i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @WARN_ON_ONCE(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.ieee80211_regdomain* @ERR_PTR(i32 %66)
  store %struct.ieee80211_regdomain* %67, %struct.ieee80211_regdomain** %7, align 8
  br label %254

68:                                               ; preds = %57
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load i32, i32* @IWL_DL_LAR, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @IWL_DEBUG_DEV(%struct.device* %69, i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %74 = load i32, i32* @reg_rules, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @struct_size(%struct.ieee80211_regdomain* %73, i32 %74, i32 %75)
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.ieee80211_regdomain* @kzalloc(i32 %76, i32 %77)
  store %struct.ieee80211_regdomain* %78, %struct.ieee80211_regdomain** %19, align 8
  %79 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %80 = icmp ne %struct.ieee80211_regdomain* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %68
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  %84 = call %struct.ieee80211_regdomain* @ERR_PTR(i32 %83)
  store %struct.ieee80211_regdomain* %84, %struct.ieee80211_regdomain** %7, align 8
  br label %254

85:                                               ; preds = %68
  %86 = load i32, i32* %12, align 4
  %87 = ashr i32 %86, 8
  %88 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %89 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 255
  %94 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %95 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %93, i32* %97, align 4
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %230, %85
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %233

102:                                              ; preds = %98
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i64 @__le32_to_cpup(i32* %106)
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %102
  %113 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %116

114:                                              ; preds = %102
  %115 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %22, align 4
  %118 = load i32*, i32** %18, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %22, align 4
  %124 = call i32 @ieee80211_channel_to_frequency(i32 %122, i32 %123)
  store i32 %124, i32* %23, align 4
  store i32 0, i32* %26, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @NVM_CHANNEL_VALID, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %116
  %130 = load %struct.device*, %struct.device** %8, align 8
  %131 = load i32, i32* @IWL_DL_LAR, align 4
  %132 = load i32*, i32** %18, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @iwl_nvm_print_channel_flags(%struct.device* %130, i32 %131, i32 %136, i32 %137)
  br label %230

139:                                              ; preds = %116
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.iwl_cfg*, %struct.iwl_cfg** %9, align 8
  %144 = call i64 @iwl_nvm_get_regdom_bw_flags(i32* %140, i32 %141, i32 %142, %struct.iwl_cfg* %143)
  store i64 %144, i64* %16, align 8
  %145 = load i32, i32* %14, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %139
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %24, align 4
  %154 = sub nsw i32 %152, %153
  %155 = icmp sgt i32 %154, 20
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %147, %139
  %157 = load i32, i32* %25, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %25, align 4
  store i32 1, i32* %26, align 4
  br label %159

159:                                              ; preds = %156, %151
  %160 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %161 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %160, i32 0, i32 2
  %162 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %161, align 8
  %163 = load i32, i32* %25, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %162, i64 %165
  store %struct.ieee80211_reg_rule* %166, %struct.ieee80211_reg_rule** %21, align 8
  %167 = load i32, i32* %26, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %159
  %170 = load i32, i32* %23, align 4
  %171 = sub nsw i32 %170, 10
  %172 = call i8* @MHZ_TO_KHZ(i32 %171)
  %173 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %174 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i8* %172, i8** %175, align 8
  br label %176

176:                                              ; preds = %169, %159
  %177 = load i32, i32* %23, align 4
  %178 = add nsw i32 %177, 10
  %179 = call i8* @MHZ_TO_KHZ(i32 %178)
  %180 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %181 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  store i8* %179, i8** %182, align 8
  %183 = call i32 @DBI_TO_MBI(i32 6)
  %184 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %185 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @IWL_DEFAULT_MAX_TX_POWER, align 4
  %188 = call i32 @DBM_TO_MBM(i32 %187)
  %189 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %190 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load i64, i64* %16, align 8
  %193 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %194 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* @NL80211_RRF_AUTO_BW, align 8
  %196 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %197 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = or i64 %198, %195
  store i64 %199, i64* %197, align 8
  %200 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %201 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i64 0, i64* %202, align 8
  %203 = load i32, i32* %23, align 4
  store i32 %203, i32* %24, align 4
  %204 = load i64, i64* %16, align 8
  store i64 %204, i64* %17, align 8
  %205 = load %struct.device*, %struct.device** %8, align 8
  %206 = load i32, i32* @IWL_DL_LAR, align 4
  %207 = load i32*, i32** %18, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @iwl_nvm_print_channel_flags(%struct.device* %205, i32 %206, i32 %211, i32 %212)
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* @GEO_WMM_ETSI_5GHZ_INFO, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %176
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218, %176
  br label %230

223:                                              ; preds = %218
  %224 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %225 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %23, align 4
  %228 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %21, align 8
  %229 = call i32 @reg_query_regdb_wmm(i32* %226, i32 %227, %struct.ieee80211_reg_rule* %228)
  br label %230

230:                                              ; preds = %223, %222, %129
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %14, align 4
  br label %98

233:                                              ; preds = %98
  %234 = load i32, i32* %25, align 4
  %235 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %236 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %238 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %239 = load i32, i32* @reg_rules, align 4
  %240 = load i32, i32* %25, align 4
  %241 = call i32 @struct_size(%struct.ieee80211_regdomain* %238, i32 %239, i32 %240)
  %242 = load i32, i32* @GFP_KERNEL, align 4
  %243 = call %struct.ieee80211_regdomain* @kmemdup(%struct.ieee80211_regdomain* %237, i32 %241, i32 %242)
  store %struct.ieee80211_regdomain* %243, %struct.ieee80211_regdomain** %20, align 8
  %244 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %20, align 8
  %245 = icmp ne %struct.ieee80211_regdomain* %244, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %233
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  %249 = call %struct.ieee80211_regdomain* @ERR_PTR(i32 %248)
  store %struct.ieee80211_regdomain* %249, %struct.ieee80211_regdomain** %20, align 8
  br label %250

250:                                              ; preds = %246, %233
  %251 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %19, align 8
  %252 = call i32 @kfree(%struct.ieee80211_regdomain* %251)
  %253 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %20, align 8
  store %struct.ieee80211_regdomain* %253, %struct.ieee80211_regdomain** %7, align 8
  br label %254

254:                                              ; preds = %250, %81, %64
  %255 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  ret %struct.ieee80211_regdomain* %255
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.ieee80211_regdomain* @ERR_PTR(i32) #1

declare dso_local i32 @IWL_DEBUG_DEV(%struct.device*, i32, i8*, i32) #1

declare dso_local %struct.ieee80211_regdomain* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ieee80211_regdomain*, i32, i32) #1

declare dso_local i64 @__le32_to_cpup(i32*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i32 @iwl_nvm_print_channel_flags(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @iwl_nvm_get_regdom_bw_flags(i32*, i32, i32, %struct.iwl_cfg*) #1

declare dso_local i8* @MHZ_TO_KHZ(i32) #1

declare dso_local i32 @DBI_TO_MBI(i32) #1

declare dso_local i32 @DBM_TO_MBM(i32) #1

declare dso_local i32 @reg_query_regdb_wmm(i32*, i32, %struct.ieee80211_reg_rule*) #1

declare dso_local %struct.ieee80211_regdomain* @kmemdup(%struct.ieee80211_regdomain*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
