; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32 (i32, %struct.sk_buff*)*, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54_common*)* @p54_tx_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_tx_pending(%struct.p54_common* %0) #0 {
  %2 = alloca %struct.p54_common*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %2, align 8
  %5 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %6 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %5, i32 0, i32 2
  %7 = call %struct.sk_buff* @skb_dequeue(i32* %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @p54_assign_address(%struct.p54_common* %16, %struct.sk_buff* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %24 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %23, i32 0, i32 2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @skb_queue_head(i32* %24, %struct.sk_buff* %25)
  br label %36

27:                                               ; preds = %15
  %28 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %29 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %28, i32 0, i32 1
  %30 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %29, align 8
  %31 = load %struct.p54_common*, %struct.p54_common** %2, align 8
  %32 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = call i32 %30(i32 %33, %struct.sk_buff* %34)
  br label %36

36:                                               ; preds = %14, %27, %22
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @p54_assign_address(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
