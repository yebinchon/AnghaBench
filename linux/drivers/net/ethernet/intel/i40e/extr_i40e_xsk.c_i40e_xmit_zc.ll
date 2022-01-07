; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xmit_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_xmit_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, i32, %struct.i40e_tx_buffer*, i32, %struct.TYPE_2__ }
%struct.i40e_tx_buffer = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_tx_desc = type { i32, i32 }
%struct.xdp_desc = type { i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_ICRC = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_EOP = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_RS = common dso_local global i32 0, align 4
@I40E_TXD_QW1_CMD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, i32)* @i40e_xmit_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xmit_zc(%struct.i40e_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_tx_desc*, align 8
  %6 = alloca %struct.i40e_tx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_desc, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.i40e_tx_desc* null, %struct.i40e_tx_desc** %5, align 8
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %89, %2
  %11 = load i32, i32* %4, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ugt i32 %11, 0
  br i1 %13, label %14, label %90

14:                                               ; preds = %10
  %15 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %16 = call i32 @I40E_DESC_UNUSED(%struct.i40e_ring* %15)
  %17 = call i32 @unlikely(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  store i32 0, i32* %7, align 4
  br label %90

25:                                               ; preds = %14
  %26 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %27 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @xsk_umem_consume_tx(i32 %28, %struct.xdp_desc* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %90

32:                                               ; preds = %25
  %33 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %34 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @xdp_umem_get_dma(i32 %35, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %46 = call i32 @dma_sync_single_for_device(i32 %41, i32 %42, i32 %44, i32 %45)
  %47 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %47, i32 0, i32 3
  %49 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %48, align 8
  %50 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %51 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %49, i64 %52
  store %struct.i40e_tx_buffer* %53, %struct.i40e_tx_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %59 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %58, i64 %61)
  store %struct.i40e_tx_desc* %62, %struct.i40e_tx_desc** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @cpu_to_le64(i32 %63)
  %65 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %5, align 8
  %66 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @I40E_TX_DESC_CMD_ICRC, align 4
  %68 = load i32, i32* @I40E_TX_DESC_CMD_EOP, align 4
  %69 = or i32 %67, %68
  %70 = getelementptr inbounds %struct.xdp_desc, %struct.xdp_desc* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @build_ctob(i32 %69, i32 0, i32 %71, i32 0)
  %73 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %5, align 8
  %74 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %80 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %83 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %32
  %87 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %88 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %32
  br label %10

90:                                               ; preds = %31, %19, %10
  %91 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %5, align 8
  %92 = icmp ne %struct.i40e_tx_desc* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load i32, i32* @I40E_TX_DESC_CMD_RS, align 4
  %95 = load i32, i32* @I40E_TXD_QW1_CMD_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %5, align 8
  %98 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %102 = call i32 @i40e_xdp_ring_update_tail(%struct.i40e_ring* %101)
  %103 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %104 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @xsk_umem_consume_tx_done(i32 %105)
  br label %107

107:                                              ; preds = %93, %90
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i1 [ false, %107 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  ret i32 %115
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @I40E_DESC_UNUSED(%struct.i40e_ring*) #1

declare dso_local i32 @xsk_umem_consume_tx(i32, %struct.xdp_desc*) #1

declare dso_local i32 @xdp_umem_get_dma(i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @build_ctob(i32, i32, i32, i32) #1

declare dso_local i32 @i40e_xdp_ring_update_tail(%struct.i40e_ring*) #1

declare dso_local i32 @xsk_umem_consume_tx_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
