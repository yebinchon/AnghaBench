; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i64, i32 }
%struct.ipw_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i32, i32, i32, i32 (i32, %struct.libipw_security*)*, i32, %struct.TYPE_3__ }
%struct.libipw_security = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (i32)*, i32 (i64, i32)* }

@IW_AUTH_INDEX = common dso_local global i64 0, align 8
@IEEE80211_CRYPTO_TKIP_COUNTERMEASURES = common dso_local global i64 0, align 8
@SEC_ENABLED = common dso_local global i32 0, align 4
@SEC_LEVEL = common dso_local global i32 0, align 4
@SEC_LEVEL_0 = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca %struct.iw_param*, align 8
  %13 = alloca %struct.lib80211_crypt_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.libipw_security, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %17)
  store %struct.ipw_priv* %18, %struct.ipw_priv** %10, align 8
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 0
  %21 = load %struct.libipw_device*, %struct.libipw_device** %20, align 8
  store %struct.libipw_device* %21, %struct.libipw_device** %11, align 8
  %22 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %23 = bitcast %union.iwreq_data* %22 to %struct.iw_param*
  store %struct.iw_param* %23, %struct.iw_param** %12, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IW_AUTH_INDEX, align 8
  %28 = and i64 %26, %27
  switch i64 %28, label %190 [
    i64 128, label %29
    i64 135, label %30
    i64 136, label %37
    i64 133, label %44
    i64 130, label %45
    i64 134, label %111
    i64 137, label %164
    i64 129, label %170
    i64 131, label %178
    i64 132, label %184
  ]

29:                                               ; preds = %4
  br label %193

30:                                               ; preds = %4
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %32 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %33 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wext_cipher2level(i32 %34)
  %36 = call i32 @ipw_set_hw_decrypt_unicast(%struct.ipw_priv* %31, i32 %35)
  br label %193

37:                                               ; preds = %4
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %39 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %40 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wext_cipher2level(i32 %41)
  %43 = call i32 @ipw_set_hw_decrypt_multicast(%struct.ipw_priv* %38, i32 %42)
  br label %193

44:                                               ; preds = %4
  br label %193

45:                                               ; preds = %4
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 0
  %48 = load %struct.libipw_device*, %struct.libipw_device** %47, align 8
  %49 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %50, align 8
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 0
  %54 = load %struct.libipw_device*, %struct.libipw_device** %53, align 8
  %55 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %51, i64 %57
  %59 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %58, align 8
  store %struct.lib80211_crypt_data* %59, %struct.lib80211_crypt_data** %13, align 8
  %60 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %61 = icmp ne %struct.lib80211_crypt_data* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %45
  %63 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %64 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32 (i64, i32)*, i32 (i64, i32)** %66, align 8
  %68 = icmp ne i32 (i64, i32)* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %71 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64 (i32)*, i64 (i32)** %73, align 8
  %75 = icmp ne i64 (i32)* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69, %62, %45
  br label %193

77:                                               ; preds = %69
  %78 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %79 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64 (i32)*, i64 (i32)** %81, align 8
  %83 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %84 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 %82(i32 %85)
  store i64 %86, i64* %14, align 8
  %87 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %88 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load i64, i64* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 8
  %93 = load i64, i64* %14, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %14, align 8
  br label %100

95:                                               ; preds = %77
  %96 = load i64, i64* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 8
  %97 = xor i64 %96, -1
  %98 = load i64, i64* %14, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %14, align 8
  br label %100

100:                                              ; preds = %95, %91
  %101 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %102 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32 (i64, i32)*, i32 (i64, i32)** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %13, align 8
  %108 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %105(i64 %106, i32 %109)
  br label %193

111:                                              ; preds = %4
  %112 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 0
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 1
  %114 = load i32, i32* @SEC_ENABLED, align 4
  store i32 %114, i32* %113, align 4
  %115 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 2
  %116 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %117 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %115, align 4
  %119 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %120 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %123 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %122, i32 0, i32 0
  %124 = load %struct.libipw_device*, %struct.libipw_device** %123, align 8
  %125 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %124, i32 0, i32 4
  store i32 %121, i32* %125, align 8
  %126 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %127 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %111
  %131 = load i32, i32* @SEC_LEVEL, align 4
  %132 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @SEC_LEVEL_0, align 4
  %136 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  br label %144

137:                                              ; preds = %111
  %138 = load i32, i32* @SEC_LEVEL, align 4
  %139 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* @SEC_LEVEL_1, align 4
  %143 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %16, i32 0, i32 0
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %137, %130
  %145 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %146 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %145, i32 0, i32 0
  %147 = load %struct.libipw_device*, %struct.libipw_device** %146, align 8
  %148 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %147, i32 0, i32 3
  %149 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %148, align 8
  %150 = icmp ne i32 (i32, %struct.libipw_security*)* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %144
  %152 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %153 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %152, i32 0, i32 0
  %154 = load %struct.libipw_device*, %struct.libipw_device** %153, align 8
  %155 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %154, i32 0, i32 3
  %156 = load i32 (i32, %struct.libipw_security*)*, i32 (i32, %struct.libipw_security*)** %155, align 8
  %157 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %158 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %157, i32 0, i32 0
  %159 = load %struct.libipw_device*, %struct.libipw_device** %158, align 8
  %160 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %156(i32 %161, %struct.libipw_security* %16)
  br label %163

163:                                              ; preds = %151, %144
  br label %193

164:                                              ; preds = %4
  %165 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %166 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %167 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ipw_wpa_set_auth_algs(%struct.ipw_priv* %165, i32 %168)
  store i32 %169, i32* %15, align 4
  br label %193

170:                                              ; preds = %4
  %171 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %172 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %173 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ipw_wpa_enable(%struct.ipw_priv* %171, i32 %174)
  store i32 %175, i32* %15, align 4
  %176 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %177 = call i32 @ipw_disassociate(%struct.ipw_priv* %176)
  br label %193

178:                                              ; preds = %4
  %179 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %180 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %183 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  br label %193

184:                                              ; preds = %4
  %185 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %186 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %189 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  br label %193

190:                                              ; preds = %4
  %191 = load i32, i32* @EOPNOTSUPP, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %5, align 4
  br label %195

193:                                              ; preds = %184, %178, %170, %164, %163, %100, %76, %44, %37, %30, %29
  %194 = load i32, i32* %15, align 4
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %193, %190
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @ipw_set_hw_decrypt_unicast(%struct.ipw_priv*, i32) #1

declare dso_local i32 @wext_cipher2level(i32) #1

declare dso_local i32 @ipw_set_hw_decrypt_multicast(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_wpa_set_auth_algs(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_wpa_enable(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
