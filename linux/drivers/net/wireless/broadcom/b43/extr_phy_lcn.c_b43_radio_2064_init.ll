; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_radio_2064_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_radio_2064_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_2064_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2064_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @b43_current_band(i32 %5)
  %7 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = call i32 @b43_radio_write(%struct.b43_wldev* %10, i32 156, i32 32)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = call i32 @b43_radio_write(%struct.b43_wldev* %12, i32 261, i32 8)
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %9
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i32 @b43_radio_write(%struct.b43_wldev* %16, i32 50, i32 98)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_radio_write(%struct.b43_wldev* %18, i32 51, i32 25)
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = call i32 @b43_radio_write(%struct.b43_wldev* %20, i32 144, i32 16)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = call i32 @b43_radio_write(%struct.b43_wldev* %22, i32 16, i32 0)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %15
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = call i32 @b43_radio_write(%struct.b43_wldev* %30, i32 96, i32 127)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_radio_write(%struct.b43_wldev* %32, i32 97, i32 114)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = call i32 @b43_radio_write(%struct.b43_wldev* %34, i32 98, i32 127)
  br label %36

36:                                               ; preds = %29, %15
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @b43_radio_write(%struct.b43_wldev* %37, i32 29, i32 2)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @b43_radio_write(%struct.b43_wldev* %39, i32 30, i32 6)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = call i32 @b43_phy_write(%struct.b43_wldev* %41, i32 1258, i32 18056)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = call i32 @b43_phy_maskset(%struct.b43_wldev* %43, i32 1259, i32 -8, i32 2)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = call i32 @b43_phy_mask(%struct.b43_wldev* %45, i32 1259, i32 -449)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = call i32 @b43_phy_maskset(%struct.b43_wldev* %47, i32 1130, i32 65280, i32 25)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = call i32 @B43_LCNTAB16(i32 0, i32 85)
  %51 = call i32 @b43_lcntab_write(%struct.b43_wldev* %49, i32 %50, i32 0)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @b43_radio_mask(%struct.b43_wldev* %52, i32 91, i32 -65283)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @b43_radio_set(%struct.b43_wldev* %54, i32 4, i32 64)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = call i32 @b43_radio_set(%struct.b43_wldev* %56, i32 288, i32 16)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = call i32 @b43_radio_set(%struct.b43_wldev* %58, i32 120, i32 128)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = call i32 @b43_radio_set(%struct.b43_wldev* %60, i32 297, i32 2)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = call i32 @b43_radio_set(%struct.b43_wldev* %62, i32 87, i32 1)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_radio_set(%struct.b43_wldev* %64, i32 91, i32 2)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = call i32 @b43_radio_read(%struct.b43_wldev* %66, i32 92)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = call i32 @b43_radio_mask(%struct.b43_wldev* %68, i32 91, i32 -65283)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = call i32 @b43_radio_mask(%struct.b43_wldev* %70, i32 87, i32 -65282)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = call i32 @b43_phy_write(%struct.b43_wldev* %72, i32 2355, i32 11627)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = call i32 @b43_phy_write(%struct.b43_wldev* %74, i32 2356, i32 11627)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %77 = call i32 @b43_phy_write(%struct.b43_wldev* %76, i32 2357, i32 11627)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = call i32 @b43_phy_write(%struct.b43_wldev* %78, i32 2358, i32 11627)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @b43_phy_write(%struct.b43_wldev* %80, i32 2359, i32 363)
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = call i32 @b43_radio_mask(%struct.b43_wldev* %82, i32 87, i32 -65283)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = call i32 @b43_radio_write(%struct.b43_wldev* %84, i32 194, i32 111)
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_lcntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LCNTAB16(i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
