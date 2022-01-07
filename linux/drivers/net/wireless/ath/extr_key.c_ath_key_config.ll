; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_key.c_ath_key_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_key.c_ath_key_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32, i32* }
%struct.ieee80211_sta = type { i32* }
%struct.ieee80211_key_conf = type { i32, i32, i32*, i32, i32 }
%struct.ath_keyval = type { i32, i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ATH_CIPHER_CLR = common dso_local global i32 0, align 4
@ATH_CIPHER_WEP = common dso_local global i32 0, align 4
@ATH_CIPHER_TKIP = common dso_local global i32 0, align 4
@ATH_CIPHER_AES_CCM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_MIC_COMBINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_key_config(%struct.ath_common* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.ath_keyval, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = call i32 @memset(%struct.ath_keyval* %10, i32 0, i32 24)
  %22 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %23 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %37 [
    i32 0, label %25
    i32 128, label %28
    i32 129, label %28
    i32 130, label %31
    i32 131, label %34
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* @ATH_CIPHER_CLR, align 4
  %27 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %10, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  br label %40

28:                                               ; preds = %4, %4
  %29 = load i32, i32* @ATH_CIPHER_WEP, align 4
  %30 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  br label %40

31:                                               ; preds = %4
  %32 = load i32, i32* @ATH_CIPHER_TKIP, align 4
  %33 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %10, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  br label %40

34:                                               ; preds = %4
  %35 = load i32, i32* @ATH_CIPHER_AES_CCM, align 4
  %36 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %271

40:                                               ; preds = %34, %31, %28, %25
  %41 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %10, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %10, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32* %51, i32* %54, i32 %57)
  br label %59

59:                                               ; preds = %49, %40
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %110, label %66

66:                                               ; preds = %59
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %105 [
    i32 132, label %70
    i32 133, label %84
  ]

70:                                               ; preds = %66
  %71 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = call i32 @memcpy(i32* %20, i32* %73, i32 %74)
  %76 = getelementptr inbounds i32, i32* %20, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = or i32 %77, 1
  store i32 %78, i32* %76, align 16
  store i32* %20, i32** %11, align 8
  %79 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %80 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ath_reserve_key_cache_slot(%struct.ath_common* %79, i32 %82)
  store i32 %83, i32* %15, align 4
  br label %109

84:                                               ; preds = %66
  %85 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %86 = icmp ne %struct.ieee80211_sta* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  br label %109

91:                                               ; preds = %84
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @ETH_ALEN, align 4
  %96 = call i32 @memcpy(i32* %20, i32* %94, i32 %95)
  %97 = getelementptr inbounds i32, i32* %20, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = or i32 %98, 1
  store i32 %99, i32* %97, align 16
  store i32* %20, i32** %11, align 8
  %100 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %101 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %102 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ath_reserve_key_cache_slot(%struct.ath_common* %100, i32 %103)
  store i32 %104, i32* %15, align 4
  br label %109

105:                                              ; preds = %66
  %106 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %107 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %105, %91, %87, %70
  br label %161

110:                                              ; preds = %59
  %111 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %112 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %110
  %116 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %117 = icmp ne %struct.ieee80211_sta* %116, null
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i64 @WARN_ON(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* @EOPNOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %271

125:                                              ; preds = %115
  %126 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %127 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %11, align 8
  %129 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %130 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 132
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %135 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %15, align 4
  br label %140

137:                                              ; preds = %125
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %271

140:                                              ; preds = %133
  br label %160

141:                                              ; preds = %110
  %142 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %143 = icmp ne %struct.ieee80211_sta* %142, null
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i64 @WARN_ON(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* @EOPNOTSUPP, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %271

151:                                              ; preds = %141
  %152 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %11, align 8
  %155 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %156 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %157 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @ath_reserve_key_cache_slot(%struct.ath_common* %155, i32 %158)
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %151, %140
  br label %161

161:                                              ; preds = %160, %109
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @ENOSPC, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %271

167:                                              ; preds = %161
  %168 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %169 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 130
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %176 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %180 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 132
  %183 = zext i1 %182 to i32
  %184 = call i32 @ath_setkey_tkip(%struct.ath_common* %173, i32 %174, i32* %177, %struct.ath_keyval* %10, i32* %178, i32 %183)
  store i32 %184, i32* %14, align 4
  br label %190

185:                                              ; preds = %167
  %186 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load i32*, i32** %11, align 8
  %189 = call i32 @ath_hw_set_keycache_entry(%struct.ath_common* %186, i32 %187, %struct.ath_keyval* %10, i32* %188)
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %185, %172
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %271

196:                                              ; preds = %190
  %197 = load i32, i32* %15, align 4
  %198 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %199 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @set_bit(i32 %197, i32 %200)
  %202 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %203 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 131
  br i1 %205, label %206, label %212

206:                                              ; preds = %196
  %207 = load i32, i32* %15, align 4
  %208 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %209 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @set_bit(i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %206, %196
  %213 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %214 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 130
  br i1 %216, label %217, label %269

217:                                              ; preds = %212
  %218 = load i32, i32* %15, align 4
  %219 = add nsw i32 %218, 64
  %220 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %221 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @set_bit(i32 %219, i32 %222)
  %224 = load i32, i32* %15, align 4
  %225 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %226 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @set_bit(i32 %224, i32 %227)
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 64
  %231 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %232 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @set_bit(i32 %230, i32 %233)
  %235 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %236 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %268, label %241

241:                                              ; preds = %217
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %242, 32
  %244 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %245 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @set_bit(i32 %243, i32 %246)
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, 64
  %250 = add nsw i32 %249, 32
  %251 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %252 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @set_bit(i32 %250, i32 %253)
  %255 = load i32, i32* %15, align 4
  %256 = add nsw i32 %255, 32
  %257 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %258 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @set_bit(i32 %256, i32 %259)
  %261 = load i32, i32* %15, align 4
  %262 = add nsw i32 %261, 64
  %263 = add nsw i32 %262, 32
  %264 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %265 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @set_bit(i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %241, %217
  br label %269

269:                                              ; preds = %268, %212
  %270 = load i32, i32* %15, align 4
  store i32 %270, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %271

271:                                              ; preds = %269, %193, %164, %148, %137, %122, %37
  %272 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.ath_keyval*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ath_reserve_key_cache_slot(%struct.ath_common*, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @ath_setkey_tkip(%struct.ath_common*, i32, i32*, %struct.ath_keyval*, i32*, i32) #2

declare dso_local i32 @ath_hw_set_keycache_entry(%struct.ath_common*, i32, %struct.ath_keyval*, i32*) #2

declare dso_local i32 @set_bit(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
