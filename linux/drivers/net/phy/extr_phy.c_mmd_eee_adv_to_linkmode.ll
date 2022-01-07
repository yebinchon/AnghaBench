; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_mmd_eee_adv_to_linkmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_mmd_eee_adv_to_linkmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDIO_EEE_100TX = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_EEE_1000T = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_EEE_10GT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseT_Full_BIT = common dso_local global i32 0, align 4
@MDIO_EEE_1000KX = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseKX_Full_BIT = common dso_local global i32 0, align 4
@MDIO_EEE_10GKX4 = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT = common dso_local global i32 0, align 4
@MDIO_EEE_10GKR = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10000baseKR_Full_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @mmd_eee_adv_to_linkmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmd_eee_adv_to_linkmode(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64*, i64** %3, align 8
  %6 = call i32 @linkmode_zero(i64* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MDIO_EEE_100TX, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Full_BIT, align 4
  %13 = load i64*, i64** %3, align 8
  %14 = call i32 @linkmode_set_bit(i32 %12, i64* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MDIO_EEE_1000T, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %22 = load i64*, i64** %3, align 8
  %23 = call i32 @linkmode_set_bit(i32 %21, i64* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MDIO_EEE_10GT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseT_Full_BIT, align 4
  %31 = load i64*, i64** %3, align 8
  %32 = call i32 @linkmode_set_bit(i32 %30, i64* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MDIO_EEE_1000KX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseKX_Full_BIT, align 4
  %40 = load i64*, i64** %3, align 8
  %41 = call i32 @linkmode_set_bit(i32 %39, i64* %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MDIO_EEE_10GKX4, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT, align 4
  %49 = load i64*, i64** %3, align 8
  %50 = call i32 @linkmode_set_bit(i32 %48, i64* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MDIO_EEE_10GKR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @ETHTOOL_LINK_MODE_10000baseKR_Full_BIT, align 4
  %58 = load i64*, i64** %3, align 8
  %59 = call i32 @linkmode_set_bit(i32 %57, i64* %58)
  br label %60

60:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @linkmode_zero(i64*) #1

declare dso_local i32 @linkmode_set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
