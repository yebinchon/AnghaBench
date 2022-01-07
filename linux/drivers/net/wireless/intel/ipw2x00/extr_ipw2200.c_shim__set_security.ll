; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_shim__set_security.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_shim__set_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.libipw_security = type { i32, i64*, i64, i64, i64, i32, i32, i32*, i32* }
%struct.ipw_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i32, i64, i64, i64, i32, i32, i32*, i32* }

@STATUS_SECURITY_UPDATED = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i64 0, align 8
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@WLAN_AUTH_SHARED_KEY = common dso_local global i64 0, align 8
@CAP_SHARED_KEY = common dso_local global i32 0, align 4
@SEC_ENABLED = common dso_local global i32 0, align 4
@CAP_PRIVACY_ON = common dso_local global i32 0, align 4
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.libipw_security*)* @shim__set_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shim__set_security(%struct.net_device* %0, %struct.libipw_security* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.libipw_security*, align 8
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.libipw_security* %1, %struct.libipw_security** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %7)
  store %struct.ipw_priv* %8, %struct.ipw_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %132, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %135

12:                                               ; preds = %9
  %13 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %14 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %113

20:                                               ; preds = %12
  %21 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %22 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %21, i32 0, i32 8
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %27, i32* %36, align 4
  %37 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %38 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %43, i64* %52, align 8
  %53 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %54 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %20
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %66 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %64
  store i32 %71, i32* %69, align 8
  br label %107

72:                                               ; preds = %20
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %84 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %91 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @memcpy(i32 %82, i32 %89, i64 %96)
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 1, %98
  %100 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %101 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %99
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %72, %61
  %108 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %109 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %110 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %131

113:                                              ; preds = %12
  %114 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %115 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SEC_LEVEL_1, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = shl i32 1, %120
  %122 = xor i32 %121, -1
  %123 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %124 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %122
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %119, %113
  br label %131

131:                                              ; preds = %130, %107
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %9

135:                                              ; preds = %9
  %136 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %137 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %135
  %143 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %144 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %147 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %146, i32 0, i32 2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 6
  store i32 %145, i32* %150, align 4
  %151 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %152 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %153 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %152, i32 0, i32 2
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %151
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %160 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %161 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %174

164:                                              ; preds = %135
  %165 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %168 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %166
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %164, %142
  %175 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %176 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SEC_AUTH_MODE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %233

181:                                              ; preds = %174
  %182 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %183 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %182, i32 0, i32 2
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %189 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  br i1 %191, label %192, label %233

192:                                              ; preds = %181
  %193 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %194 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %197 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %196, i32 0, i32 2
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  store i64 %195, i64* %200, align 8
  %201 = load i32, i32* @SEC_AUTH_MODE, align 4
  %202 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %203 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %202, i32 0, i32 2
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %201
  store i32 %208, i32* %206, align 8
  %209 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %210 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @WLAN_AUTH_SHARED_KEY, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %192
  %215 = load i32, i32* @CAP_SHARED_KEY, align 4
  %216 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %217 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %227

220:                                              ; preds = %192
  %221 = load i32, i32* @CAP_SHARED_KEY, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %224 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %220, %214
  %228 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %229 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %230 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %181, %174
  %234 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %235 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @SEC_ENABLED, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %291

240:                                              ; preds = %233
  %241 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %242 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %241, i32 0, i32 2
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %248 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %246, %249
  br i1 %250, label %251, label %291

251:                                              ; preds = %240
  %252 = load i32, i32* @SEC_ENABLED, align 4
  %253 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %254 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %253, i32 0, i32 2
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %252
  store i32 %259, i32* %257, align 8
  %260 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %261 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %264 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %263, i32 0, i32 2
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  store i64 %262, i64* %267, align 8
  %268 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %269 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %270 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  %273 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %274 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %251
  %278 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %279 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %280 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %290

283:                                              ; preds = %251
  %284 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %285 = xor i32 %284, -1
  %286 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %287 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %283, %277
  br label %291

291:                                              ; preds = %290, %240, %233
  %292 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %293 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @SEC_ENCRYPT, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %291
  %299 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %300 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %303 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %302, i32 0, i32 2
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 5
  store i32 %301, i32* %306, align 8
  br label %307

307:                                              ; preds = %298, %291
  %308 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %309 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @SEC_LEVEL, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %347

314:                                              ; preds = %307
  %315 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %316 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %315, i32 0, i32 2
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %322 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %320, %323
  br i1 %324, label %325, label %347

325:                                              ; preds = %314
  %326 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %327 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %330 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %329, i32 0, i32 2
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 4
  store i64 %328, i64* %333, align 8
  %334 = load i32, i32* @SEC_LEVEL, align 4
  %335 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %336 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %335, i32 0, i32 2
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %334
  store i32 %341, i32* %339, align 8
  %342 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %343 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %344 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %325, %314, %307
  %348 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %349 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %348, i32 0, i32 2
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %364, label %354

354:                                              ; preds = %347
  %355 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %356 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @SEC_ENCRYPT, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %354
  %362 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %363 = call i32 @ipw_set_hwcrypto_keys(%struct.ipw_priv* %362)
  br label %364

364:                                              ; preds = %361, %354, %347
  ret void
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ipw_set_hwcrypto_keys(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
