; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i64 }
%struct.lan78xx_net = type { i32 }

@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_EEE_EN_ = common dso_local global i32 0, align 4
@EEE_TX_LPI_REQ_DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @lan78xx_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %9)
  store %struct.lan78xx_net* %10, %struct.lan78xx_net** %6, align 8
  %11 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %12 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_autopm_get_interface(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %26 = load i32, i32* @MAC_CR, align 4
  %27 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %25, i32 %26, i32* %8)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @MAC_CR_EEE_EN_, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %32 = load i32, i32* @MAC_CR, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %39 = call i32 @phy_ethtool_set_eee(i32 %37, %struct.ethtool_eee* %38)
  %40 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %45 = load i32, i32* @EEE_TX_LPI_REQ_DLY, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %60

48:                                               ; preds = %19
  %49 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %50 = load i32, i32* @MAC_CR, align 4
  %51 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %49, i32 %50, i32* %8)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @MAC_CR_EEE_EN_, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %57 = load i32, i32* @MAC_CR, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %48, %24
  %61 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %62 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_autopm_put_interface(i32 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @phy_ethtool_set_eee(i32, %struct.ethtool_eee*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
