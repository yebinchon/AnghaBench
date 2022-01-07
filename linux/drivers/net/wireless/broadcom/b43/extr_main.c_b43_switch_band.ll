; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_switch_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_switch_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__*, i32, %struct.b43_phy }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.b43_phy = type { i32, i64, i32, i64, i64 }
%struct.ieee80211_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"This device doesn't support %s-GHz band\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Switching to %s GHz band\0A\00", align 1
@B43_PHYTYPE_N = common dso_local global i64 0, align 8
@B43_BCMA_IOCTL_GMODE = common dso_local global i32 0, align 4
@B43_TMSLOW_GMODE = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i32 0, align 4
@SSB_TMSLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.ieee80211_channel*)* @b43_switch_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_switch_band(%struct.b43_wldev* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.b43_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 2
  store %struct.b43_phy* %10, %struct.b43_phy** %6, align 8
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 128, label %14
    i32 129, label %15
  ]

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %20

16:                                               ; preds = %2
  %17 = call i32 @B43_WARN_ON(i32 1)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %102

20:                                               ; preds = %15, %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %33 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @band_to_string(i32 %42)
  %44 = call i32 @b43err(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %102

47:                                               ; preds = %31, %23
  %48 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %49 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %54, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %102

62:                                               ; preds = %47
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %64 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @band_to_string(i32 %68)
  %70 = call i32 @b43dbg(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %72 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @B43_PHYTYPE_N, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %62
  %77 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %78 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 3
  br i1 %80, label %84, label %81

81:                                               ; preds = %76, %62
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %83 = call i32 @b43_software_rfkill(%struct.b43_wldev* %82, i32 1)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %87 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %89 = call i32 @b43_phy_put_into_reset(%struct.b43_wldev* %88)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %91 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %95 [
  ]

95:                                               ; preds = %84
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %97 = call i32 @b43_phy_take_out_of_reset(%struct.b43_wldev* %96)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %99 = call i32 @b43_upload_initvals_band(%struct.b43_wldev* %98)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %101 = call i32 @b43_phy_init(%struct.b43_wldev* %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %61, %36, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43err(i32, i8*, i32) #1

declare dso_local i32 @band_to_string(i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32) #1

declare dso_local i32 @b43_software_rfkill(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_put_into_reset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_take_out_of_reset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_upload_initvals_band(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_init(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
