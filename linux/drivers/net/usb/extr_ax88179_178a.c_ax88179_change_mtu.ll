; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.usbnet = type { i64 }

@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@AX_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@AX_MEDIUM_JUMBO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ax88179_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.usbnet* @netdev_priv(%struct.net_device* %7)
  store %struct.usbnet* %8, %struct.usbnet** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1500
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %28 = load i32, i32* @AX_ACCESS_MAC, align 4
  %29 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %30 = call i32 @ax88179_read_cmd(%struct.usbnet* %27, i32 %28, i32 %29, i32 2, i32 2, i32* %6)
  %31 = load i32, i32* @AX_MEDIUM_JUMBO_EN, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %35 = load i32, i32* @AX_ACCESS_MAC, align 4
  %36 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %37 = call i32 @ax88179_write_cmd(%struct.usbnet* %34, i32 %35, i32 %36, i32 2, i32 2, i32* %6)
  br label %51

38:                                               ; preds = %2
  %39 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %40 = load i32, i32* @AX_ACCESS_MAC, align 4
  %41 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %42 = call i32 @ax88179_read_cmd(%struct.usbnet* %39, i32 %40, i32 %41, i32 2, i32 2, i32* %6)
  %43 = load i32, i32* @AX_MEDIUM_JUMBO_EN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %48 = load i32, i32* @AX_ACCESS_MAC, align 4
  %49 = load i32, i32* @AX_MEDIUM_STATUS_MODE, align 4
  %50 = call i32 @ax88179_write_cmd(%struct.usbnet* %47, i32 %48, i32 %49, i32 2, i32 2, i32* %6)
  br label %51

51:                                               ; preds = %38, %26
  %52 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %53 = call i32 @usbnet_update_max_qlen(%struct.usbnet* %52)
  ret i32 0
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @usbnet_update_max_qlen(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
