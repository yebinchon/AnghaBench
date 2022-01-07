; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_join_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_join_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_ibss_params = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cfg80211_bss = type { i32 }

@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_DS_PARAMS = common dso_local global i32 0, align 4
@WLAN_EID_IBSS_PARAMS = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4
@LBS_DEB_CFG80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@CFG80211_BSS_FTYPE_UNKNOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LBS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, %struct.cfg80211_ibss_params*, i32*, i32)* @lbs_join_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_join_post(%struct.lbs_private* %0, %struct.cfg80211_ibss_params* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca %struct.cfg80211_ibss_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cfg80211_bss*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store %struct.cfg80211_ibss_params* %1, %struct.cfg80211_ibss_params** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %14 = add nsw i32 2, %13
  %15 = add nsw i32 %14, 2
  %16 = add nsw i32 %15, 4
  %17 = add nsw i32 %16, 2
  %18 = add nsw i32 %17, 1
  %19 = add nsw i32 %18, 2
  %20 = add nsw i32 %19, 2
  %21 = add nsw i32 %20, 2
  %22 = add nsw i32 %21, 8
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* @WLAN_EID_SSID, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %30 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %36 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32* %34, i32 %37, i32 %40)
  %42 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %43 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %11, align 8
  %48 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %11, align 8
  store i32 4, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %11, align 8
  store i32 130, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  store i32 132, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %11, align 8
  store i32 139, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %11, align 8
  store i32 150, i32* %59, align 4
  %61 = load i32, i32* @WLAN_EID_DS_PARAMS, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %11, align 8
  store i32 1, i32* %64, align 4
  %66 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %67 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32, i32* @WLAN_EID_IBSS_PARAMS, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %11, align 8
  store i32 2, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  store i32 0, i32* %79, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %11, align 8
  store i32 0, i32* %81, align 4
  %83 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %11, align 8
  store i32 8, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %11, align 8
  store i32 12, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %11, align 8
  store i32 18, i32* %90, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %11, align 8
  store i32 24, i32* %92, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %11, align 8
  store i32 36, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %11, align 8
  store i32 48, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %11, align 8
  store i32 72, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %11, align 8
  store i32 96, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %11, align 8
  store i32 108, i32* %102, align 4
  %104 = load i32, i32* @LBS_DEB_CFG80211, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = ptrtoint i32* %105 to i64
  %107 = ptrtoint i32* %25 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @lbs_deb_hex(i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %25, i32 %110)
  %112 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %113 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %118 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* @CFG80211_BSS_FTYPE_UNKNOWN, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %125 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = ptrtoint i32* %127 to i64
  %129 = ptrtoint i32* %25 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call %struct.cfg80211_bss* @cfg80211_inform_bss(i32 %116, %struct.TYPE_7__* %120, i32 %121, i32* %122, i32 0, i32 %123, i32 %126, i32* %25, i32 %132, i32 0, i32 %133)
  store %struct.cfg80211_bss* %134, %struct.cfg80211_bss** %12, align 8
  %135 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %136 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %135, i32 0, i32 3
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %12, align 8
  %141 = call i32 @cfg80211_put_bss(i32 %139, %struct.cfg80211_bss* %140)
  %142 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %143 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %147 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i32 @cfg80211_ibss_joined(i32 %144, i32* %145, %struct.TYPE_7__* %149, i32 %150)
  %152 = load i32, i32* @LBS_CONNECTED, align 4
  %153 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %154 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %156 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @netif_carrier_on(i32 %157)
  %159 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %160 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %4
  %164 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %165 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @netif_wake_queue(i32 %166)
  br label %168

168:                                              ; preds = %163, %4
  %169 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %169)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @lbs_deb_hex(i32, i8*, i32*, i32) #2

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(i32, %struct.TYPE_7__*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @cfg80211_put_bss(i32, %struct.cfg80211_bss*) #2

declare dso_local i32 @cfg80211_ibss_joined(i32, i32*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @netif_carrier_on(i32) #2

declare dso_local i32 @netif_wake_queue(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
