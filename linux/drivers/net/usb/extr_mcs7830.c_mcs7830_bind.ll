; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_mcs7830.c_mcs7830_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_mcs7830.c_mcs7830_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__, i64, %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.net_device*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i64, i32*, i32* }
%struct.usb_interface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cannot read MAC address\0A\00", align 1
@mcs7830_ethtool_ops = common dso_local global i32 0, align 4
@mcs7830_netdev_ops = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@mcs7830_mdio_read = common dso_local global i32 0, align 4
@mcs7830_mdio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @mcs7830_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs7830_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 3
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @mcs7830_hif_get_mac_address(%struct.usbnet* %22, i64 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %13

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %86

39:                                               ; preds = %30
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call i32 @mcs7830_data_set_multicast(%struct.net_device* %40)
  %42 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %43 = call i32 @mcs7830_apply_base_config(%struct.usbnet* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %86

47:                                               ; preds = %39
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 2
  store i32* @mcs7830_ethtool_ops, i32** %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  store i32* @mcs7830_netdev_ops, i32** %51, align 8
  %52 = load i64, i64* @ETH_FRAME_LEN, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @mcs7830_mdio_read, align 4
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @mcs7830_mdio_write, align 4
  %61 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i32 %60, i32* %63, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %66 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store %struct.net_device* %64, %struct.net_device** %67, align 8
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 63, i32* %70, align 8
  %71 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %72 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 31, i32* %73, align 4
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %84 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %85 = call i32 @usbnet_get_endpoints(%struct.usbnet* %83, %struct.usb_interface* %84)
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %47, %46, %33
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @mcs7830_hif_get_mac_address(%struct.usbnet*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mcs7830_data_set_multicast(%struct.net_device*) #1

declare dso_local i32 @mcs7830_apply_base_config(%struct.usbnet*) #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
