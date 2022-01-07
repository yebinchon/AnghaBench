; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_queue*, i32)* @ionic_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_maybe_stop_tx(%struct.ionic_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.ionic_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @ionic_q_has_space(%struct.ionic_queue* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %16 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %21 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netif_stop_subqueue(i32 %19, i32 %22)
  %24 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  store i32 1, i32* %5, align 4
  %28 = call i32 (...) @smp_rmb()
  %29 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @ionic_q_has_space(%struct.ionic_queue* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %14
  %34 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %35 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %40 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netif_wake_subqueue(i32 %38, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %33, %14
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ionic_q_has_space(%struct.ionic_queue*, i32) #1

declare dso_local i32 @netif_stop_subqueue(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
