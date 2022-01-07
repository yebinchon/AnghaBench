; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_drop_queued_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_drop_queued_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.sk_buff_head, %struct.TYPE_2__* }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @rtl_drop_queued_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_drop_queued_tx(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca %struct.net_device_stats*, align 8
  %4 = alloca %struct.sk_buff_head, align 4
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %7 = load %struct.r8152*, %struct.r8152** %2, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %3, align 8
  %11 = load %struct.r8152*, %struct.r8152** %2, align 8
  %12 = getelementptr inbounds %struct.r8152, %struct.r8152* %11, i32 0, i32 0
  store %struct.sk_buff_head* %12, %struct.sk_buff_head** %5, align 8
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %14 = call i64 @skb_queue_empty(%struct.sk_buff_head* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %37

17:                                               ; preds = %1
  %18 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %4)
  %19 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %23 = call i32 @skb_queue_splice_init(%struct.sk_buff_head* %22, %struct.sk_buff_head* %4)
  %24 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  br label %27

27:                                               ; preds = %30, %17
  %28 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %4)
  store %struct.sk_buff* %28, %struct.sk_buff** %6, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @dev_kfree_skb(%struct.sk_buff* %31)
  %33 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %27

37:                                               ; preds = %16, %27
  ret void
}

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_splice_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
