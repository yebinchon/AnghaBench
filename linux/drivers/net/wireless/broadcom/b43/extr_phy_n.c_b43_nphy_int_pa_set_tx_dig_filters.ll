; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_int_pa_set_tx_dig_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_int_pa_set_tx_dig_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@b43_nphy_int_pa_set_tx_dig_filters.offset = internal constant [3 x i32] [i32 390, i32 405, i32 709], align 4
@b43_nphy_int_pa_set_tx_dig_filters.dig_filter_phy_rev16 = internal constant [15 x i32] [i32 -375, i32 136, i32 -407, i32 208, i32 -1527, i32 956, i32 93, i32 186, i32 93, i32 230, i32 -44, i32 230, i32 201, i32 -191, i32 201], align 16
@tbl_tx_filter_coef_rev4 = common dso_local global i32** null, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_int_pa_set_tx_dig_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_int_pa_set_tx_dig_filters(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_nphy_int_pa_set_tx_dig_filters.offset, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev* %8, i32 %12, i32* %17)
  br label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev* %29, i32 390, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @b43_nphy_int_pa_set_tx_dig_filters.dig_filter_phy_rev16, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 17
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev* %38, i32 390, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @b43_nphy_int_pa_set_tx_dig_filters.dig_filter_phy_rev16, i64 0, i64 0))
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev* %40, i32 405, i32* %43)
  br label %45

45:                                               ; preds = %37, %31
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i64 @b43_is_40mhz(%struct.b43_wldev* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev* %50, i32 390, i32* %53)
  br label %81

55:                                               ; preds = %45
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @b43_current_band(i32 %58)
  %60 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 5
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev* %63, i32 390, i32* %66)
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 14
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 6
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev* %75, i32 390, i32* %78)
  br label %80

80:                                               ; preds = %74, %68
  br label %81

81:                                               ; preds = %80, %49
  ret void
}

declare dso_local i32 @b43_nphy_pa_set_tx_dig_filter(%struct.b43_wldev*, i32, i32*) #1

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #1

declare dso_local i64 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
