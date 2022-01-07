; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i64, i64, %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer* }
%struct.fm10k_tx_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_ring*)* @fm10k_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_clean_tx_ring(%struct.fm10k_ring* %0) #0 {
  %2 = alloca %struct.fm10k_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fm10k_tx_buffer*, align 8
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %2, align 8
  %6 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %6, i32 0, i32 3
  %8 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %7, align 8
  %9 = icmp ne %struct.fm10k_tx_buffer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %50

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %27, %11
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %15 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %20 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %19, i32 0, i32 3
  %21 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %21, i64 %22
  store %struct.fm10k_tx_buffer* %23, %struct.fm10k_tx_buffer** %5, align 8
  %24 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %25 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %5, align 8
  %26 = call i32 @fm10k_unmap_and_free_tx_resource(%struct.fm10k_ring* %24, %struct.fm10k_tx_buffer* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %32 = call i32 @txring_txq(%struct.fm10k_ring* %31)
  %33 = call i32 @netdev_tx_reset_queue(i32 %32)
  %34 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %35 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 4, %36
  store i64 %37, i64* %3, align 8
  %38 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %39 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %38, i32 0, i32 3
  %40 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @memset(%struct.fm10k_tx_buffer* %40, i32 0, i64 %41)
  %43 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %44 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %43, i32 0, i32 2
  %45 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %44, align 8
  %46 = load %struct.fm10k_ring*, %struct.fm10k_ring** %2, align 8
  %47 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memset(%struct.fm10k_tx_buffer* %45, i32 0, i64 %48)
  br label %50

50:                                               ; preds = %30, %10
  ret void
}

declare dso_local i32 @fm10k_unmap_and_free_tx_resource(%struct.fm10k_ring*, %struct.fm10k_tx_buffer*) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @txring_txq(%struct.fm10k_ring*) #1

declare dso_local i32 @memset(%struct.fm10k_tx_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
