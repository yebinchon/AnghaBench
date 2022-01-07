; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_fill_new_bss_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_fill_new_bss_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.cfg80211_bss = type { i32, i32, i32, i32, i32, i64 }
%struct.mwifiex_bssdescriptor = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.mwifiex_bss_priv = type { i32, i32 }
%struct.cfg80211_bss_ies = type { i64, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" failed to alloc beacon_ie\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"info: InterpretIE: AP WEP enabled\0A\00", align 1
@MWIFIEX_802_11_PRIV_FILTER_8021X_WEP = common dso_local global i32 0, align 4
@MWIFIEX_802_11_PRIV_FILTER_ACCEPT_ALL = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SPECTRUM_MGMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_fill_new_bss_desc(%struct.mwifiex_private* %0, %struct.cfg80211_bss* %1, %struct.mwifiex_bssdescriptor* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.cfg80211_bss*, align 8
  %7 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mwifiex_bss_priv*, align 8
  %11 = alloca %struct.cfg80211_bss_ies*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %6, align 8
  store %struct.mwifiex_bssdescriptor* %2, %struct.mwifiex_bssdescriptor** %7, align 8
  %12 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %13 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.mwifiex_bss_priv*
  store %struct.mwifiex_bss_priv* %16, %struct.mwifiex_bss_priv** %10, align 8
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %19 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %20)
  store %struct.cfg80211_bss_ies* %21, %struct.cfg80211_bss_ies** %11, align 8
  %22 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %11, align 8
  %23 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %11, align 8
  %26 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call i32* @kmemdup(i32 %24, i64 %27, i32 %28)
  store i32* %29, i32** %8, align 8
  %30 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %11, align 8
  %31 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %11, align 8
  %34 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %37 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %3
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @mwifiex_dbg(i32 %44, i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %141

49:                                               ; preds = %3
  %50 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %51 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %54 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %62 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %65 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %64, i32 0, i32 9
  store i32* %63, i32** %65, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %68 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %70 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %73 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %75 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %78 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mwifiex_bss_priv*, %struct.mwifiex_bss_priv** %10, align 8
  %80 = getelementptr inbounds %struct.mwifiex_bss_priv, %struct.mwifiex_bss_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %83 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mwifiex_bss_priv*, %struct.mwifiex_bss_priv** %10, align 8
  %85 = getelementptr inbounds %struct.mwifiex_bss_priv, %struct.mwifiex_bss_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %88 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %90 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %49
  %96 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %97 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @INFO, align 4
  %100 = call i32 @mwifiex_dbg(i32 %98, i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @MWIFIEX_802_11_PRIV_FILTER_8021X_WEP, align 4
  %102 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %103 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  br label %108

104:                                              ; preds = %49
  %105 = load i32, i32* @MWIFIEX_802_11_PRIV_FILTER_ACCEPT_ALL, align 4
  %106 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %107 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %95
  %109 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %110 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %117 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %118 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  br label %123

119:                                              ; preds = %108
  %120 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %121 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %122 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %125 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %124, i32 0, i32 2
  store i32 1, i32* %125, align 4
  %126 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %127 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @WLAN_CAPABILITY_SPECTRUM_MGMT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %134 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %133, i32 0, i32 3
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %123
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %137 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %7, align 8
  %140 = call i32 @mwifiex_update_bss_desc_with_ie(i32 %138, %struct.mwifiex_bssdescriptor* %139)
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %135, %41
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32* @kmemdup(i32, i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mwifiex_update_bss_desc_with_ie(i32, %struct.mwifiex_bssdescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
