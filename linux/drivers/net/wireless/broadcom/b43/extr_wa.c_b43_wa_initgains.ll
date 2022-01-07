; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_initgains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_wa.c_b43_wa_initgains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@B43_PHY_LNAHPFCTL = common dso_local global i32 0, align 4
@B43_PHY_LPFGAINCTL = common dso_local global i32 0, align 4
@B43_OFDMTAB_LPFGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_wa_initgains(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 0
  store %struct.b43_phy* %5, %struct.b43_phy** %3, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = load i32, i32* @B43_PHY_LNAHPFCTL, align 4
  %8 = call i32 @b43_phy_write(%struct.b43_wldev* %6, i32 %7, i32 8185)
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_PHY_LPFGAINCTL, align 4
  %11 = call i32 @b43_phy_mask(%struct.b43_wldev* %9, i32 %10, i32 65295)
  %12 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @B43_OFDMTAB_LPFGAIN, align 4
  %19 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %17, i32 %18, i32 0, i32 8127)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = call i32 @b43_radio_write16(%struct.b43_wldev* %21, i32 2, i32 8127)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = call i32 @b43_phy_write(%struct.b43_wldev* %23, i32 36, i32 18048)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = call i32 @b43_phy_write(%struct.b43_wldev* %25, i32 32, i32 3)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = call i32 @b43_phy_write(%struct.b43_wldev* %27, i32 29, i32 3904)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @b43_phy_write(%struct.b43_wldev* %29, i32 31, i32 7168)
  %31 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %32 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = call i32 @b43_phy_maskset(%struct.b43_wldev* %36, i32 42, i32 255, i32 1024)
  br label %49

38:                                               ; preds = %20
  %39 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %40 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = call i32 @b43_phy_maskset(%struct.b43_wldev* %44, i32 42, i32 255, i32 6656)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %46, i32 204, i32 8481)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %51 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 186, i32 16085)
  br label %57

57:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
