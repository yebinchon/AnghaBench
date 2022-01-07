; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_ethtool_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_ethtool_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.ethtool_eee = type { i8*, i8*, i32 }

@MDIO_PCS_EEE_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_LPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.ethtool_eee*)* @ax88179_ethtool_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_ethtool_get_eee(%struct.usbnet* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %8 = load i32, i32* @MDIO_PCS_EEE_ABLE, align 4
  %9 = load i32, i32* @MDIO_MMD_PCS, align 4
  %10 = call i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet* %7, i32 %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %16)
  %18 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %21 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %22 = load i32, i32* @MDIO_MMD_AN, align 4
  %23 = call i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet* %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %29)
  %31 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = load i32, i32* @MDIO_AN_EEE_LPABLE, align 4
  %35 = load i32, i32* @MDIO_MMD_AN, align 4
  %36 = call i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %28
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %42)
  %44 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %39, %26, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ax88179_phy_read_mmd_indirect(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #1

declare dso_local i8* @mmd_eee_adv_to_ethtool_adv_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
