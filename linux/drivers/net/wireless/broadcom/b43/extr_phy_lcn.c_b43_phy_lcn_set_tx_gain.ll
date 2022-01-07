; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_phy_lcn_set_tx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_phy_lcn_set_tx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.lcn_tx_gains = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.lcn_tx_gains*)* @b43_phy_lcn_set_tx_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_set_tx_gain(%struct.b43_wldev* %0, %struct.lcn_tx_gains* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.lcn_tx_gains*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.lcn_tx_gains* %1, %struct.lcn_tx_gains** %4, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = call i32 @b43_phy_lcn_get_pa_gain(%struct.b43_wldev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = load %struct.lcn_tx_gains*, %struct.lcn_tx_gains** %4, align 8
  %10 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lcn_tx_gains*, %struct.lcn_tx_gains** %4, align 8
  %13 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %11, %15
  %17 = call i32 @b43_phy_write(%struct.b43_wldev* %8, i32 1205, i32 %16)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = load %struct.lcn_tx_gains*, %struct.lcn_tx_gains** %4, align 8
  %20 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %21, %23
  %25 = call i32 @b43_phy_maskset(%struct.b43_wldev* %18, i32 1275, i32 -32768, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load %struct.lcn_tx_gains*, %struct.lcn_tx_gains** %4, align 8
  %28 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lcn_tx_gains*, %struct.lcn_tx_gains** %4, align 8
  %31 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %26, i32 1276, i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load %struct.lcn_tx_gains*, %struct.lcn_tx_gains** %4, align 8
  %38 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  %43 = call i32 @b43_phy_maskset(%struct.b43_wldev* %36, i32 1277, i32 -32768, i32 %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load %struct.lcn_tx_gains*, %struct.lcn_tx_gains** %4, align 8
  %46 = getelementptr inbounds %struct.lcn_tx_gains, %struct.lcn_tx_gains* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @b43_phy_lcn_set_dac_gain(%struct.b43_wldev* %44, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = call i32 @b43_phy_lcn_set_tx_gain_override(%struct.b43_wldev* %49, i32 1)
  ret void
}

declare dso_local i32 @b43_phy_lcn_get_pa_gain(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_lcn_set_dac_gain(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_lcn_set_tx_gain_override(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
