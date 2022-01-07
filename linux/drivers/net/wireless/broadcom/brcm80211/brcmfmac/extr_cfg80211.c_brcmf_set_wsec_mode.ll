; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_wsec_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_set_wsec_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i64 }
%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_cfg80211_profile = type { %struct.brcmf_cfg80211_security }
%struct.brcmf_cfg80211_security = type { i32, i32 }

@WEP_ENABLED = common dso_local global i32 0, align 4
@TKIP_ENABLED = common dso_local global i32 0, align 4
@AES_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid cipher pairwise (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid cipher group (%d)\0A\00", align 1
@CONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"pval (%d) gval (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wsec\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"error (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cfg80211_connect_params*)* @brcmf_set_wsec_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_set_wsec_mode(%struct.net_device* %0, %struct.cfg80211_connect_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cfg80211_connect_params*, align 8
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.brcmf_cfg80211_security*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cfg80211_connect_params* %1, %struct.cfg80211_connect_params** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %14)
  store %struct.brcmf_if* %15, %struct.brcmf_if** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.brcmf_cfg80211_profile* @ndev_to_prof(%struct.net_device* %16)
  store %struct.brcmf_cfg80211_profile* %17, %struct.brcmf_cfg80211_profile** %7, align 8
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %19 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %18, i32 0, i32 0
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  store %struct.brcmf_pub* %20, %struct.brcmf_pub** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %22 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  %27 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %41 [
    i32 128, label %33
    i32 129, label %33
    i32 130, label %35
    i32 131, label %37
    i32 132, label %39
  ]

33:                                               ; preds = %26, %26
  %34 = load i32, i32* @WEP_ENABLED, align 4
  store i32 %34, i32* %10, align 4
  br label %52

35:                                               ; preds = %26
  %36 = load i32, i32* @TKIP_ENABLED, align 4
  store i32 %36, i32* %10, align 4
  br label %52

37:                                               ; preds = %26
  %38 = load i32, i32* @AES_ENABLED, align 4
  store i32 %38, i32* %10, align 4
  br label %52

39:                                               ; preds = %26
  %40 = load i32, i32* @AES_ENABLED, align 4
  store i32 %40, i32* %10, align 4
  br label %52

41:                                               ; preds = %26
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %43 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %44 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bphy_err(%struct.brcmf_pub* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %140

52:                                               ; preds = %39, %37, %35, %33
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %55 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %72 [
    i32 128, label %64
    i32 129, label %64
    i32 130, label %66
    i32 131, label %68
    i32 132, label %70
  ]

64:                                               ; preds = %59, %59
  %65 = load i32, i32* @WEP_ENABLED, align 4
  store i32 %65, i32* %11, align 4
  br label %81

66:                                               ; preds = %59
  %67 = load i32, i32* @TKIP_ENABLED, align 4
  store i32 %67, i32* %11, align 4
  br label %81

68:                                               ; preds = %59
  %69 = load i32, i32* @AES_ENABLED, align 4
  store i32 %69, i32* %11, align 4
  br label %81

70:                                               ; preds = %59
  %71 = load i32, i32* @AES_ENABLED, align 4
  store i32 %71, i32* %11, align 4
  br label %81

72:                                               ; preds = %59
  %73 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %74 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %75 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bphy_err(%struct.brcmf_pub* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %140

81:                                               ; preds = %70, %68, %66, %64
  br label %82

82:                                               ; preds = %81, %53
  %83 = load i32, i32* @CONN, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @brcmf_dbg(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %88 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %91 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @brcmf_find_wpsie(i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %82
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %103 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @AES_ENABLED, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %106, %101, %98, %95, %82
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %12, align 4
  %112 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @bphy_err(%struct.brcmf_pub* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %3, align 4
  br label %140

122:                                              ; preds = %108
  %123 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %7, align 8
  %124 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %123, i32 0, i32 0
  store %struct.brcmf_cfg80211_security* %124, %struct.brcmf_cfg80211_security** %9, align 8
  %125 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %126 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %132 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %5, align 8
  %134 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.brcmf_cfg80211_security*, %struct.brcmf_cfg80211_security** %9, align 8
  %138 = getelementptr inbounds %struct.brcmf_cfg80211_security, %struct.brcmf_cfg80211_security* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %122, %117, %72, %41
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.brcmf_cfg80211_profile* @ndev_to_prof(%struct.net_device*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @brcmf_find_wpsie(i32, i32) #1

declare dso_local i32 @brcmf_fil_bsscfg_int_set(%struct.brcmf_if*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
