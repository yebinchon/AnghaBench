; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_wx.c_libipw_wx_set_encodeext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_wx.c_libipw_wx_set_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i64, i32 (%struct.net_device*, %struct.libipw_security*)*, %struct.TYPE_2__, i64, i64, i64, i32, %struct.net_device* }
%struct.libipw_security = type { i32, i32, i32, i32, i64*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32*, %struct.lib80211_crypto_ops* }
%struct.lib80211_crypto_ops = type { i64 (i32, i64, i32, i32*)*, i32* (i32)*, i32 }
%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32 }
%struct.iw_encode_ext = type { i32, i32, i64, i32, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"lib80211_crypt_wep\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"lib80211_crypt_tkip\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"lib80211_crypt_ccmp\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: unknown crypto alg %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: key setting failed\0A\00", align 1
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_ALG_WEP = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@SEC_ALG_TKIP = common dso_local global i32 0, align 4
@SEC_LEVEL_2 = common dso_local global i32 0, align 4
@SEC_ALG_CCMP = common dso_local global i32 0, align 4
@SEC_LEVEL_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_wx_set_encodeext(%struct.libipw_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.lib80211_crypto_ops*, align 8
  %20 = alloca %struct.lib80211_crypt_data**, align 8
  %21 = alloca %struct.libipw_security, align 8
  %22 = alloca %struct.lib80211_crypt_data*, align 8
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %23 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %24 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %23, i32 0, i32 7
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %10, align 8
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.iw_point*
  store %struct.iw_point* %27, %struct.iw_point** %11, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %29, %struct.iw_encode_ext** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = bitcast %struct.libipw_security* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 48, i1 false)
  %31 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @WEP_KEYS, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %463

48:                                               ; preds = %41
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %14, align 4
  br label %56

51:                                               ; preds = %4
  %52 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %53 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %58 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %65 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %67, i64 %69
  store %struct.lib80211_crypt_data** %70, %struct.lib80211_crypt_data*** %20, align 8
  store i32 1, i32* %16, align 4
  br label %100

71:                                               ; preds = %56
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %76 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 128
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %463

82:                                               ; preds = %74, %71
  %83 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %84 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IW_MODE_INFRA, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %90 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %92, i64 %94
  store %struct.lib80211_crypt_data** %95, %struct.lib80211_crypt_data*** %20, align 8
  br label %99

96:                                               ; preds = %82
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %463

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %63
  %101 = load i32, i32* @SEC_ENABLED, align 4
  %102 = load i32, i32* @SEC_ENCRYPT, align 4
  %103 = or i32 %101, %102
  %104 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 8
  %107 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %108 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %100
  %114 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %115 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %162

119:                                              ; preds = %113, %100
  %120 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %121 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %120, align 8
  %122 = icmp ne %struct.lib80211_crypt_data* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %125 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %124, i32 0, i32 2
  %126 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %127 = call i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_2__* %125, %struct.lib80211_crypt_data** %126)
  br label %128

128:                                              ; preds = %123, %119
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %145, %128
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @WEP_KEYS, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %129
  %134 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %135 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %137, i64 %139
  %141 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %140, align 8
  %142 = icmp ne %struct.lib80211_crypt_data* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %148

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %129

148:                                              ; preds = %143, %129
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @WEP_KEYS, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 1
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 2
  store i32 0, i32* %154, align 8
  %155 = load i32, i32* @SEC_LEVEL_0, align 4
  %156 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 5
  store i32 %155, i32* %156, align 8
  %157 = load i32, i32* @SEC_LEVEL, align 4
  %158 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %157
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %152, %148
  br label %450

162:                                              ; preds = %113
  %163 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 2
  store i32 1, i32* %164, align 8
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %169 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %188, label %187

172:                                              ; preds = %162
  %173 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %174 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %172
  %178 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %179 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %177
  %183 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %184 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %182, %167
  br label %333

188:                                              ; preds = %182, %177, %172, %167
  %189 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %190 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %195 [
    i32 128, label %192
    i32 129, label %193
    i32 130, label %194
  ]

192:                                              ; preds = %188
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %205

193:                                              ; preds = %188
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  br label %205

194:                                              ; preds = %188
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  br label %205

195:                                              ; preds = %188
  %196 = load %struct.net_device*, %struct.net_device** %10, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %200 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %198, i32 %201)
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %15, align 4
  br label %450

205:                                              ; preds = %194, %193, %192
  %206 = load i8*, i8** %17, align 8
  %207 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* %206)
  store %struct.lib80211_crypto_ops* %207, %struct.lib80211_crypto_ops** %19, align 8
  %208 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %209 = icmp eq %struct.lib80211_crypto_ops* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i8*, i8** %18, align 8
  %212 = call i32 @request_module(i8* %211)
  %213 = load i8*, i8** %17, align 8
  %214 = call %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8* %213)
  store %struct.lib80211_crypto_ops* %214, %struct.lib80211_crypto_ops** %19, align 8
  br label %215

