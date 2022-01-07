; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_cca_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_cca_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { i32 }
%struct.wpan_phy_cca = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_BBREG2 = common dso_local global i32 0, align 4
@BBREG2_CCA_MODE_MASK = common dso_local global i32 0, align 4
@BBREG2_CCA_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.wpan_phy_cca*)* @mrf24j40_set_cca_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_set_cca_mode(%struct.ieee802154_hw* %0, %struct.wpan_phy_cca* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.wpan_phy_cca*, align 8
  %6 = alloca %struct.mrf24j40*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store %struct.wpan_phy_cca* %1, %struct.wpan_phy_cca** %5, align 8
  %8 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %8, i32 0, i32 0
  %10 = load %struct.mrf24j40*, %struct.mrf24j40** %9, align 8
  store %struct.mrf24j40* %10, %struct.mrf24j40** %6, align 8
  %11 = load %struct.wpan_phy_cca*, %struct.wpan_phy_cca** %5, align 8
  %12 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %25 [
    i32 130, label %14
    i32 131, label %15
    i32 129, label %16
  ]

14:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %28

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.wpan_phy_cca*, %struct.wpan_phy_cca** %5, align 8
  %18 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %21 [
    i32 128, label %20
  ]

20:                                               ; preds = %16
  store i32 3, i32* %7, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %20
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %24, %15, %14
  %29 = load %struct.mrf24j40*, %struct.mrf24j40** %6, align 8
  %30 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @REG_BBREG2, align 4
  %33 = load i32, i32* @BBREG2_CCA_MODE_MASK, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BBREG2_CCA_MODE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %25, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
