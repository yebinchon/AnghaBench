; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_handle_failed_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_handle_failed_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.l2t_entry = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.l2t_skb_cb = type { i32, i32 (i32, %struct.sk_buff*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.l2t_entry*)* @handle_failed_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_failed_resolution(%struct.adapter* %0, %struct.l2t_entry* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2t_skb_cb*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.l2t_entry* %1, %struct.l2t_entry** %4, align 8
  br label %7

7:                                                ; preds = %35, %2
  %8 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %9 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %8, i32 0, i32 1
  %10 = call %struct.sk_buff* @__skb_dequeue(i32* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.l2t_skb_cb* @L2T_SKB_CB(%struct.sk_buff* %13)
  store %struct.l2t_skb_cb* %14, %struct.l2t_skb_cb** %6, align 8
  %15 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %16 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.l2t_skb_cb*, %struct.l2t_skb_cb** %6, align 8
  %19 = getelementptr inbounds %struct.l2t_skb_cb, %struct.l2t_skb_cb* %18, i32 0, i32 1
  %20 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %19, align 8
  %21 = icmp ne i32 (i32, %struct.sk_buff*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.l2t_skb_cb*, %struct.l2t_skb_cb** %6, align 8
  %24 = getelementptr inbounds %struct.l2t_skb_cb, %struct.l2t_skb_cb* %23, i32 0, i32 1
  %25 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %24, align 8
  %26 = load %struct.l2t_skb_cb*, %struct.l2t_skb_cb** %6, align 8
  %27 = getelementptr inbounds %struct.l2t_skb_cb, %struct.l2t_skb_cb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 %25(i32 %28, %struct.sk_buff* %29)
  br label %35

31:                                               ; preds = %12
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @t4_ofld_send(%struct.adapter* %32, %struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %37 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  br label %7

39:                                               ; preds = %7
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.l2t_skb_cb* @L2T_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @t4_ofld_send(%struct.adapter*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
