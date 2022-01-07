; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_tx.c_gve_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_tx_ring = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_tx_ring*, %struct.sk_buff*)* @gve_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_maybe_stop_tx(%struct.gve_tx_ring* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gve_tx_ring*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.gve_tx_ring* %0, %struct.gve_tx_ring** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i32 @gve_skb_fifo_bytes_required(%struct.gve_tx_ring* %7, %struct.sk_buff* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @gve_can_tx(%struct.gve_tx_ring* %10, i32 %11)
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_tx_stop_queue(i32 %23)
  %25 = call i32 (...) @smp_mb()
  %26 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @gve_can_tx(%struct.gve_tx_ring* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %16
  %38 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_tx_start_queue(i32 %40)
  %42 = load %struct.gve_tx_ring*, %struct.gve_tx_ring** %4, align 8
  %43 = getelementptr inbounds %struct.gve_tx_ring, %struct.gve_tx_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %34, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @gve_skb_fifo_bytes_required(%struct.gve_tx_ring*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @gve_can_tx(%struct.gve_tx_ring*, i32) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
