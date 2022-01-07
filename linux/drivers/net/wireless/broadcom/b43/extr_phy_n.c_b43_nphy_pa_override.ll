; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_pa_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_pa_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32 }

@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_pa_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_pa_override(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_n*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  store %struct.b43_phy_n* %11, %struct.b43_phy_n** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %67, label %14

14:                                               ; preds = %2
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %17 = call i8* @b43_phy_read(%struct.b43_wldev* %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %20 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %23 = call i8* @b43_phy_read(%struct.b43_wldev* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %26 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @b43_current_band(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %32 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 7
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i32 5248, i32* %7, align 4
  br label %58

37:                                               ; preds = %14
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1536, i32* %7, align 4
  br label %49

48:                                               ; preds = %43
  store i32 1152, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %57

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 384, i32* %7, align 4
  br label %56

55:                                               ; preds = %50
  store i32 288, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %54
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57, %36
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @b43_phy_write(%struct.b43_wldev* %59, i32 %60, i32 %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @b43_phy_write(%struct.b43_wldev* %63, i32 %64, i32 %65)
  br label %80

67:                                               ; preds = %2
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %69 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %70 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %71 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @b43_phy_write(%struct.b43_wldev* %68, i32 %69, i32 %72)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %76 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %77 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @b43_phy_write(%struct.b43_wldev* %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %67, %58
  ret void
}

declare dso_local i8* @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
