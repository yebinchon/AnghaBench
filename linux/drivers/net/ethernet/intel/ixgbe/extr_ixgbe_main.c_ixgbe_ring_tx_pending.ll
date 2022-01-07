; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_ring_tx_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_ring_tx_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_ring**, %struct.ixgbe_ring** }
%struct.ixgbe_ring = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_ring_tx_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_ring_tx_pending(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.ixgbe_ring*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 3
  %16 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %16, i64 %18
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %19, align 8
  store %struct.ixgbe_ring* %20, %struct.ixgbe_ring** %5, align 8
  %21 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %61

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7

33:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 2
  %43 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %43, i64 %45
  %47 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %46, align 8
  store %struct.ixgbe_ring* %47, %struct.ixgbe_ring** %6, align 8
  %48 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %49 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %52 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %61

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %34

60:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %28
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
