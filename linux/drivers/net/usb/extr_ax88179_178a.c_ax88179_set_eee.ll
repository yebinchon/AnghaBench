; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32 }
%struct.usbnet = type { i32, i64 }
%struct.ax88179_data = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @ax88179_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca %struct.ax88179_data*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.usbnet* @netdev_priv(%struct.net_device* %9)
  store %struct.usbnet* %10, %struct.usbnet** %6, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ax88179_data*
  store %struct.ax88179_data* %14, %struct.ax88179_data** %7, align 8
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ax88179_data*, %struct.ax88179_data** %7, align 8
  %21 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ax88179_data*, %struct.ax88179_data** %7, align 8
  %23 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %28 = call i32 @ax88179_disable_eee(%struct.usbnet* %27)
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %31 = call i32 @ax88179_chk_eee(%struct.usbnet* %30)
  %32 = load %struct.ax88179_data*, %struct.ax88179_data** %7, align 8
  %33 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ax88179_data*, %struct.ax88179_data** %7, align 8
  %35 = getelementptr inbounds %struct.ax88179_data, %struct.ax88179_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %29
  %42 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %43 = call i32 @ax88179_enable_eee(%struct.usbnet* %42)
  br label %44

44:                                               ; preds = %41, %26
  %45 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %46 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %47 = call i32 @ax88179_ethtool_set_eee(%struct.usbnet* %45, %struct.ethtool_eee* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 0
  %55 = call i32 @mii_nway_restart(i32* %54)
  %56 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %57 = call i32 @usbnet_link_change(%struct.usbnet* %56, i32 0, i32 0)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %50, %38
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ax88179_disable_eee(%struct.usbnet*) #1

declare dso_local i32 @ax88179_chk_eee(%struct.usbnet*) #1

declare dso_local i32 @ax88179_enable_eee(%struct.usbnet*) #1

declare dso_local i32 @ax88179_ethtool_set_eee(%struct.usbnet*, %struct.ethtool_eee*) #1

declare dso_local i32 @mii_nway_restart(i32*) #1

declare dso_local i32 @usbnet_link_change(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
