; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.b43_phy_ht_channeltab_e_radio2059 = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.ieee80211_channel*, i32)* @b43_phy_ht_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_ht_set_channel(%struct.b43_wldev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_phy*, align 8
  %9 = alloca %struct.b43_phy_ht_channeltab_e_radio2059*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  store %struct.b43_phy* %11, %struct.b43_phy** %8, align 8
  store %struct.b43_phy_ht_channeltab_e_radio2059* null, %struct.b43_phy_ht_channeltab_e_radio2059** %9, align 8
  %12 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 8281
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.b43_phy_ht_channeltab_e_radio2059* @b43_phy_ht_get_channeltab_e_r2059(%struct.b43_wldev* %17, i32 %20)
  store %struct.b43_phy_ht_channeltab_e_radio2059* %21, %struct.b43_phy_ht_channeltab_e_radio2059** %9, align 8
  %22 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %9, align 8
  %23 = icmp ne %struct.b43_phy_ht_channeltab_e_radio2059* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ESRCH, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %16
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ESRCH, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %49

31:                                               ; preds = %27
  %32 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %33 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 8281
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %38 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %9, align 8
  %39 = call i32 @b43_radio_2059_channel_setup(%struct.b43_wldev* %37, %struct.b43_phy_ht_channeltab_e_radio2059* %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %41 = load %struct.b43_phy_ht_channeltab_e_radio2059*, %struct.b43_phy_ht_channeltab_e_radio2059** %9, align 8
  %42 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_radio2059, %struct.b43_phy_ht_channeltab_e_radio2059* %41, i32 0, i32 0
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %44 = call i32 @b43_phy_ht_channel_setup(%struct.b43_wldev* %40, i32* %42, %struct.ieee80211_channel* %43)
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @ESRCH, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %28, %24
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.b43_phy_ht_channeltab_e_radio2059* @b43_phy_ht_get_channeltab_e_r2059(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_2059_channel_setup(%struct.b43_wldev*, %struct.b43_phy_ht_channeltab_e_radio2059*) #1

declare dso_local i32 @b43_phy_ht_channel_setup(%struct.b43_wldev*, i32*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
