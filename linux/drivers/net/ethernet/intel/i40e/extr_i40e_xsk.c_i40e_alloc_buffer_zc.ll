; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_alloc_buffer_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_xsk.c_i40e_alloc_buffer_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { %struct.TYPE_2__, %struct.xdp_umem* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xdp_umem = type { i64 }
%struct.i40e_rx_buffer = type { i32, i8*, i32 }

@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, %struct.i40e_rx_buffer*)* @i40e_alloc_buffer_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_alloc_buffer_zc(%struct.i40e_ring* %0, %struct.i40e_rx_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca %struct.i40e_rx_buffer*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store %struct.i40e_rx_buffer* %1, %struct.i40e_rx_buffer** %5, align 8
  %10 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %10, i32 0, i32 1
  %12 = load %struct.xdp_umem*, %struct.xdp_umem** %11, align 8
  store %struct.xdp_umem* %12, %struct.xdp_umem** %6, align 8
  %13 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %20 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  store i32 1, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %26 = call i32 @xsk_umem_peek_addr(%struct.xdp_umem* %25, i64* %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  store i32 0, i32* %3, align 4
  br label %72

34:                                               ; preds = %24
  %35 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %36 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %9, align 8
  %40 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @xdp_umem_get_dma(%struct.xdp_umem* %40, i64 %41)
  %43 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i8* @xdp_umem_get_data(%struct.xdp_umem* %52, i64 %53)
  %55 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr i8, i8* %60, i64 %57
  store i8* %61, i8** %59, align 8
  %62 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %65 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @xsk_umem_adjust_offset(%struct.xdp_umem* %62, i64 %63, i64 %66)
  %68 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %71 = call i32 @xsk_umem_discard_addr(%struct.xdp_umem* %70)
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %34, %28, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @xsk_umem_peek_addr(%struct.xdp_umem*, i64*) #1

declare dso_local i32 @xdp_umem_get_dma(%struct.xdp_umem*, i64) #1

declare dso_local i8* @xdp_umem_get_data(%struct.xdp_umem*, i64) #1

declare dso_local i32 @xsk_umem_adjust_offset(%struct.xdp_umem*, i64, i64) #1

declare dso_local i32 @xsk_umem_discard_addr(%struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
