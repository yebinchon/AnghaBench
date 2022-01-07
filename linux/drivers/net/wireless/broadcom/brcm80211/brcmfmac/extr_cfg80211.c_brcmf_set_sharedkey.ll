; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_sharedkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_sharedkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_cfg80211_profile = type { %struct.brcmf_cfg80211_security }
%struct.brcmf_cfg80211_security = type { i32, i32, i64 }
%struct.brcmf_wsec_key = type { i32, i32, i32, i8*, i32 }

@CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"key len (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"wpa_versions 0x%x cipher_pairwise 0x%x\0A\00", align 1
@NL80211_WPA_VERSION_1 = common dso_local global i32 0, align 4
@NL80211_WPA_VERSION_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Too long key length (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BRCMF_PRIMARY_KEY = common dso_local global i32 0, align 4
@CRYPTO_ALGO_WEP1 = common dso_local global i32 0, align 4
@CRYPTO_ALGO_WEP128 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid algorithm (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"key length (%d) key index (%d) algo (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"key \22%s\22\0A\00", align 1
@NL80211_AUTHTYPE_SHARED_KEY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"set auth_type to shared key\0A\00", align 1
@WL_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"set auth failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cfg80211_connect_params*)* @brcmf_set_sharedkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_set_sharedkey(%struct.net_device* %0, %struct.cfg80211_connect_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_connect_params*, align 8
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %9 = alloca %struct.brcmf_cfg80211_security*, align 8
  %10 = alloca %struct.brcmf_wsec_key, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %13)
  store %struct.brcmf_if* %14, %struct.brcmf_if** %6, align 8
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %16 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %15, i32 0, i32 0
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %16, align 8
  store %struct.brcmf_pub* %17, %struct.brcmf_pub** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.brcmf_cfg80211_profile* @ndev_to_prof(%struct.net_device* %18)
  store %struct.brcmf_cfg80211_profile* %19, %struct.brcmf_cfg80211_profile** %8, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @CONN, align 4
  %21 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %22 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %26 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %153

30:                                               ; preds = %2
  %31 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %8, align 8
  %32 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %31, i32 0, i32 0
  store %struct.brcmf_cfg80211_security* %32, %struct.brcmf_cfg80211_security** %9, align 8
  %33 = load i32, i32* @CONN, align 4
  %34 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %35 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %38 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NL80211_WPA_VERSION_1, align 4
  %45 = load i32, i32* @NL80211_WPA_VERSION_2, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %153

50:                                               ; preds = %30
  %51 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %52 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 129
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %153

57:                                               ; preds = %50
  %58 = call i32 @memset(%struct.brcmf_wsec_key* %10, i32 0, i32 32)
  %59 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %60 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = ptrtoint i8* %62 to i32
  %64 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 3
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %72, 4
  br i1 %73, label %74, label %81

74:                                               ; preds = %57
  %75 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %76 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bphy_err(%struct.brcmf_pub* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %153

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %85 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memcpy(i32 %83, i32 %86, i32 %88)
  %90 = load i32, i32* @BRCMF_PRIMARY_KEY, align 4
  %91 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 4
  store i32 %90, i32* %91, align 8
  %92 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %93 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %101 [
    i32 128, label %95
    i32 129, label %98
  ]

95:                                               ; preds = %81
  %96 = load i32, i32* @CRYPTO_ALGO_WEP1, align 4
  %97 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  br label %112

98:                                               ; preds = %81
  %99 = load i32, i32* @CRYPTO_ALGO_WEP128, align 4
  %100 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  br label %112

101:                                              ; preds = %81
  %102 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %103 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %104 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bphy_err(%struct.brcmf_pub* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %153

112:                                              ; preds = %98, %95
  %113 = load i32, i32* @CONN, align 4
  %114 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %115, i8* %117, i32 %119)
  %121 = load i32, i32* @CONN, align 4
  %122 = getelementptr inbounds %struct.brcmf_wsec_key, %struct.brcmf_wsec_key* %10, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %126 = call i32 @send_key_to_dongle(%struct.brcmf_if* %125, %struct.brcmf_wsec_key* %10)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %112
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %3, align 4
  br label %153

131:                                              ; preds = %112
  %132 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %133 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @NL80211_AUTHTYPE_SHARED_KEY, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load i32, i32* @CONN, align 4
  %139 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @WL_AUTH_SHARED_KEY, align 4
  store i32 %140, i32* %11, align 4
  %141 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @bphy_err(%struct.brcmf_pub* %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146, %137
  br label %151

151:                                              ; preds = %150, %131
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %129, %101, %74, %56, %49, %29
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.brcmf_cfg80211_profile* @ndev_to_prof(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.brcmf_wsec_key*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @send_key_to_dongle(%struct.brcmf_if*, %struct.brcmf_wsec_key*) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
