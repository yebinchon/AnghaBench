; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_phy_lcn_op_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_lcn.c_b43_phy_lcn_op_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MAC not suspended\0A\00", align 1
@B43_PHY_LCN_RF_CTL2 = common dso_local global i32 0, align 4
@B43_PHY_LCN_RF_CTL1 = common dso_local global i32 0, align 4
@B43_PHY_LCN_RF_CTL5 = common dso_local global i32 0, align 4
@B43_PHY_LCN_RF_CTL4 = common dso_local global i32 0, align 4
@B43_PHY_LCN_RF_CTL3 = common dso_local global i32 0, align 4
@B43_PHY_LCN_RF_CTL7 = common dso_local global i32 0, align 4
@B43_PHY_LCN_RF_CTL6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_lcn_op_software_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_op_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %7 = call i32 @b43_read32(%struct.b43_wldev* %5, i32 %6)
  %8 = load i32, i32* @B43_MACCTL_ENABLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @b43err(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_PHY_LCN_RF_CTL2, align 4
  %22 = call i32 @b43_phy_mask(%struct.b43_wldev* %20, i32 %21, i32 -31745)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_PHY_LCN_RF_CTL1, align 4
  %25 = call i32 @b43_phy_set(%struct.b43_wldev* %23, i32 %24, i32 7936)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_PHY_LCN_RF_CTL5, align 4
  %28 = call i32 @b43_phy_mask(%struct.b43_wldev* %26, i32 %27, i32 -32513)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @B43_PHY_LCN_RF_CTL4, align 4
  %31 = call i32 @b43_phy_mask(%struct.b43_wldev* %29, i32 %30, i32 -3)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @B43_PHY_LCN_RF_CTL3, align 4
  %34 = call i32 @b43_phy_set(%struct.b43_wldev* %32, i32 %33, i32 2056)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load i32, i32* @B43_PHY_LCN_RF_CTL7, align 4
  %37 = call i32 @b43_phy_mask(%struct.b43_wldev* %35, i32 %36, i32 -9)
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = load i32, i32* @B43_PHY_LCN_RF_CTL6, align 4
  %40 = call i32 @b43_phy_set(%struct.b43_wldev* %38, i32 %39, i32 8)
  br label %51

41:                                               ; preds = %16
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @B43_PHY_LCN_RF_CTL1, align 4
  %44 = call i32 @b43_phy_mask(%struct.b43_wldev* %42, i32 %43, i32 -7937)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %46 = load i32, i32* @B43_PHY_LCN_RF_CTL3, align 4
  %47 = call i32 @b43_phy_mask(%struct.b43_wldev* %45, i32 %46, i32 -2057)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i32, i32* @B43_PHY_LCN_RF_CTL6, align 4
  %50 = call i32 @b43_phy_mask(%struct.b43_wldev* %48, i32 %49, i32 -9)
  br label %51

51:                                               ; preds = %41, %19
  ret void
}

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
