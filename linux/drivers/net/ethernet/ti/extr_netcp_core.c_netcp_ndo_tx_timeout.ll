; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_ndo_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_ndo_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netcp_intf = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"transmit timed out tx descs(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netcp_ndo_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_ndo_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netcp_intf*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %5)
  store %struct.netcp_intf* %6, %struct.netcp_intf** %3, align 8
  %7 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %8 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @knav_pool_count(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %12 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %17 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %18 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netcp_process_tx_compl_packets(%struct.netcp_intf* %16, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @netif_trans_update(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %23)
  ret void
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @knav_pool_count(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @netcp_process_tx_compl_packets(%struct.netcp_intf*, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
