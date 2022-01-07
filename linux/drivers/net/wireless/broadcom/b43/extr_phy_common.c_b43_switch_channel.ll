; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_switch_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_SHM_SH_CHAN_5GHZ = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_CHAN = common dso_local global i32 0, align 4
@B43_SHM_SH_CHAN_40MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_switch_channel(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  store %struct.b43_phy* %11, %struct.b43_phy** %6, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @b43_current_band(i32 %15)
  %17 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @B43_SHM_SH_CHAN_5GHZ, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %25 = load i32, i32* @B43_SHM_SHARED, align 4
  %26 = load i32, i32* @B43_SHM_SH_CHAN, align 4
  %27 = call i32 @b43_shm_read16(%struct.b43_wldev* %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %29 = load i32, i32* @B43_SHM_SHARED, align 4
  %30 = load i32, i32* @B43_SHM_SH_CHAN, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @b43_shm_write16(%struct.b43_wldev* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %34 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.b43_wldev*, i32)**
  %38 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %37, align 8
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %38(%struct.b43_wldev* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %23
  br label %47

45:                                               ; preds = %23
  %46 = call i32 @msleep(i32 8)
  store i32 0, i32* %3, align 4
  br label %54

47:                                               ; preds = %44
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %49 = load i32, i32* @B43_SHM_SHARED, align 4
  %50 = load i32, i32* @B43_SHM_SH_CHAN, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @b43_shm_write16(%struct.b43_wldev* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %45
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