215:                                              ; preds = %210, %205
  %216 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %217 = icmp eq %struct.lib80211_crypto_ops* %216, null
  br i1 %217, label %218, label %228

218:                                              ; preds = %215
  %219 = load %struct.net_device*, %struct.net_device** %10, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %223 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %221, i32 %224)
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %15, align 4
  br label %450

228:                                              ; preds = %215
  %229 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %230 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %229, align 8
  %231 = icmp eq %struct.lib80211_crypt_data* %230, null
  br i1 %231, label %239, label %232

232:                                              ; preds = %228
  %233 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %234 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %233, align 8
  %235 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %234, i32 0, i32 1
  %236 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %235, align 8
  %237 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %238 = icmp ne %struct.lib80211_crypto_ops* %236, %237
  br i1 %238, label %239, label %290

239:                                              ; preds = %232, %228
  %240 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %241 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %240, i32 0, i32 2
  %242 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %243 = call i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_2__* %241, %struct.lib80211_crypt_data** %242)
  %244 = load i32, i32* @GFP_KERNEL, align 4
  %245 = call %struct.lib80211_crypt_data* @kzalloc(i32 16, i32 %244)
  store %struct.lib80211_crypt_data* %245, %struct.lib80211_crypt_data** %22, align 8
  %246 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %247 = icmp eq %struct.lib80211_crypt_data* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %15, align 4
  br label %450

251:                                              ; preds = %239
  %252 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %19, align 8
  %253 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %254 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %253, i32 0, i32 1
  store %struct.lib80211_crypto_ops* %252, %struct.lib80211_crypto_ops** %254, align 8
  %255 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %256 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %255, i32 0, i32 1
  %257 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %256, align 8
  %258 = icmp ne %struct.lib80211_crypto_ops* %257, null
  br i1 %258, label %259, label %277

259:                                              ; preds = %251
  %260 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %261 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %260, i32 0, i32 1
  %262 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %261, align 8
  %263 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i64 @try_module_get(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %259
  %268 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %269 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %268, i32 0, i32 1
  %270 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %269, align 8
  %271 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %270, i32 0, i32 1
  %272 = load i32* (i32)*, i32* (i32)** %271, align 8
  %273 = load i32, i32* %14, align 4
  %274 = call i32* %272(i32 %273)
  %275 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %276 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %275, i32 0, i32 0
  store i32* %274, i32** %276, align 8
  br label %277

277:                                              ; preds = %267, %259, %251
  %278 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %279 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = icmp eq i32* %280, null
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %284 = call i32 @kfree(%struct.lib80211_crypt_data* %283)
  %285 = load i32, i32* @EINVAL, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %15, align 4
  br label %450

287:                                              ; preds = %277
  %288 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %289 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  store %struct.lib80211_crypt_data* %288, %struct.lib80211_crypt_data** %289, align 8
  br label %290

290:                                              ; preds = %287, %232
  %291 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %292 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = icmp sgt i64 %293, 0
  br i1 %294, label %295, label %332

295:                                              ; preds = %290
  %296 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %297 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %296, align 8
  %298 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %297, i32 0, i32 1
  %299 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %298, align 8
  %300 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %299, i32 0, i32 0
  %301 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %300, align 8
  %302 = icmp ne i64 (i32, i64, i32, i32*)* %301, null
  br i1 %302, label %303, label %332

303:                                              ; preds = %295
  %304 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %305 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %304, align 8
  %306 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %305, i32 0, i32 1
  %307 = load %struct.lib80211_crypto_ops*, %struct.lib80211_crypto_ops** %306, align 8
  %308 = getelementptr inbounds %struct.lib80211_crypto_ops, %struct.lib80211_crypto_ops* %307, i32 0, i32 0
  %309 = load i64 (i32, i64, i32, i32*)*, i64 (i32, i64, i32, i32*)** %308, align 8
  %310 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %311 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %314 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %317 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %20, align 8
  %320 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %319, align 8
  %321 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = call i64 %309(i32 %312, i64 %315, i32 %318, i32* %322)
  %324 = icmp slt i64 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %303
  %326 = load %struct.net_device*, %struct.net_device** %10, align 8
  %327 = getelementptr inbounds %struct.net_device, %struct.net_device* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i8*, i32, ...) @LIBIPW_DEBUG_WX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* @EINVAL, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %15, align 4
  br label %450

332:                                              ; preds = %303, %295, %290
  br label %333

333:                                              ; preds = %332, %187
  %334 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %335 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %351

340:                                              ; preds = %333
  %341 = load i32, i32* %14, align 4
  %342 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %343 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 0
  store i32 %341, i32* %344, align 8
  %345 = load i32, i32* %14, align 4
  %346 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 3
  store i32 %345, i32* %346, align 4
  %347 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %348 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = or i32 %349, %347
  store i32 %350, i32* %348, align 8
  br label %351

