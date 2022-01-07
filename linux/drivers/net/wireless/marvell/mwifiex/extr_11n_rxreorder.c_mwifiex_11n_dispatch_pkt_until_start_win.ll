; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_dispatch_pkt_until_start_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_dispatch_pkt_until_start_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_rx_reorder_tbl = type { i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.mwifiex_rx_reorder_tbl*, i32)* @mwifiex_11n_dispatch_pkt_until_start_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_11n_dispatch_pkt_until_start_win(%struct.mwifiex_private* %0, %struct.mwifiex_rx_reorder_tbl* %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_rx_reorder_tbl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_rx_reorder_tbl* %1, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %7)
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %17 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %23 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  %26 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %27 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @min(i32 %25, i32 %28)
  br label %34

30:                                               ; preds = %3
  %31 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %32 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = phi i32 [ %29, %20 ], [ %33, %30 ]
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %66, %34
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %42 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %41, i32 0, i32 2
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %43, i64 %45
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %51 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %50, i32 0, i32 2
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %7, %struct.sk_buff* %57)
  %59 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %60 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %59, i32 0, i32 2
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %61, i64 %63
  store %struct.sk_buff* null, %struct.sk_buff** %64, align 8
  br label %65

65:                                               ; preds = %49, %40
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %36

69:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %102, %69
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %73 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %70
  %79 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %80 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %79, i32 0, i32 2
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %81, i64 %85
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  %88 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %89 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %88, i32 0, i32 2
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %90, i64 %92
  store %struct.sk_buff* %87, %struct.sk_buff** %93, align 8
  %94 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %95 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %94, i32 0, i32 2
  %96 = load %struct.sk_buff**, %struct.sk_buff*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %96, i64 %100
  store %struct.sk_buff* null, %struct.sk_buff** %101, align 8
  br label %102

102:                                              ; preds = %78
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %70

105:                                              ; preds = %70
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %5, align 8
  %108 = getelementptr inbounds %struct.mwifiex_rx_reorder_tbl, %struct.mwifiex_rx_reorder_tbl* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %110 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_bh(i32* %110)
  br label %112

112:                                              ; preds = %115, %105
  %113 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %7)
  store %struct.sk_buff* %113, %struct.sk_buff** %8, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = call i32 @mwifiex_11n_dispatch_pkt(%struct.mwifiex_private* %116, %struct.sk_buff* %117)
  br label %112

119:                                              ; preds = %112
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @min(i32, i32) #1

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
