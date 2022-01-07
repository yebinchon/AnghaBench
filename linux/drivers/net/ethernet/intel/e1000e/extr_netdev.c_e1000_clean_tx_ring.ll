; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i64, i64, i64, %struct.e1000_buffer*, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32 }
%struct.e1000_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*)* @e1000_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clean_tx_ring(%struct.e1000_ring* %0) #0 {
  %2 = alloca %struct.e1000_ring*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %2, align 8
  %7 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %7, i32 0, i32 6
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %17, i32 0, i32 5
  %19 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %19, i64 %21
  store %struct.e1000_buffer* %22, %struct.e1000_buffer** %4, align 8
  %23 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %24 = load %struct.e1000_buffer*, %struct.e1000_buffer** %4, align 8
  %25 = call i32 @e1000_put_txbuf(%struct.e1000_ring* %23, %struct.e1000_buffer* %24, i32 0)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netdev_reset_queue(i32 %32)
  %34 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = zext i32 %36 to i64
  %38 = mul i64 4, %37
  store i64 %38, i64* %5, align 8
  %39 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %40 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %39, i32 0, i32 5
  %41 = load %struct.e1000_buffer*, %struct.e1000_buffer** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @memset(%struct.e1000_buffer* %41, i32 0, i64 %42)
  %44 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %44, i32 0, i32 4
  %46 = load %struct.e1000_buffer*, %struct.e1000_buffer** %45, align 8
  %47 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memset(%struct.e1000_buffer* %46, i32 0, i64 %49)
  %51 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %54 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @e1000_put_txbuf(%struct.e1000_ring*, %struct.e1000_buffer*, i32) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

declare dso_local i32 @memset(%struct.e1000_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
