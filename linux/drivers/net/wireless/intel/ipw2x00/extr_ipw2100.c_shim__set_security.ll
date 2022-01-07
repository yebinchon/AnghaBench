; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_shim__set_security.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_shim__set_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.libipw_security = type { i32, i64*, i64, i64, i64, i64, i32, i32* }
%struct.ipw2100_priv = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i32, i64, i64, i64, i64, i32, i32* }

@STATUS_INITIALIZED = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i64 0, align 8
@STATUS_SECURITY_UPDATED = common dso_local global i32 0, align 4
@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@SEC_AUTH_MODE = common dso_local global i32 0, align 4
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Security flags: %c %c%c%c%c %c%c%c%c\0A\00", align 1
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.libipw_security*)* @shim__set_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shim__set_security(%struct.net_device* %0, %struct.libipw_security* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.libipw_security*, align 8
  %5 = alloca %struct.ipw2100_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.libipw_security* %1, %struct.libipw_security** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %8)
  store %struct.ipw2100_priv* %9, %struct.ipw2100_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @STATUS_INITIALIZED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %420

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %128, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %131

24:                                               ; preds = %21
  %25 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %26 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %127

32:                                               ; preds = %24
  %33 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %34 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %39, i64* %48, align 8
  %49 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %50 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %32
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %62 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %60
  store i32 %67, i32* %65, align 8
  br label %94

68:                                               ; preds = %32
  %69 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %80 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %79, i32 0, i32 7
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %87 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @memcpy(i32 %78, i32 %85, i64 %92)
  br label %94

94:                                               ; preds = %68, %57
  %95 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %96 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SEC_LEVEL_1, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = shl i32 1, %101
  %103 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %104 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %102
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %111 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %112 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %126

115:                                              ; preds = %94
  %116 = load i32, i32* %6, align 4
  %117 = shl i32 1, %116
  %118 = xor i32 %117, -1
  %119 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %120 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %118
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %115, %100
  br label %127

127:                                              ; preds = %126, %24
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %21

131:                                              ; preds = %21
  %132 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %133 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %171

138:                                              ; preds = %131
  %139 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %140 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %146 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %138
  %150 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %151 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %154 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %153, i32 0, i32 2
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i64 %152, i64* %157, align 8
  %158 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %159 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %160 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %159, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %158
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %167 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %168 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %149, %138, %131
  %172 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %173 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @SEC_AUTH_MODE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %211

178:                                              ; preds = %171
  %179 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %180 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %179, i32 0, i32 2
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %186 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %184, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %178
  %190 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %191 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %194 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %193, i32 0, i32 2
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  store i64 %192, i64* %197, align 8
  %198 = load i32, i32* @SEC_AUTH_MODE, align 4
  %199 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %200 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %199, i32 0, i32 2
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %198
  store i32 %205, i32* %203, align 8
  %206 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %207 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %208 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %189, %178, %171
  %212 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %213 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SEC_ENABLED, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %251

218:                                              ; preds = %211
  %219 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %220 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %219, i32 0, i32 2
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %226 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %224, %227
  br i1 %228, label %229, label %251

229:                                              ; preds = %218
  %230 = load i32, i32* @SEC_ENABLED, align 4
  %231 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %232 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %231, i32 0, i32 2
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %230
  store i32 %237, i32* %235, align 8
  %238 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %239 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %242 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %241, i32 0, i32 2
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 4
  store i64 %240, i64* %245, align 8
  %246 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %247 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %248 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  store i32 1, i32* %7, align 4
  br label %251

251:                                              ; preds = %229, %218, %211
  %252 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %253 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @SEC_ENCRYPT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %251
  %259 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %260 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %263 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %262, i32 0, i32 2
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 6
  store i32 %261, i32* %266, align 8
  br label %267

267:                                              ; preds = %258, %251
  %268 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %269 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @SEC_LEVEL, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %307

274:                                              ; preds = %267
  %275 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %276 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %275, i32 0, i32 2
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 5
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %282 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %280, %283
  br i1 %284, label %285, label %307

285:                                              ; preds = %274
  %286 = load %struct.libipw_security*, %struct.libipw_security** %4, align 8
  %287 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %290 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %289, i32 0, i32 2
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 5
  store i64 %288, i64* %293, align 8
  %294 = load i32, i32* @SEC_LEVEL, align 4
  %295 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %296 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %295, i32 0, i32 2
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %294
  store i32 %301, i32* %299, align 8
  %302 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %303 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %304 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %285, %274, %267
  %308 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %309 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %308, i32 0, i32 2
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = and i32 %313, 256
  %315 = icmp ne i32 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i32 49, i32 48
  %318 = trunc i32 %317 to i8
  %319 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %320 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %319, i32 0, i32 2
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = and i32 %324, 128
  %326 = icmp ne i32 %325, 0
  %327 = zext i1 %326 to i64
  %328 = select i1 %326, i32 49, i32 48
  %329 = trunc i32 %328 to i8
  %330 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %331 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %330, i32 0, i32 2
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = and i32 %335, 64
  %337 = icmp ne i32 %336, 0
  %338 = zext i1 %337 to i64
  %339 = select i1 %337, i32 49, i32 48
  %340 = trunc i32 %339 to i8
  %341 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %342 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %341, i32 0, i32 2
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, 32
  %348 = icmp ne i32 %347, 0
  %349 = zext i1 %348 to i64
  %350 = select i1 %348, i32 49, i32 48
  %351 = trunc i32 %350 to i8
  %352 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %353 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %352, i32 0, i32 2
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = and i32 %357, 16
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i32 49, i32 48
  %362 = trunc i32 %361 to i8
  %363 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %364 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %363, i32 0, i32 2
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = and i32 %368, 8
  %370 = icmp ne i32 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i32 49, i32 48
  %373 = trunc i32 %372 to i8
  %374 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %375 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %374, i32 0, i32 2
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = and i32 %379, 4
  %381 = icmp ne i32 %380, 0
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 49, i32 48
  %384 = trunc i32 %383 to i8
  %385 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %386 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %385, i32 0, i32 2
  %387 = load %struct.TYPE_3__*, %struct.TYPE_3__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = and i32 %390, 2
  %392 = icmp ne i32 %391, 0
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i32 49, i32 48
  %395 = trunc i32 %394 to i8
  %396 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %397 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %396, i32 0, i32 2
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, 1
  %403 = icmp ne i32 %402, 0
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i32 49, i32 48
  %406 = trunc i32 %405 to i8
  %407 = call i32 @IPW_DEBUG_WEP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 signext %318, i8 signext %329, i8 signext %340, i8 signext %351, i8 signext %362, i8 signext %373, i8 signext %384, i8 signext %395, i8 signext %406)
  %408 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %409 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %412 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %413 = or i32 %411, %412
  %414 = and i32 %410, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %419, label %416

416:                                              ; preds = %307
  %417 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %418 = call i32 @ipw2100_configure_security(%struct.ipw2100_priv* %417, i32 0)
  br label %419

419:                                              ; preds = %416, %307
  br label %420

420:                                              ; preds = %419, %19
  %421 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %422 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %421, i32 0, i32 1
  %423 = call i32 @mutex_unlock(i32* %422)
  ret void
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @IPW_DEBUG_WEP(i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ipw2100_configure_security(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
