; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_pio_rxqueue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_pio_rx(%struct.b43_pio_rxqueue* %0) #0 {
  %2 = alloca %struct.b43_pio_rxqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_pio_rxqueue* %0, %struct.b43_pio_rxqueue** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %1, %22
  %6 = load %struct.b43_pio_rxqueue*, %struct.b43_pio_rxqueue** %2, align 8
  %7 = call i64 @pio_rx_frame(%struct.b43_pio_rxqueue* %6)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %23

13:                                               ; preds = %5
  %14 = call i32 (...) @cond_resched()
  %15 = load i32, i32* %3, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %3, align 4
  %17 = icmp ugt i32 %16, 10000
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %23

22:                                               ; preds = %13
  br label %5

23:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @pio_rx_frame(%struct.b43_pio_rxqueue*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
