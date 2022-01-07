; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_release_tx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_release_tx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { %struct.TYPE_3__*, i32, i32*, i32** }
%struct.TYPE_3__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@NET_TX_RING_SIZE = common dso_local global i32 0, align 4
@GNTMAP_readonly = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_queue*)* @xennet_release_tx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_release_tx_bufs(%struct.netfront_queue* %0) #0 {
  %2 = alloca %struct.netfront_queue*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.netfront_queue* %0, %struct.netfront_queue** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %75, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NET_TX_RING_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %78

9:                                                ; preds = %5
  %10 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %11 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = call i64 @skb_entry_is_link(%struct.TYPE_3__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %75

19:                                               ; preds = %9
  %20 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %21 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %3, align 8
  %28 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %29 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %28, i32 0, i32 3
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @get_page(i32* %34)
  %36 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %37 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GNTMAP_readonly, align 4
  %44 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %45 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %44, i32 0, i32 3
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @page_address(i32* %50)
  %52 = call i32 @gnttab_end_foreign_access(i32 %42, i32 %43, i64 %51)
  %53 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %54 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %53, i32 0, i32 3
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @GRANT_INVALID_REF, align 4
  %60 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %61 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %67 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %66, i32 0, i32 1
  %68 = load %struct.netfront_queue*, %struct.netfront_queue** %2, align 8
  %69 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @add_id_to_freelist(i32* %67, %struct.TYPE_3__* %70, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %19, %18
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %5

78:                                               ; preds = %5
  ret void
}

declare dso_local i64 @skb_entry_is_link(%struct.TYPE_3__*) #1

declare dso_local i32 @get_page(i32*) #1

declare dso_local i32 @gnttab_end_foreign_access(i32, i32, i64) #1

declare dso_local i64 @page_address(i32*) #1

declare dso_local i32 @add_id_to_freelist(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
