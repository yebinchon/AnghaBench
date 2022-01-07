; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.nfp_port = type { i32 }
%struct.nfp_eth_table_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_net_get_mac_addr(%struct.nfp_pf* %0, %struct.net_device* %1, %struct.nfp_port* %2) #0 {
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_port*, align 8
  %7 = alloca %struct.nfp_eth_table_port*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.nfp_port* %2, %struct.nfp_port** %6, align 8
  %8 = load %struct.nfp_port*, %struct.nfp_port** %6, align 8
  %9 = call %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port* %8)
  store %struct.nfp_eth_table_port* %9, %struct.nfp_eth_table_port** %7, align 8
  %10 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %7, align 8
  %11 = icmp ne %struct.nfp_eth_table_port* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @eth_hw_addr_random(%struct.net_device* %13)
  br label %30

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %7, align 8
  %20 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ether_addr_copy(i32 %18, i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %7, align 8
  %27 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ether_addr_copy(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %15, %12
  ret void
}

declare dso_local %struct.nfp_eth_table_port* @__nfp_port_get_eth_port(%struct.nfp_port*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
