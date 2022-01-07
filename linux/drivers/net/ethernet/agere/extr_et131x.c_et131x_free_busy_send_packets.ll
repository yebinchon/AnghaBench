; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_free_busy_send_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_free_busy_send_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.tx_ring }
%struct.tx_ring = type { i64, %struct.tcb*, i32* }
%struct.tcb = type { %struct.tcb* }

@NUM_TCB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_free_busy_send_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_free_busy_send_packets(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca %struct.tcb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tx_ring*, align 8
  %7 = alloca %struct.tcb*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 1
  store %struct.tx_ring* %9, %struct.tx_ring** %6, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %15 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %14, i32 0, i32 1
  %16 = load %struct.tcb*, %struct.tcb** %15, align 8
  store %struct.tcb* %16, %struct.tcb** %3, align 8
  br label %17

17:                                               ; preds = %38, %1
  %18 = load %struct.tcb*, %struct.tcb** %3, align 8
  %19 = icmp ne %struct.tcb* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @NUM_TCB, align 8
  %23 = icmp slt i64 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %59

26:                                               ; preds = %24
  %27 = load %struct.tcb*, %struct.tcb** %3, align 8
  %28 = getelementptr inbounds %struct.tcb, %struct.tcb* %27, i32 0, i32 0
  %29 = load %struct.tcb*, %struct.tcb** %28, align 8
  store %struct.tcb* %29, %struct.tcb** %7, align 8
  %30 = load %struct.tcb*, %struct.tcb** %7, align 8
  %31 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %32 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %31, i32 0, i32 1
  store %struct.tcb* %30, %struct.tcb** %32, align 8
  %33 = load %struct.tcb*, %struct.tcb** %7, align 8
  %34 = icmp eq %struct.tcb* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %37 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %26
  %39 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %40 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %43, i32 0, i32 0
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %5, align 8
  %49 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %50 = load %struct.tcb*, %struct.tcb** %3, align 8
  %51 = call i32 @free_send_packet(%struct.et131x_adapter* %49, %struct.tcb* %50)
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %52, i32 0, i32 0
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %57 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %56, i32 0, i32 1
  %58 = load %struct.tcb*, %struct.tcb** %57, align 8
  store %struct.tcb* %58, %struct.tcb** %3, align 8
  br label %17

59:                                               ; preds = %24
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @NUM_TCB, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %65, i32 0, i32 0
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %70 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_send_packet(%struct.et131x_adapter*, %struct.tcb*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
