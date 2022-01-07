; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_superswitch_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_superswitch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_12__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@B43_NPHY_GPIO_LOOEN = common dso_local global i32 0, align 4
@B43_NPHY_GPIO_HIOEN = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_GPOUTSMSK = common dso_local global i32 0, align 4
@B43_MMIO_GPIO_MASK = common dso_local global i32 0, align 4
@B43_MMIO_GPIO_CONTROL = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_LO1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_LO2 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_superswitch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_superswitch_init(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 7
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %62

11:                                               ; preds = %2
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %62

21:                                               ; preds = %17
  br label %62

22:                                               ; preds = %11
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_NPHY_GPIO_LOOEN, align 4
  %25 = call i32 @b43_phy_write(%struct.b43_wldev* %23, i32 %24, i32 0)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_NPHY_GPIO_HIOEN, align 4
  %28 = call i32 @b43_phy_write(%struct.b43_wldev* %26, i32 %27, i32 0)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %34 [
  ]

34:                                               ; preds = %22
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %37 = load i32, i32* @B43_MACCTL_GPOUTSMSK, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @b43_maskset32(%struct.b43_wldev* %35, i32 %36, i32 %38, i32 0)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* @B43_MMIO_GPIO_MASK, align 4
  %42 = call i32 @b43_maskset16(%struct.b43_wldev* %40, i32 %41, i32 -1, i32 64512)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = load i32, i32* @B43_MMIO_GPIO_CONTROL, align 4
  %45 = call i32 @b43_maskset16(%struct.b43_wldev* %43, i32 %44, i32 1023, i32 0)
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %34
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_LO1, align 4
  %51 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %50, i32 728)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %52, i32 %53, i32 769)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_LO2, align 4
  %57 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 %56, i32 728)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %58, i32 %59, i32 769)
  br label %61

61:                                               ; preds = %48, %34
  br label %62

62:                                               ; preds = %10, %20, %61, %21
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_maskset16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
