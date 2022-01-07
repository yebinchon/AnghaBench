; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_op_switch_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_op_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @b43_phy_ht_op_switch_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_ht_op_switch_channel(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %6, align 8
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_7__* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = call i64 @b43_current_band(%struct.TYPE_8__* %27)
  %29 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ult i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ugt i32 %35, 14
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %40
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @b43_phy_ht_set_channel(%struct.b43_wldev* %45, %struct.ieee80211_channel* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %41, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_7__*) #1

declare dso_local i64 @b43_current_band(%struct.TYPE_8__*) #1

declare dso_local i32 @b43_phy_ht_set_channel(%struct.b43_wldev*, %struct.ieee80211_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
