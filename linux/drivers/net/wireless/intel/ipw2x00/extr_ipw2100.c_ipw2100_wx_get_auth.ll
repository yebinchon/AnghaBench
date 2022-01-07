; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.ipw2100_priv = type { %struct.libipw_device* }
%struct.libipw_device = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32)* }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't get TKIP countermeasures: crypt not set!\0A\00", align 1
@IEEE80211_CRYPTO_TKIP_COUNTERMEASURES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_get_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_get_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw2100_priv*, align 8
  %11 = alloca %struct.libipw_device*, align 8
  %12 = alloca %struct.lib80211_crypt_data*, align 8
  %13 = alloca %struct.iw_param*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %14)
  store %struct.ipw2100_priv* %15, %struct.ipw2100_priv** %10, align 8
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %17 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %16, i32 0, i32 0
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
  switch i32 %25, label %103 [
    i32 128, label %26
    i32 136, label %26
    i32 137, label %26
    i32 134, label %26
    i32 130, label %27
    i32 135, label %70
    i32 138, label %76
    i32 129, label %85
    i32 131, label %91
    i32 132, label %97
    i32 133, label %97
  ]

26:                                               ; preds = %4, %4, %4, %4
  br label %106

27:                                               ; preds = %4
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 0
  %30 = load %struct.libipw_device*, %struct.libipw_device** %29, align 8
  %31 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %32, align 8
  %34 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %35 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %34, i32 0, i32 0
  %36 = load %struct.libipw_device*, %struct.libipw_device** %35, align 8
  %37 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %33, i64 %39
  %41 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %40, align 8
  store %struct.lib80211_crypt_data* %41, %struct.lib80211_crypt_data** %12, align 8
  %42 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %43 = icmp ne %struct.lib80211_crypt_data* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %27
  %45 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %46 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = icmp ne i32 (i32)* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44, %27
  %52 = call i32 @IPW_DEBUG_WARNING(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %106

53:                                               ; preds = %44
  %54 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %55 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32 (i32)*, i32 (i32)** %57, align 8
  %59 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %12, align 8
  %60 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %58(i32 %61)
  %63 = load i32, i32* @IEEE80211_CRYPTO_TKIP_COUNTERMEASURES, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 0
  %68 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %69 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %106

70:                                               ; preds = %4
  %71 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %72 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %75 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %106

76:                                               ; preds = %4
  %77 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %10, align 8
  %78 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %77, i32 0, i32 0
  %79 = load %struct.libipw_device*, %struct.libipw_device** %78, align 8
  %80 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %84 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %106

85:                                               ; preds = %4
  %86 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %87 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %90 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %106

91:                                               ; preds = %4
  %92 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %93 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %96 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %106

97:                                               ; preds = %4, %4
  %98 = load %struct.libipw_device*, %struct.libipw_device** %11, align 8
  %99 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iw_param*, %struct.iw_param** %13, align 8
  %102 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %106

103:                                              ; preds = %4
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %107

106:                                              ; preds = %97, %91, %85, %76, %70, %53, %51, %26
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %103
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
