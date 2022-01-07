; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_init_function_ptrs_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_init_function_ptrs_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_desc_if = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"-->xgbe_init_function_ptrs_desc\0A\00", align 1
@xgbe_alloc_ring_resources = common dso_local global i32 0, align 4
@xgbe_free_ring_resources = common dso_local global i32 0, align 4
@xgbe_map_tx_skb = common dso_local global i32 0, align 4
@xgbe_map_rx_buffer = common dso_local global i32 0, align 4
@xgbe_unmap_rdata = common dso_local global i32 0, align 4
@xgbe_wrapper_tx_descriptor_init = common dso_local global i32 0, align 4
@xgbe_wrapper_rx_descriptor_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"<--xgbe_init_function_ptrs_desc\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgbe_init_function_ptrs_desc(%struct.xgbe_desc_if* %0) #0 {
  %2 = alloca %struct.xgbe_desc_if*, align 8
  store %struct.xgbe_desc_if* %0, %struct.xgbe_desc_if** %2, align 8
  %3 = call i32 @DBGPR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @xgbe_alloc_ring_resources, align 4
  %5 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %5, i32 0, i32 6
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @xgbe_free_ring_resources, align 4
  %8 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @xgbe_map_tx_skb, align 4
  %11 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @xgbe_map_rx_buffer, align 4
  %14 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %2, align 8
  %15 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @xgbe_unmap_rdata, align 4
  %17 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @xgbe_wrapper_tx_descriptor_init, align 4
  %20 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %2, align 8
  %21 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @xgbe_wrapper_rx_descriptor_init, align 4
  %23 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 @DBGPR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
