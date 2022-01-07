; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_scan_and_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_scan_and_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_rx_reorder_tbl = type { i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@MAX_TID_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.mwifiex_rx_reorder_tbl*)* @mwifiex_11n_scan_and_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_11n_scan_and_dispatch(%struct.mwifiex_private* %0, %struct.mwifiex_rx_reorder_tbl* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_rx_reorder_tbl*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_rx_reorder_tbl* %1, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %10 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %46, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %17 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %22 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %21, i32 0, i32 2
  %23 = load %struct.sk_buff**, %struct.sk_buff*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %23, i64 %25
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %49

30:                                               ; preds = %20
  %31 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %32 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %31, i32 0, i32 2
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %5, %struct.sk_buff* %38)
  %40 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %41 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %40, i32 0, i32 2
  %42 = load %struct.sk_buff**, %struct.sk_buff*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %42, i64 %44
  store %struct.sk_buff* null, %struct.sk_buff** %45, align 8
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %14

49:                                               ; preds = %29, %14
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %49
  %53 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %54 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %86, %52
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %64 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %63, i32 0, i32 2
  %65 = load %struct.sk_buff**, %struct.sk_buff*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %65, i64 %69
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  %72 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %73 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %72, i32 0, i32 2
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  store %struct.sk_buff* %71, %struct.sk_buff** %77, align 8
  %78 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %79 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %78, i32 0, i32 2
  %80 = load %struct.sk_buff**, %struct.sk_buff*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %80, i64 %84
  store %struct.sk_buff* null, %struct.sk_buff** %85, align 8
  br label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %58

89:                                               ; preds = %58
  br label %90

90:                                               ; preds = %89, %49
  %91 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %92 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @MAX_TID_VALUE, align 4
  %97 = sub nsw i32 %96, 1
  %98 = and i32 %95, %97
  %99 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %4, align 8
  %100 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %102 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock_bh(i32* %102)
  br label %104

104:                                              ; preds = %107, %90
  %105 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %5)
  store %struct.sk_buff* %105, %struct.sk_buff** %6, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i32 @mwifiex_11n_dispatch_pkt(%struct.mwifiex_private* %108, %struct.sk_buff* %109)
  br label %104

111:                                              ; preds = %104
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @mwifiex_11n_dispatch_pkt(%struct.mwifiex_private*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
