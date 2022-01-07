; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_release_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_release_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32*, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32* }

@NET_RX_RING_SIZE = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_queue*)* @xennet_release_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_release_rx_bufs(%struct.netfront_queue* %0) #0 {
  %2 = alloca %struct.netfront_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %2, align 8
  %7 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %8 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %59, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NET_RX_RING_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %16 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %15, i32 0, i32 2
  %17 = load %struct.sk_buff**, %struct.sk_buff*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %17, i64 %19
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %59

25:                                               ; preds = %14
  %26 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %27 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @GRANT_INVALID_REF, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %59

37:                                               ; preds = %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call %struct.page* @skb_frag_page(i32* %42)
  store %struct.page* %43, %struct.page** %6, align 8
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = call i32 @get_page(%struct.page* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = call i64 @page_address(%struct.page* %47)
  %49 = call i32 @gnttab_end_foreign_access(i32 %46, i32 0, i64 %48)
  %50 = load i32, i32* @GRANT_INVALID_REF, align 4
  %51 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %52 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %37, %36, %24
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %10

62:                                               ; preds = %10
  %63 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %64 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock_bh(i32* %64)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.page* @skb_frag_page(i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @gnttab_end_foreign_access(i32, i32, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
