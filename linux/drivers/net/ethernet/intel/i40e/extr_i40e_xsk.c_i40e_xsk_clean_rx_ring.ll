; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xsk_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i32, %struct.i40e_rx_buffer* }
%struct.i40e_rx_buffer = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_xsk_clean_rx_ring(%struct.i40e_ring* %0) #0 {
  %2 = alloca %struct.i40e_ring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.i40e_rx_buffer*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %12, i32 0, i32 2
  %14 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %14, i64 %15
  store %struct.i40e_rx_buffer* %16, %struct.i40e_rx_buffer** %4, align 8
  %17 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %32

22:                                               ; preds = %11
  %23 = load %struct.i40e_ring*, %struct.i40e_ring** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @xsk_umem_fq_reuse(i32 %25, i32 %28)
  %30 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %22, %21
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %5

35:                                               ; preds = %5
  ret void
}

declare dso_local i32 @xsk_umem_fq_reuse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
