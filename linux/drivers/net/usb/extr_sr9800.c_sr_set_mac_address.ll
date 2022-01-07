; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }
%struct.sr_data = type { i32 }
%struct.sockaddr = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SR_CMD_WRITE_NODE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @sr_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca %struct.sr_data*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.usbnet* @netdev_priv(%struct.net_device* %9)
  store %struct.usbnet* %10, %struct.usbnet** %6, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.sr_data*
  store %struct.sr_data* %13, %struct.sr_data** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %24 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_valid_ether_addr(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EADDRNOTAVAIL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %22
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.sr_data*, %struct.sr_data** %7, align 8
  %41 = getelementptr inbounds %struct.sr_data, %struct.sr_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32 %42, i32 %45, i32 %46)
  %48 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %49 = load i32, i32* @SR_CMD_WRITE_NODE_ID, align 4
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = load %struct.sr_data*, %struct.sr_data** %7, align 8
  %52 = getelementptr inbounds %struct.sr_data, %struct.sr_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sr_write_cmd_async(%struct.usbnet* %48, i32 %49, i32 0, i32 0, i32 %50, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %31, %28, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sr_write_cmd_async(%struct.usbnet*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
