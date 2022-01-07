; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_free_txpacket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_free_txpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pio_txpacket = type { i32, i64, %struct.b43legacy_pioqueue* }
%struct.b43legacy_pioqueue = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_pio_txpacket*, i32)* @free_txpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_txpacket(%struct.b43legacy_pio_txpacket* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_pio_txpacket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_pioqueue*, align 8
  store %struct.b43legacy_pio_txpacket* %0, %struct.b43legacy_pio_txpacket** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %7 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %6, i32 0, i32 2
  %8 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %7, align 8
  store %struct.b43legacy_pioqueue* %8, %struct.b43legacy_pioqueue** %5, align 8
  %9 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %18 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_kfree_skb_irq(i64 %19)
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %23 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @dev_kfree_skb(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %28, i32 0, i32 0
  %30 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %31 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %30, i32 0, i32 1
  %32 = call i32 @list_move(i32* %29, i32* %31)
  %33 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %34 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  ret void
}

declare dso_local i32 @dev_kfree_skb_irq(i64) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
