; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64 }
%struct.e1000_tx_ring = type { i32, i64, i32, i64, i64, i64, i64, %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer* }
%struct.e1000_tx_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.e1000_tx_ring*)* @e1000_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clean_tx_ring(%struct.e1000_adapter* %0, %struct.e1000_tx_ring* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_tx_ring*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.e1000_tx_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.e1000_tx_ring* %1, %struct.e1000_tx_ring** %4, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  store %struct.e1000_hw* %10, %struct.e1000_hw** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %18, i32 0, i32 8
  %20 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %20, i64 %22
  store %struct.e1000_tx_buffer* %23, %struct.e1000_tx_buffer** %6, align 8
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %25 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %6, align 8
  %26 = call i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter* %24, %struct.e1000_tx_buffer* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netdev_reset_queue(i32 %33)
  %35 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = mul i64 4, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %40, i32 0, i32 8
  %42 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @memset(%struct.e1000_tx_buffer* %42, i32 0, i64 %43)
  %45 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %45, i32 0, i32 7
  %47 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %46, align 8
  %48 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @memset(%struct.e1000_tx_buffer* %47, i32 0, i64 %50)
  %52 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i32 @writel(i32 0, i64 %64)
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %70 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = call i32 @writel(i32 0, i64 %72)
  ret void
}

declare dso_local i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter*, %struct.e1000_tx_buffer*) #1

declare dso_local i32 @netdev_reset_queue(i32) #1

declare dso_local i32 @memset(%struct.e1000_tx_buffer*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
