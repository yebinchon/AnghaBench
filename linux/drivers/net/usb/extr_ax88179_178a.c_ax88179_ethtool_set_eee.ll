; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_ethtool_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_ethtool_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.ethtool_eee = type { i32 }

@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.ethtool_eee*)* @ax88179_ethtool_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_ethtool_set_eee(%struct.usbnet* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.ethtool_eee*, align 8
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %4, align 8
  %6 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %7 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ethtool_adv_to_mmd_eee_adv_t(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %12 = load i32, i32* @MDIO_MMD_AN, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ax88179_phy_write_mmd_indirect(%struct.usbnet* %10, i32 %11, i32 %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @ethtool_adv_to_mmd_eee_adv_t(i32) #1

declare dso_local i32 @ax88179_phy_write_mmd_indirect(%struct.usbnet*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
