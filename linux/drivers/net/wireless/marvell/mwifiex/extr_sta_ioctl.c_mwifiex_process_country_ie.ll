; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_process_country_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_process_country_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.mwifiex_802_11d_domain_reg }
%struct.mwifiex_802_11d_domain_reg = type { i32*, i32, i64 }
%struct.cfg80211_bss = type { i32 }

@WLAN_EID_COUNTRY = common dso_local global i32 0, align 4
@IEEE80211_COUNTRY_IE_MIN_LEN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"11D: skip setting domain info in FW\0A\00", align 1
@IEEE80211_COUNTRY_STRING_LEN = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11D_DOMAIN_INFO = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"11D: setting domain info in FW fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cfg80211_bss*)* @mwifiex_process_country_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_process_country_ie(%struct.mwifiex_private* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_802_11d_domain_reg*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.mwifiex_802_11d_domain_reg* %12, %struct.mwifiex_802_11d_domain_reg** %8, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %15 = load i32, i32* @WLAN_EID_COUNTRY, align 4
  %16 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %109

21:                                               ; preds = %2
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IEEE80211_COUNTRY_IE_MIN_LEN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %109

30:                                               ; preds = %21
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = call i32 @strncmp(i32* %35, i32* %37, i32 2)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %30
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* @INFO, align 4
  %46 = call i32 @mwifiex_dbg(%struct.TYPE_2__* %44, i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

47:                                               ; preds = %30
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %49 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = call i32 @memcpy(i32* %52, i32* %54, i32 2)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %8, align 8
  %60 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %8, align 8
  %67 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 32, i32* %73, align 4
  %74 = load i32, i32* @IEEE80211_COUNTRY_STRING_LEN, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %8, align 8
  %82 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mwifiex_802_11d_domain_reg*, %struct.mwifiex_802_11d_domain_reg** %8, align 8
  %84 = getelementptr inbounds %struct.mwifiex_802_11d_domain_reg, %struct.mwifiex_802_11d_domain_reg* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* @IEEE80211_COUNTRY_STRING_LEN, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @memcpy(i32* %86, i32* %91, i32 %92)
  %94 = call i32 (...) @rcu_read_unlock()
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %96 = load i32, i32* @HostCmd_CMD_802_11D_DOMAIN_INFO, align 4
  %97 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %98 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %95, i32 %96, i32 %97, i32 0, i32* null, i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %47
  %101 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %102 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* @ERROR, align 4
  %105 = call i32 @mwifiex_dbg(%struct.TYPE_2__* %103, i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %109

106:                                              ; preds = %47
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %108 = call i32 @mwifiex_dnld_txpwr_table(%struct.mwifiex_private* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %100, %40, %28, %19
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @strncmp(i32*, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dnld_txpwr_table(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
