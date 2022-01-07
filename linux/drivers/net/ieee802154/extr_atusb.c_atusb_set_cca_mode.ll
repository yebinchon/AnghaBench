; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_set_cca_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_set_cca_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.atusb* }
%struct.atusb = type { i32 }
%struct.wpan_phy_cca = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SR_CCA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.wpan_phy_cca*)* @atusb_set_cca_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atusb_set_cca_mode(%struct.ieee802154_hw* %0, %struct.wpan_phy_cca* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.wpan_phy_cca*, align 8
  %6 = alloca %struct.atusb*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store %struct.wpan_phy_cca* %1, %struct.wpan_phy_cca** %5, align 8
  %8 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %8, i32 0, i32 0
  %10 = load %struct.atusb*, %struct.atusb** %9, align 8
  store %struct.atusb* %10, %struct.atusb** %6, align 8
  %11 = load %struct.wpan_phy_cca*, %struct.wpan_phy_cca** %5, align 8
  %12 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 131, label %14
    i32 132, label %15
    i32 130, label %16
  ]

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %29

15:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.wpan_phy_cca*, %struct.wpan_phy_cca** %5, align 8
  %18 = getelementptr inbounds %struct.wpan_phy_cca, %struct.wpan_phy_cca* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %22 [
    i32 129, label %20
    i32 128, label %21
  ]

20:                                               ; preds = %16
  store i32 3, i32* %7, align 4
  br label %25

21:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %21, %20
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %25, %15, %14
  %30 = load %struct.atusb*, %struct.atusb** %6, align 8
  %31 = load i32, i32* @SR_CCA_MODE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @atusb_write_subreg(%struct.atusb* %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %26, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @atusb_write_subreg(%struct.atusb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
