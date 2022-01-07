; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_rx_update_write_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_rx_update_write_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { i32, %struct.ath10k_ce_ring*, %struct.ath10k* }
%struct.ath10k_ce_ring = type { i32, i32, i32 }
%struct.ath10k = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_ce_rx_update_write_idx(%struct.ath10k_ce_pipe* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k_ce_pipe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_ce_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %11, i32 0, i32 2
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %5, align 8
  %14 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %14, i32 0, i32 1
  %16 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %15, align 8
  store %struct.ath10k_ce_ring* %16, %struct.ath10k_ce_ring** %6, align 8
  %17 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %18 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %21 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %3, align 8
  %24 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ath10k_ce_dest_ring_write_index_get(%struct.ath10k* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %35 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = sub i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @CE_RING_IDX_ADD(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ath10k_ce_dest_ring_write_index_set(%struct.ath10k* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %6, align 8
  %52 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  ret void
}

declare dso_local i32 @ath10k_ce_dest_ring_write_index_get(%struct.ath10k*, i32) #1

declare dso_local i32 @CE_RING_IDX_ADD(i32, i32, i32) #1

declare dso_local i32 @ath10k_ce_dest_ring_write_index_set(%struct.ath10k*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
