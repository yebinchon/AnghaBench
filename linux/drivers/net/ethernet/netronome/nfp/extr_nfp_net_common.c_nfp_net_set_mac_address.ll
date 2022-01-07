; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_net = type { i32 }
%struct.sockaddr = type { i32 }

@NFP_NET_CFG_UPDATE_MACADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @nfp_net_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %9)
  store %struct.nfp_net* %10, %struct.nfp_net** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @eth_prepare_mac_addr_change(%struct.net_device* %13, i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nfp_net_write_mac_addr(%struct.nfp_net* %21, i32 %24)
  %26 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %27 = load i32, i32* @NFP_NET_CFG_UPDATE_MACADDR, align 4
  %28 = call i32 @nfp_net_reconfig(%struct.nfp_net* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %20
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @eth_commit_mac_addr_change(%struct.net_device* %34, i8* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %31, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_prepare_mac_addr_change(%struct.net_device*, i8*) #1

declare dso_local i32 @nfp_net_write_mac_addr(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @eth_commit_mac_addr_change(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
