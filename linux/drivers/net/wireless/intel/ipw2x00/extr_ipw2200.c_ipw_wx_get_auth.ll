; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_get_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.ipw_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32)* }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_CRYPTO_TKIP_COUNTERMEASURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_get_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_get_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca %struct.lib80211_crypt_data*, align 8
  %13 = alloca %struct.iw_param*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %14)
  store %struct.ipw_priv* %15, %struct.ipw_priv** %10, align 8
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 0
  %18 = load %struct.libipw_device*, %struct.libipw_device** %17, align 8
  store %struct.libipw_device* %18, %struct.libipw_device** %11, align 8
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.iw_param*
  store %struct.iw_param* %20, %struct.iw_param** %13, align 8
  %21 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %22 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IW_AUTH_INDEX, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %102 [
    i32 128, label %26
    i32 136, label %26
    i32 137, label %26
    i32 134, label %26
    i32 130, label %29
    i32 135, label %71
    i32 138, label %77
    i32 129, label %84
    i32 131, label %90
    i32 132, label %96
    i32 133, label %96
  ]

26:                                               ; preds = %4, %4, %4, %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %106

29:                                               ; preds = %4
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 0
  %32 = load %struct.libipw_device*, %struct.libipw_device** %31, align 8
  %33 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %34, align 8
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %37 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %36, i32 0, i32 0
  %38 = load %struct.libipw_device*, %struct.libipw_device** %37, align 8
  %39 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %35, i64 %41
  %43 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %42, align 8
  store %struct.lib80211_crypt_data* %43, %struct.lib80211_crypt_data** %12, align 8
  %44 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %45 = icmp ne %struct.lib80211_crypt_data* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %29
  %47 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %48 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = icmp ne i32 (i32)* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46, %29
  br label %105

54:                                               ; preds = %46
  %55 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %56 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %61 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %59(i32 %62)
  %64 = load i32, i32* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %70 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %105

71:                                               ; preds = %4
  %72 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %73 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %76 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %105

77:                                               ; preds = %4
  %78 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %79 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %83 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %105

84:                                               ; preds = %4
  %85 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %86 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %89 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %105

90:                                               ; preds = %4
  %91 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %92 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %95 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %105

96:                                               ; preds = %4, %4
  %97 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %98 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %101 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %105

102:                                              ; preds = %4
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %106

105:                                              ; preds = %96, %90, %84, %77, %71, %54, %53
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %102, %26
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
