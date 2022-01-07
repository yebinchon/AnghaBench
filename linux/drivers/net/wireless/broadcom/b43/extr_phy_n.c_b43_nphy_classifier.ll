; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_classifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43_NPHY_CLASSCTL = common dso_local global i32 0, align 4
@B43_NPHY_CLASSCTL_CCKEN = common dso_local global i32 0, align 4
@B43_NPHY_CLASSCTL_OFDMEN = common dso_local global i32 0, align 4
@B43_NPHY_CLASSCTL_WAITEDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32)* @b43_nphy_classifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_classifier(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = call i32 @b43_mac_suspend(%struct.b43_wldev* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %19 = load i32, i32* @B43_NPHY_CLASSCTL, align 4
  %20 = call i32 @b43_phy_read(%struct.b43_wldev* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @B43_NPHY_CLASSCTL_CCKEN, align 4
  %22 = load i32, i32* @B43_NPHY_CLASSCTL_OFDMEN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @B43_NPHY_CLASSCTL_WAITEDEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %38 = load i32, i32* @B43_NPHY_CLASSCTL, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @b43_phy_maskset(%struct.b43_wldev* %37, i32 %38, i32 65528, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %50

47:                                               ; preds = %17
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %49 = call i32 @b43_mac_enable(%struct.b43_wldev* %48)
  br label %50

50:                                               ; preds = %47, %17
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
