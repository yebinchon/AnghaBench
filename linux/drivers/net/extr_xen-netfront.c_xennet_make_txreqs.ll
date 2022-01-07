; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_make_txreqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_make_txreqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32 }
%struct.xen_netif_tx_request = type { i32 }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.xennet_gnttab_make_txreq = type { %struct.xen_netif_tx_request*, i64, %struct.page*, %struct.sk_buff*, %struct.netfront_queue* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@xennet_make_one_txreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xen_netif_tx_request* (%struct.netfront_queue*, %struct.xen_netif_tx_request*, %struct.sk_buff*, %struct.page*, i32, i32)* @xennet_make_txreqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xen_netif_tx_request* @xennet_make_txreqs(%struct.netfront_queue* %0, %struct.xen_netif_tx_request* %1, %struct.sk_buff* %2, %struct.page* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.netfront_queue*, align 8
  %8 = alloca %struct.xen_netif_tx_request*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xennet_gnttab_make_txreq, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %7, align 8
  store %struct.xen_netif_tx_request* %1, %struct.xen_netif_tx_request** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 0
  %15 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  store %struct.xen_netif_tx_request* %15, %struct.xen_netif_tx_request** %14, align 8
  %16 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 2
  store %struct.page* null, %struct.page** %17, align 8
  %18 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %18, align 8
  %20 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 4
  %21 = load %struct.netfront_queue*, %struct.netfront_queue** %7, align 8
  store %struct.netfront_queue* %21, %struct.netfront_queue** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = lshr i32 %22, %23
  %25 = load %struct.page*, %struct.page** %10, align 8
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.page, %struct.page* %25, i64 %26
  store %struct.page* %27, %struct.page** %10, align 8
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %35, %6
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 2
  store %struct.page* %36, %struct.page** %37, align 8
  %38 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.page*, %struct.page** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @xennet_make_one_txreq, align 4
  %43 = call i32 @gnttab_foreach_grant_in_range(%struct.page* %39, i32 %40, i32 %41, i32 %42, %struct.xennet_gnttab_make_txreq* %13)
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 1
  store %struct.page* %45, %struct.page** %10, align 8
  store i32 0, i32* %11, align 4
  %46 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  br label %32

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %13, i32 0, i32 0
  %54 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %53, align 8
  ret %struct.xen_netif_tx_request* %54
}

declare dso_local i32 @gnttab_foreach_grant_in_range(%struct.page*, i32, i32, i32, %struct.xennet_gnttab_make_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
