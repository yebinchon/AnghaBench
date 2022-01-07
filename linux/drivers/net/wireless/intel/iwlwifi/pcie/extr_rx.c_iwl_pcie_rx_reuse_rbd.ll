; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_reuse_rbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_reuse_rbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_rx_mem_buffer = type { i32 }
%struct.iwl_rxq = type { i32, i32 }
%struct.iwl_trans_pcie = type { %struct.iwl_rb_allocator }
%struct.iwl_rb_allocator = type { i32, i32, i32 }

@RX_CLAIM_REQ_ALLOC = common dso_local global i32 0, align 4
@RX_POST_REQ_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_rx_mem_buffer*, %struct.iwl_rxq*, i32)* @iwl_pcie_rx_reuse_rbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rx_reuse_rbd(%struct.iwl_trans* %0, %struct.iwl_rx_mem_buffer* %1, %struct.iwl_rxq* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_rx_mem_buffer*, align 8
  %7 = alloca %struct.iwl_rxq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_trans_pcie*, align 8
  %10 = alloca %struct.iwl_rb_allocator*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_rx_mem_buffer* %1, %struct.iwl_rx_mem_buffer** %6, align 8
  store %struct.iwl_rxq* %2, %struct.iwl_rxq** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %12 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %11)
  store %struct.iwl_trans_pcie* %12, %struct.iwl_trans_pcie** %9, align 8
  %13 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %9, align 8
  %14 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %13, i32 0, i32 0
  store %struct.iwl_rb_allocator* %14, %struct.iwl_rb_allocator** %10, align 8
  %15 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_rx_mem_buffer, %struct.iwl_rx_mem_buffer* %15, i32 0, i32 0
  %17 = load %struct.iwl_rxq*, %struct.iwl_rxq** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %49

24:                                               ; preds = %4
  %25 = load %struct.iwl_rxq*, %struct.iwl_rxq** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.iwl_rxq*, %struct.iwl_rxq** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RX_CLAIM_REQ_ALLOC, align 4
  %33 = srem i32 %31, %32
  %34 = load i32, i32* @RX_POST_REQ_ALLOC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %24
  %37 = load %struct.iwl_rxq*, %struct.iwl_rxq** %7, align 8
  %38 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %10, align 8
  %39 = call i32 @iwl_pcie_rx_move_to_allocator(%struct.iwl_rxq* %37, %struct.iwl_rb_allocator* %38)
  %40 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %10, align 8
  %41 = getelementptr inbounds %struct.iwl_rb_allocator, %struct.iwl_rb_allocator* %40, i32 0, i32 2
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %10, align 8
  %44 = getelementptr inbounds %struct.iwl_rb_allocator, %struct.iwl_rb_allocator* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %10, align 8
  %47 = getelementptr inbounds %struct.iwl_rb_allocator, %struct.iwl_rb_allocator* %46, i32 0, i32 0
  %48 = call i32 @queue_work(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %23, %36, %24
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_pcie_rx_move_to_allocator(%struct.iwl_rxq*, %struct.iwl_rb_allocator*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
