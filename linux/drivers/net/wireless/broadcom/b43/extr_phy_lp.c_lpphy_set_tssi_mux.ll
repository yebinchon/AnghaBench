; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_set_tssi_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lp.c_lpphy_set_tssi_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@TSSI_MUX_EXT = common dso_local global i32 0, align 4
@B2063_PA_SP1 = common dso_local global i32 0, align 4
@B2063_PA_CTL10 = common dso_local global i32 0, align 4
@TSSI_MUX_POSTPA = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVRVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @lpphy_set_tssi_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_set_tssi_mux(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TSSI_MUX_EXT, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = load i32, i32* @B2063_PA_SP1, align 4
  %11 = call i32 @b43_radio_set(%struct.b43_wldev* %9, i32 %10, i32 2)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = call i32 @B43_PHY_OFDM(i32 243)
  %14 = call i32 @b43_phy_set(%struct.b43_wldev* %12, i32 %13, i32 4096)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = load i32, i32* @B2063_PA_CTL10, align 4
  %17 = call i32 @b43_radio_write(%struct.b43_wldev* %15, i32 %16, i32 81)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TSSI_MUX_POSTPA, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load i32, i32* @B2063_PA_SP1, align 4
  %24 = call i32 @b43_radio_mask(%struct.b43_wldev* %22, i32 %23, i32 65534)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* @B43_LPPHY_AFE_CTL_OVRVAL, align 4
  %27 = call i32 @b43_phy_mask(%struct.b43_wldev* %25, i32 %26, i32 65479)
  br label %35

28:                                               ; preds = %8
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @B2063_PA_SP1, align 4
  %31 = call i32 @b43_radio_maskset(%struct.b43_wldev* %29, i32 %30, i32 65534, i32 1)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @B43_LPPHY_AFE_CTL_OVRVAL, align 4
  %34 = call i32 @b43_phy_maskset(%struct.b43_wldev* %32, i32 %33, i32 65479, i32 32)
  br label %35

35:                                               ; preds = %28, %21
  br label %38

36:                                               ; preds = %2
  %37 = call i32 @B43_WARN_ON(i32 1)
  br label %38

38:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_OFDM(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
