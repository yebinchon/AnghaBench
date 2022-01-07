; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32 }
%struct.lan78xx_net = type { i32 }

@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_EEE_EN_ = common dso_local global i32 0, align 4
@EEE_TX_LPI_REQ_DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @lan78xx_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %10)
  store %struct.lan78xx_net* %11, %struct.lan78xx_net** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %7, align 8
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %16 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_autopm_get_interface(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %25 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %26 = call i32 @phy_ethtool_get_eee(%struct.phy_device* %24, %struct.ethtool_eee* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %72

30:                                               ; preds = %23
  %31 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %32 = load i32, i32* @MAC_CR, align 4
  %33 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %31, i32 %32, i32* %9)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAC_CR_EEE_EN_, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %30
  %39 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %54, i32 0, i32 4
  store i32 1, i32* %55, align 4
  %56 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %57 = load i32, i32* @EEE_TX_LPI_REQ_DLY, align 4
  %58 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %56, i32 %57, i32* %9)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  br label %71

62:                                               ; preds = %30
  %63 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %67, i32 0, i32 4
  store i32 0, i32* %68, align 4
  %69 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %69, i32 0, i32 5
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %38
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %29
  %73 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %74 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usb_autopm_put_interface(i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @phy_ethtool_get_eee(%struct.phy_device*, %struct.ethtool_eee*) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
