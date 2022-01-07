; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_free_tx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_free_tx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, i32, i32, %struct.ena_tx_buffer* }
%struct.ena_tx_buffer = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"free uncompleted tx skb qid %d idx 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*)* @ena_free_tx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_tx_bufs(%struct.ena_ring* %0) #0 {
  %2 = alloca %struct.ena_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ena_tx_buffer*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %2, align 8
  store i32 1, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %6
  %13 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %14 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %13, i32 0, i32 3
  %15 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %15, i64 %16
  store %struct.ena_tx_buffer* %17, %struct.ena_tx_buffer** %5, align 8
  %18 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %52

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %28 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %31 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @netdev_notice(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  store i32 0, i32* %3, align 4
  br label %44

35:                                               ; preds = %23
  %36 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %37 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %40 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @netdev_dbg(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %46 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %5, align 8
  %47 = call i32 @ena_unmap_tx_skb(%struct.ena_ring* %45, %struct.ena_tx_buffer* %46)
  %48 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_kfree_skb_any(i32 %50)
  br label %52

52:                                               ; preds = %44, %22
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %6

55:                                               ; preds = %6
  %56 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %57 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %60 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @netdev_get_tx_queue(i32 %58, i32 %61)
  %63 = call i32 @netdev_tx_reset_queue(i32 %62)
  ret void
}

declare dso_local i32 @netdev_notice(i32, i8*, i32, i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @ena_unmap_tx_skb(%struct.ena_ring*, %struct.ena_tx_buffer*) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
