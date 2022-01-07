; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_7__*, i8**, i32, %struct.sk_buff** }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.xen_netif_rx_request = type { i16, i8* }
%struct.TYPE_8__ = type { i32* }

@NET_RX_RING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NET_RX_SLOTS_MIN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_queue*)* @xennet_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_alloc_rx_buffers(%struct.netfront_queue* %0) #0 {
  %2 = alloca %struct.netfront_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.xen_netif_rx_request*, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %2, align 8
  %11 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %12 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %16 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_carrier_ok(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %149

27:                                               ; preds = %1
  %28 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %29 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %108, %27
  %33 = load i64, i64* %3, align 8
  %34 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %35 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %33, %37
  %39 = load i64, i64* @NET_RX_RING_SIZE, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %111

41:                                               ; preds = %32
  %42 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %43 = call %struct.sk_buff* @xennet_alloc_one_rx_buffer(%struct.netfront_queue* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %111

49:                                               ; preds = %41
  %50 = load i64, i64* %3, align 8
  %51 = call zeroext i16 @xennet_rxidx(i64 %50)
  store i16 %51, i16* %7, align 2
  %52 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %53 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %52, i32 0, i32 6
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %53, align 8
  %55 = load i16, i16* %7, align 2
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %54, i64 %56
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  %59 = call i32 @BUG_ON(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %62 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %61, i32 0, i32 6
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %62, align 8
  %64 = load i16, i16* %7, align 2
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %63, i64 %65
  store %struct.sk_buff* %60, %struct.sk_buff** %66, align 8
  %67 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %68 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %67, i32 0, i32 5
  %69 = call i8* @gnttab_claim_grant_reference(i32* %68)
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = sext i32 %71 to i64
  %73 = call i32 @IS_ERR_VALUE(i64 %72)
  %74 = call i32 @WARN_ON_ONCE(i32 %73)
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %77 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %76, i32 0, i32 4
  %78 = load i8**, i8*** %77, align 8
  %79 = load i16, i16* %7, align 2
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = call %struct.page* @skb_frag_page(i32* %86)
  store %struct.page* %87, %struct.page** %9, align 8
  %88 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %89 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %88, i32 0, i32 1
  %90 = load i64, i64* %3, align 8
  %91 = call %struct.xen_netif_rx_request* @RING_GET_REQUEST(%struct.TYPE_9__* %89, i64 %90)
  store %struct.xen_netif_rx_request* %91, %struct.xen_netif_rx_request** %10, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %94 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.page*, %struct.page** %9, align 8
  %101 = call i32 @gnttab_page_grant_foreign_access_ref_one(i8* %92, i32 %99, %struct.page* %100, i32 0)
  %102 = load i16, i16* %7, align 2
  %103 = load %struct.xen_netif_rx_request*, %struct.xen_netif_rx_request** %10, align 8
  %104 = getelementptr inbounds %struct.xen_netif_rx_request, %struct.xen_netif_rx_request* %103, i32 0, i32 0
  store i16 %102, i16* %104, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.xen_netif_rx_request*, %struct.xen_netif_rx_request** %10, align 8
  %107 = getelementptr inbounds %struct.xen_netif_rx_request, %struct.xen_netif_rx_request* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %49
  %109 = load i64, i64* %3, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %3, align 8
  br label %32

111:                                              ; preds = %46, %32
  %112 = load i64, i64* %3, align 8
  %113 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %114 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %3, align 8
  %117 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %118 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %116, %120
  %122 = load i64, i64* @NET_RX_SLOTS_MIN, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %5, align 4
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124, %111
  %129 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %130 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %129, i32 0, i32 2
  %131 = load i64, i64* @jiffies, align 8
  %132 = load i32, i32* @HZ, align 4
  %133 = sdiv i32 %132, 10
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %131, %134
  %136 = call i32 @mod_timer(i32* %130, i64 %135)
  br label %149

137:                                              ; preds = %124
  %138 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %139 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %138, i32 0, i32 1
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_9__* %139, i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %146 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @notify_remote_via_irq(i32 %147)
  br label %149

149:                                              ; preds = %26, %128, %144, %137
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local %struct.sk_buff* @xennet_alloc_one_rx_buffer(%struct.netfront_queue*) #1

declare dso_local zeroext i16 @xennet_rxidx(i64) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local i8* @gnttab_claim_grant_reference(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR_VALUE(i64) #1

declare dso_local %struct.page* @skb_frag_page(i32*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.xen_netif_rx_request* @RING_GET_REQUEST(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @gnttab_page_grant_foreign_access_ref_one(i8*, i32, %struct.page*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
