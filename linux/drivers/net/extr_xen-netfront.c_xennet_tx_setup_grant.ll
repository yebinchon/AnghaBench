; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_tx_setup_grant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_tx_setup_grant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xennet_gnttab_make_txreq = type { i32, %struct.xen_netif_tx_request*, %struct.sk_buff*, %struct.netfront_queue*, %struct.page* }
%struct.xen_netif_tx_request = type { i32, i32, i32, i64, i8* }
%struct.sk_buff = type { i32 }
%struct.netfront_queue = type { i8**, %struct.page**, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { %struct.sk_buff* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.page = type { i32 }

@GNTMAP_readonly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i8*)* @xennet_tx_setup_grant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_tx_setup_grant(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xennet_gnttab_make_txreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xen_netif_tx_request*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.netfront_queue*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.xennet_gnttab_make_txreq*
  store %struct.xennet_gnttab_make_txreq* %17, %struct.xennet_gnttab_make_txreq** %9, align 8
  %18 = load %struct.xennet_gnttab_make_txreq*, %struct.xennet_gnttab_make_txreq** %9, align 8
  %19 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %18, i32 0, i32 4
  %20 = load %struct.page*, %struct.page** %19, align 8
  store %struct.page* %20, %struct.page** %13, align 8
  %21 = load %struct.xennet_gnttab_make_txreq*, %struct.xennet_gnttab_make_txreq** %9, align 8
  %22 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %21, i32 0, i32 3
  %23 = load %struct.netfront_queue*, %struct.netfront_queue** %22, align 8
  store %struct.netfront_queue* %23, %struct.netfront_queue** %14, align 8
  %24 = load %struct.xennet_gnttab_make_txreq*, %struct.xennet_gnttab_make_txreq** %9, align 8
  %25 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %24, i32 0, i32 2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %15, align 8
  %27 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %28 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %27, i32 0, i32 6
  %29 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %30 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = call i32 @get_id_from_freelist(i32* %28, %struct.TYPE_7__* %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %34 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %33, i32 0, i32 5
  %35 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %36 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = call %struct.xen_netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_8__* %34, i32 %38)
  store %struct.xen_netif_tx_request* %40, %struct.xen_netif_tx_request** %11, align 8
  %41 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %42 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %41, i32 0, i32 4
  %43 = call i8* @gnttab_claim_grant_reference(i32* %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = sext i32 %45 to i64
  %47 = call i32 @IS_ERR_VALUE(i64 %46)
  %48 = call i32 @WARN_ON_ONCE(i32 %47)
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %51 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @GNTMAP_readonly, align 4
  %59 = call i32 @gnttab_grant_foreign_access_ref(i8* %49, i32 %56, i64 %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %61 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %62 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store %struct.sk_buff* %60, %struct.sk_buff** %67, align 8
  %68 = load %struct.page*, %struct.page** %13, align 8
  %69 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %70 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %69, i32 0, i32 1
  %71 = load %struct.page**, %struct.page*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page*, %struct.page** %71, i64 %73
  store %struct.page* %68, %struct.page** %74, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.netfront_queue*, %struct.netfront_queue** %14, align 8
  %77 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %11, align 8
  %84 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %11, align 8
  %87 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %11, align 8
  %90 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %11, align 8
  %93 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %11, align 8
  %95 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %11, align 8
  %97 = load %struct.xennet_gnttab_make_txreq*, %struct.xennet_gnttab_make_txreq** %9, align 8
  %98 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %97, i32 0, i32 1
  store %struct.xen_netif_tx_request* %96, %struct.xen_netif_tx_request** %98, align 8
  %99 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %11, align 8
  %100 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.xennet_gnttab_make_txreq*, %struct.xennet_gnttab_make_txreq** %9, align 8
  %103 = getelementptr inbounds %struct.xennet_gnttab_make_txreq, %struct.xennet_gnttab_make_txreq* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add i32 %104, %101
  store i32 %105, i32* %103, align 8
  ret void
}

declare dso_local i32 @get_id_from_freelist(i32*, %struct.TYPE_7__*) #1

declare dso_local %struct.xen_netif_tx_request* @RING_GET_REQUEST(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @gnttab_claim_grant_reference(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @gnttab_grant_foreign_access_ref(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
