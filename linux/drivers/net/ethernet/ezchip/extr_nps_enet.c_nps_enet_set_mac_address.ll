; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sockaddr = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @nps_enet_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nps_enet_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sockaddr*
  store %struct.sockaddr* %9, %struct.sockaddr** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i64 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @eth_mac_addr(%struct.net_device* %17, i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ether_addr_copy(i32 %25, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @nps_enet_set_hw_mac_address(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %22, %16
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @eth_mac_addr(%struct.net_device*, i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @nps_enet_set_hw_mac_address(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
