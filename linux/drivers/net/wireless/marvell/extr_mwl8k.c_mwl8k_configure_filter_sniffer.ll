; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_configure_filter_sniffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_configure_filter_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"not enabling sniffer mode because STA interface is active\0A\00", align 1
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32*)* @mwl8k_configure_filter_sniffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_configure_filter_sniffer(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mwl8k_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %10, align 8
  store %struct.mwl8k_priv* %11, %struct.mwl8k_priv** %8, align 8
  %12 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %13 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %12, i32 0, i32 1
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = call i64 (...) @net_ratelimit()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wiphy_info(i32 %22, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %16
  store i32 0, i32* %4, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %27 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = call i64 @mwl8k_cmd_enable_sniffer(%struct.ieee80211_hw* %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %49

35:                                               ; preds = %30
  %36 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %37 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load i32, i32* @FIF_ALLMULTI, align 4
  %40 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FIF_CONTROL, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FIF_OTHER_BSS, align 4
  %45 = or i32 %43, %44
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %34, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_info(i32, i8*) #1

declare dso_local i64 @mwl8k_cmd_enable_sniffer(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
