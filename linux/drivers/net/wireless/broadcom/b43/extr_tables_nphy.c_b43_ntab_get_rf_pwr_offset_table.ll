; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_ntab_get_rf_pwr_offset_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_ntab_get_rf_pwr_offset_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@b43_ntab_rf_pwr_offset_2057_rev14_2g = common dso_local global i32* null, align 8
@b43_ntab_rf_pwr_offset_2057_rev9_2g = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"No 2GHz RF power table available for this device\0A\00", align 1
@b43_ntab_rf_pwr_offset_2057_rev9_5g = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"No 5GHz RF power table available for this device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @b43_ntab_get_rf_pwr_offset_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  store %struct.b43_phy* %6, %struct.b43_phy** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @b43_current_band(i32 %9)
  %11 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %33 [
    i32 17, label %17
    i32 16, label %25
  ]

17:                                               ; preds = %13
  %18 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 14
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** @b43_ntab_rf_pwr_offset_2057_rev14_2g, align 8
  store i32* %23, i32** %2, align 8
  br label %55

24:                                               ; preds = %17
  br label %33

25:                                               ; preds = %13
  %26 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %27 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 9
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32*, i32** @b43_ntab_rf_pwr_offset_2057_rev9_2g, align 8
  store i32* %31, i32** %2, align 8
  br label %55

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %13, %32, %24
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @b43err(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %55

38:                                               ; preds = %1
  %39 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %40 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %50 [
    i32 16, label %42
  ]

42:                                               ; preds = %38
  %43 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %44 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32*, i32** @b43_ntab_rf_pwr_offset_2057_rev9_5g, align 8
  store i32* %48, i32** %2, align 8
  br label %55

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %38, %49
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %52 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @b43err(i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %55

55:                                               ; preds = %50, %47, %33, %30, %22
  %56 = load i32*, i32** %2, align 8
  ret i32* %56
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
