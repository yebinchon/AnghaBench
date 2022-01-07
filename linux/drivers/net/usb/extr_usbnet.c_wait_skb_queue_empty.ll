; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_wait_skb_queue_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_wait_skb_queue_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff_head = type { i32 }

@UNLINK_TIMEOUT_MS = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff_head*)* @wait_skb_queue_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_skb_queue_empty(%struct.sk_buff_head* %0) #0 {
  %2 = alloca %struct.sk_buff_head*, align 8
  %3 = alloca i64, align 8
  store %struct.sk_buff_head* %0, %struct.sk_buff_head** %2, align 8
  %4 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %10 = call i32 @skb_queue_empty(%struct.sk_buff_head* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %15 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %14, i32 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load i32, i32* @UNLINK_TIMEOUT_MS, align 4
  %19 = call i32 @msecs_to_jiffies(i32 %18)
  %20 = call i32 @schedule_timeout(i32 %19)
  %21 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %22 = call i32 @set_current_state(i32 %21)
  %23 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %29 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
