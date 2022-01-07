; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i64 }
%struct.lan78xx_net = type { i32, i64* }
%struct.lan78xx_priv = type { i32 }

@USB_CFG0 = common dso_local global i32 0, align 4
@USB_CFG_RMT_WKP_ = common dso_local global i32 0, align 4
@WAKE_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @lan78xx_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan78xx_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %9)
  store %struct.lan78xx_net* %10, %struct.lan78xx_net** %5, align 8
  %11 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %12 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lan78xx_priv*
  store %struct.lan78xx_priv* %16, %struct.lan78xx_priv** %8, align 8
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %18 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @usb_autopm_get_interface(i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %25 = load i32, i32* @USB_CFG0, align 4
  %26 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %24, i32 %25, i32* %7)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %57

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @USB_CFG_RMT_WKP_, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i64, i64* @WAKE_ALL, align 8
  %44 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %8, align 8
  %47 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %56

51:                                               ; preds = %37
  %52 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %42
  br label %57

57:                                               ; preds = %56, %32
  %58 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %59 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @usb_autopm_put_interface(i32 %60)
  br label %62

62:                                               ; preds = %57, %22
  ret void
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
