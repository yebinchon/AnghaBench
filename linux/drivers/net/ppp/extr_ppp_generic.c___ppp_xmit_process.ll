; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c___ppp_xmit_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c___ppp_xmit_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.sk_buff*)* @__ppp_xmit_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ppp_xmit_process(%struct.ppp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.ppp* %0, %struct.ppp** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.ppp*, %struct.ppp** %3, align 8
  %6 = call i32 @ppp_xmit_lock(%struct.ppp* %5)
  %7 = load %struct.ppp*, %struct.ppp** %3, align 8
  %8 = getelementptr inbounds %struct.ppp, %struct.ppp* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = load %struct.ppp*, %struct.ppp** %3, align 8
  %13 = call i32 @ppp_push(%struct.ppp* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.ppp*, %struct.ppp** %3, align 8
  %18 = getelementptr inbounds %struct.ppp, %struct.ppp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_queue_tail(i32* %19, %struct.sk_buff* %20)
  br label %22

22:                                               ; preds = %16, %11
  br label %23

23:                                               ; preds = %36, %22
  %24 = load %struct.ppp*, %struct.ppp** %3, align 8
  %25 = getelementptr inbounds %struct.ppp, %struct.ppp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.ppp*, %struct.ppp** %3, align 8
  %30 = getelementptr inbounds %struct.ppp, %struct.ppp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call %struct.sk_buff* @skb_dequeue(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ false, %23 ], [ %33, %28 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load %struct.ppp*, %struct.ppp** %3, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @ppp_send_frame(%struct.ppp* %37, %struct.sk_buff* %38)
  br label %23

40:                                               ; preds = %34
  %41 = load %struct.ppp*, %struct.ppp** %3, align 8
  %42 = getelementptr inbounds %struct.ppp, %struct.ppp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load %struct.ppp*, %struct.ppp** %3, align 8
  %47 = getelementptr inbounds %struct.ppp, %struct.ppp* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @skb_peek(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.ppp*, %struct.ppp** %3, align 8
  %53 = getelementptr inbounds %struct.ppp, %struct.ppp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @netif_wake_queue(i32 %54)
  br label %61

56:                                               ; preds = %45, %40
  %57 = load %struct.ppp*, %struct.ppp** %3, align 8
  %58 = getelementptr inbounds %struct.ppp, %struct.ppp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netif_stop_queue(i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  br label %65

62:                                               ; preds = %2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %62, %61
  %66 = load %struct.ppp*, %struct.ppp** %3, align 8
  %67 = call i32 @ppp_xmit_unlock(%struct.ppp* %66)
  ret void
}

declare dso_local i32 @ppp_xmit_lock(%struct.ppp*) #1

declare dso_local i32 @ppp_push(%struct.ppp*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ppp_send_frame(%struct.ppp*, %struct.sk_buff*) #1

declare dso_local i32 @skb_peek(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ppp_xmit_unlock(%struct.ppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
