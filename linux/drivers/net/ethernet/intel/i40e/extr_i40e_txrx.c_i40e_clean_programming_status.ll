; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_programming_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_clean_programming_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_rx_buffer = type { i32 }
%struct.i40e_ring = type { i32, i32, %struct.i40e_rx_buffer* }
%union.i40e_rx_desc = type { i32 }

@I40E_RX_PROG_STATUS_DESC_QW1_PROGID_MASK = common dso_local global i32 0, align 4
@I40E_RX_PROG_STATUS_DESC_QW1_PROGID_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_PROG_STATUS_DESC_FD_FILTER_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i40e_rx_buffer* @i40e_clean_programming_status(%struct.i40e_ring* %0, %union.i40e_rx_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_rx_buffer*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca %union.i40e_rx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_rx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %5, align 8
  store %union.i40e_rx_desc* %1, %union.i40e_rx_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @i40e_rx_is_programming_status(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.i40e_rx_buffer* null, %struct.i40e_rx_buffer** %4, align 8
  br label %58

15:                                               ; preds = %3
  %16 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %17 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %20 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %19, i32 0, i32 2
  %21 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %21, i64 %24
  store %struct.i40e_rx_buffer* %25, %struct.i40e_rx_buffer** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %28 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i32, i32* %9, align 4
  br label %34

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %38 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @I40E_RX_DESC(%struct.i40e_ring* %39, i32 %40)
  %42 = call i32 @prefetch(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @I40E_RX_PROG_STATUS_DESC_QW1_PROGID_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @I40E_RX_PROG_STATUS_DESC_QW1_PROGID_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @I40E_RX_PROG_STATUS_DESC_FD_FILTER_STATUS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %53 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @i40e_fd_handle_status(%struct.i40e_ring* %52, %union.i40e_rx_desc* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %34
  %57 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %8, align 8
  store %struct.i40e_rx_buffer* %57, %struct.i40e_rx_buffer** %4, align 8
  br label %58

58:                                               ; preds = %56, %14
  %59 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %4, align 8
  ret %struct.i40e_rx_buffer* %59
}

declare dso_local i32 @i40e_rx_is_programming_status(i32) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @I40E_RX_DESC(%struct.i40e_ring*, i32) #1

declare dso_local i32 @i40e_fd_handle_status(%struct.i40e_ring*, %union.i40e_rx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
