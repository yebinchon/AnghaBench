; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.netxen_adapter = type { i32 (%struct.netxen_adapter*, i32)*, i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @netxen_nic_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.netxen_adapter* %9, %struct.netxen_adapter** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %7, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_valid_ether_addr(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EADDRNOTAVAIL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i64 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_device_detach(%struct.net_device* %25)
  %27 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %28 = call i32 @netxen_napi_disable(%struct.netxen_adapter* %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %32, i32 %35, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %42, i32 %45, i32 %48)
  %50 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %50, i32 0, i32 0
  %52 = load i32 (%struct.netxen_adapter*, i32)*, i32 (%struct.netxen_adapter*, i32)** %51, align 8
  %53 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %52(%struct.netxen_adapter* %53, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i64 @netif_running(%struct.net_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %29
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @netif_device_attach(%struct.net_device* %62)
  %64 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %65 = call i32 @netxen_napi_enable(%struct.netxen_adapter* %64)
  br label %66

66:                                               ; preds = %61, %29
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @netxen_napi_disable(%struct.netxen_adapter*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @netxen_napi_enable(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
