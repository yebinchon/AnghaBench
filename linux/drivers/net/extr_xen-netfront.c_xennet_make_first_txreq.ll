; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_make_first_txreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_make_first_txreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_netif_tx_request = type { i32 }
%struct.netfront_queue = type { i32 }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.xennet_gnttab_make_txreq = type { %struct.xen_netif_tx_request*, i32, %struct.page*, %struct.sk_buff*, %struct.netfront_queue* }

@xennet_tx_setup_grant = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xen_netif_tx_request* (%struct.netfront_queue*, %struct.sk_buff*, %struct.page*, i32, i32)* @xennet_make_first_txreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xen_netif_tx_request* @xennet_make_first_txreq(%struct.netfront_queue* %0, %struct.sk_buff* %1, %struct.page* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.netfront_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xennet_gnttab_make_txreq, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %11, i32 0, i32 0
  store %struct.xen_netif_tx_request* null, %struct.xen_netif_tx_request** %12, align 8
  %13 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %11, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %11, i32 0, i32 2
  %15 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %15, %struct.page** %14, align 8
  %16 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %11, i32 0, i32 3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %16, align 8
  %18 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %11, i32 0, i32 4
  %19 = load %struct.netfront_queue*, %struct.netfront_queue** %6, align 8
  store %struct.netfront_queue* %19, %struct.netfront_queue** %18, align 8
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @xennet_tx_setup_grant, align 4
  %24 = call i32 @gnttab_for_one_grant(%struct.page* %20, i32 %21, i32 %22, i32 %23, %struct.xennet_gnttab_make_txreq* %11)
  %25 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %11, i32 0, i32 0
  %26 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %25, align 8
  ret %struct.xen_netif_tx_request* %26
}

declare dso_local i32 @gnttab_for_one_grant(%struct.page*, i32, i32, i32, %struct.xennet_gnttab_make_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
