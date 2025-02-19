; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_msg_to_dev_cancel_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_msg_to_dev_cancel_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_msg_to_dev_cancel_wait(%struct.i2400m* %0, i32 %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %8 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @IS_ERR(%struct.sk_buff* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @kfree_skb(%struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %20, %16, %2
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.sk_buff* @ERR_PTR(i32 %24)
  %26 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %27 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %26, i32 0, i32 1
  store %struct.sk_buff* %25, %struct.sk_buff** %27, align 8
  %28 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %29 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
