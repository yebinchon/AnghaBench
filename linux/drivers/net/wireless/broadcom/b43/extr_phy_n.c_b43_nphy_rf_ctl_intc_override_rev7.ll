; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_intc_override_rev7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_intc_override_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@B43_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32)* @b43_nphy_rf_ctl_intc_override_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rf_ctl_intc_override_rev7(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %137, %4
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %140

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %20
  br label %137

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %136 [
    i32 130, label %40
    i32 128, label %49
    i32 129, label %64
    i32 131, label %87
    i32 132, label %111
  ]

40:                                               ; preds = %37
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @b43_phy_write(%struct.b43_wldev* %41, i32 %42, i32 0)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %45 = call i32 @b43_phy_mask(%struct.b43_wldev* %44, i32 767, i32 -8193)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %47 = load i32, i32* @B43_RFSEQ_RESET2RX, align 4
  %48 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %46, i32 %47)
  br label %136

49:                                               ; preds = %37
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 6
  %54 = call i32 @b43_phy_maskset(%struct.b43_wldev* %50, i32 %51, i32 -193, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @b43_phy_set(%struct.b43_wldev* %55, i32 %56, i32 1024)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %59 = call i32 @b43_phy_mask(%struct.b43_wldev* %58, i32 767, i32 16383)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %61 = call i32 @b43_phy_set(%struct.b43_wldev* %60, i32 767, i32 8192)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %63 = call i32 @b43_phy_set(%struct.b43_wldev* %62, i32 767, i32 1)
  br label %136

64:                                               ; preds = %37
  store i32 48, i32* %10, align 4
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %66 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @b43_current_band(i32 %67)
  %69 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 5
  store i32 %73, i32* %12, align 4
  br label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @b43_phy_maskset(%struct.b43_wldev* %78, i32 %79, i32 %81, i32 %82)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @b43_phy_set(%struct.b43_wldev* %84, i32 %85, i32 4096)
  br label %136

87:                                               ; preds = %37
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %89 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @b43_current_band(i32 %90)
  %92 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  store i32 1, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %12, align 4
  br label %99

96:                                               ; preds = %87
  store i32 4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 2
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %94
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @b43_phy_maskset(%struct.b43_wldev* %100, i32 %101, i32 %103, i32 %104)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %11, align 4
  %109 = xor i32 %108, -1
  %110 = call i32 @b43_phy_mask(%struct.b43_wldev* %106, i32 %107, i32 %109)
  br label %136

111:                                              ; preds = %37
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %113 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @b43_current_band(i32 %114)
  %116 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  store i32 2, i32* %10, align 4
  store i32 8, i32* %11, align 4
  %119 = load i32, i32* %7, align 4
  %120 = shl i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %124

121:                                              ; preds = %111
  store i32 8, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %122, 3
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %121, %118
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @b43_phy_maskset(%struct.b43_wldev* %125, i32 %126, i32 %128, i32 %129)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %11, align 4
  %134 = xor i32 %133, -1
  %135 = call i32 @b43_phy_mask(%struct.b43_wldev* %131, i32 %132, i32 %134)
  br label %136

136:                                              ; preds = %37, %124, %99, %77, %49, %40
  br label %137

137:                                              ; preds = %136, %29
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %14

140:                                              ; preds = %14
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
