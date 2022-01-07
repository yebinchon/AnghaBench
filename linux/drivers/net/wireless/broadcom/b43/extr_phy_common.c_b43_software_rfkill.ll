; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.b43_wldev*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %5, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = call i32 @b43_mac_suspend(%struct.b43_wldev* %8)
  %10 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %13, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %14(%struct.b43_wldev* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = call i32 @b43_mac_enable(%struct.b43_wldev* %24)
  ret void
}

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