351:                                              ; preds = %340, %333
  %352 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %353 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %449

357:                                              ; preds = %351
  %358 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 7
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %14, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %365 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %368 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @memcpy(i32 %363, i32 %366, i64 %369)
  %371 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %372 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 4
  %375 = load i64*, i64** %374, align 8
  %376 = load i32, i32* %14, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  store i64 %373, i64* %378, align 8
  %379 = load i32, i32* %14, align 4
  %380 = shl i32 1, %379
  %381 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = or i32 %382, %380
  store i32 %383, i32* %381, align 8
  %384 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %385 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = icmp eq i32 %386, 128
  br i1 %387, label %388, label %401

388:                                              ; preds = %357
  %389 = load i32, i32* @SEC_ALG_WEP, align 4
  %390 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 6
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %14, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %389, i32* %394, align 4
  %395 = load i32, i32* @SEC_LEVEL, align 4
  %396 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = or i32 %397, %395
  store i32 %398, i32* %396, align 8
  %399 = load i32, i32* @SEC_LEVEL_1, align 4
  %400 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 5
  store i32 %399, i32* %400, align 8
  br label %439

401:                                              ; preds = %357
  %402 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %403 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, 129
  br i1 %405, label %406, label %419

406:                                              ; preds = %401
  %407 = load i32, i32* @SEC_ALG_TKIP, align 4
  %408 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 6
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %14, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %407, i32* %412, align 4
  %413 = load i32, i32* @SEC_LEVEL, align 4
  %414 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = or i32 %415, %413
  store i32 %416, i32* %414, align 8
  %417 = load i32, i32* @SEC_LEVEL_2, align 4
  %418 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 5
  store i32 %417, i32* %418, align 8
  br label %438

419:                                              ; preds = %401
  %420 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %421 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = icmp eq i32 %422, 130
  br i1 %423, label %424, label %437

424:                                              ; preds = %419
  %425 = load i32, i32* @SEC_ALG_CCMP, align 4
  %426 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 6
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %14, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  store i32 %425, i32* %430, align 4
  %431 = load i32, i32* @SEC_LEVEL, align 4
  %432 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = or i32 %433, %431
  store i32 %434, i32* %432, align 8
  %435 = load i32, i32* @SEC_LEVEL_3, align 4
  %436 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 5
  store i32 %435, i32* %436, align 8
  br label %437

437:                                              ; preds = %424, %419
  br label %438

438:                                              ; preds = %437, %406
  br label %439

439:                                              ; preds = %438, %388
  %440 = load i32, i32* %16, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %439
  %443 = load i32, i32* @SEC_LEVEL, align 4
  %444 = xor i32 %443, -1
  %445 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = and i32 %446, %444
  store i32 %447, i32* %445, align 8
  br label %448

448:                                              ; preds = %442, %439
  br label %449

449:                                              ; preds = %448, %351
  br label %450

450:                                              ; preds = %449, %325, %282, %248, %218, %195, %161
  %451 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %452 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %451, i32 0, i32 1
  %453 = load i32 (%struct.net_device*, %struct.libipw_security*)*, i32 (%struct.net_device*, %struct.libipw_security*)** %452, align 8
  %454 = icmp ne i32 (%struct.net_device*, %struct.libipw_security*)* %453, null
  br i1 %454, label %455, label %461

455:                                              ; preds = %450
  %456 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %457 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %456, i32 0, i32 1
  %458 = load i32 (%struct.net_device*, %struct.libipw_security*)*, i32 (%struct.net_device*, %struct.libipw_security*)** %457, align 8
  %459 = load %struct.net_device*, %struct.net_device** %10, align 8
  %460 = call i32 %458(%struct.net_device* %459, %struct.libipw_security* %21)
  br label %461

461:                                              ; preds = %455, %450
  %462 = load i32, i32* %15, align 4
  store i32 %462, i32* %5, align 4
  br label %463

463:                                              ; preds = %461, %96, %79, %45
  %464 = load i32, i32* %5, align 4
  ret i32 %464
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lib80211_crypt_delayed_deinit(%struct.TYPE_2__*, %struct.lib80211_crypt_data**) #2

declare dso_local i32 @LIBIPW_DEBUG_WX(i8*, i32, ...) #2

declare dso_local %struct.lib80211_crypto_ops* @lib80211_get_crypto_ops(i8*) #2

declare dso_local i32 @request_module(i8*) #2

declare dso_local %struct.lib80211_crypt_data* @kzalloc(i32, i32) #2

declare dso_local i64 @try_module_get(i32) #2

declare dso_local i32 @kfree(%struct.lib80211_crypt_data*) #2

declare dso_local i32 @memcpy(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
