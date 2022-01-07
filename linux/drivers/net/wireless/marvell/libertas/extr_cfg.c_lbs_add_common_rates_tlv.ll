; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_common_rates_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_common_rates_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32 }
%struct.mrvl_ie_rates_param_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4
@TLV_TYPE_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"assoc: bss had no basic rate IE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cfg80211_bss*)* @lbs_add_common_rates_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_add_common_rates_tlv(i32* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cfg80211_bss*, align 8
  %5 = alloca %struct.mrvl_ie_rates_param_set*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.mrvl_ie_rates_param_set*
  store %struct.mrvl_ie_rates_param_set* %11, %struct.mrvl_ie_rates_param_set** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %14 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %15 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %13, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %17 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %18 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %16, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @TLV_TYPE_RATES, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.mrvl_ie_rates_param_set*, %struct.mrvl_ie_rates_param_set** %5, align 8
  %22 = getelementptr inbounds %struct.mrvl_ie_rates_param_set, %struct.mrvl_ie_rates_param_set* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 16
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @add_ie_rates(i32* %29, i32* %30, i32* %8)
  store i32* %31, i32** %3, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @add_ie_rates(i32* %35, i32* %36, i32* %8)
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %34, %28
  br label %49

39:                                               ; preds = %2
  %40 = call i32 @lbs_deb_assoc(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %3, align 8
  store i32 130, i32* %41, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %3, align 8
  store i32 132, i32* %43, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %3, align 8
  store i32 139, i32* %45, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %3, align 8
  store i32 150, i32* %47, align 4
  store i32 4, i32* %8, align 4
  br label %49

49:                                               ; preds = %39, %38
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.mrvl_ie_rates_param_set*, %struct.mrvl_ie_rates_param_set** %5, align 8
  %54 = getelementptr inbounds %struct.mrvl_ie_rates_param_set, %struct.mrvl_ie_rates_param_set* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 16, %57
  %59 = trunc i64 %58 to i32
  ret i32 %59
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32* @add_ie_rates(i32*, i32*, i32*) #1

declare dso_local i32 @lbs_deb_assoc(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
