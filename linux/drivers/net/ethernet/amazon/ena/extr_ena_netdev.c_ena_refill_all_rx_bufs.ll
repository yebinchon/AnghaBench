; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_refill_all_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_refill_all_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_ring* }
%struct.ena_ring = type { i32, i32, i32 }

@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"refilling Queue %d failed. allocated %d buffers from: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_refill_all_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_refill_all_rx_bufs(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %46, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %7
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 1
  %16 = load %struct.ena_ring*, %struct.ena_ring** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %16, i64 %18
  store %struct.ena_ring* %19, %struct.ena_ring** %3, align 8
  %20 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ena_refill_rx_bufs(%struct.ena_ring* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %13
  %34 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %35 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @rx_status, align 4
  %38 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %39 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @netif_warn(i32 %36, i32 %37, i32 %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %13
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %7

49:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ena_refill_rx_bufs(%struct.ena_ring*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_warn(i32, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
