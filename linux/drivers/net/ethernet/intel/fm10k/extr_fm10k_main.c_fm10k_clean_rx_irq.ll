; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_q_vector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fm10k_ring = type { i32, %struct.TYPE_5__, %struct.sk_buff*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%union.fm10k_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FM10K_RX_BUFFER_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_q_vector*, %struct.fm10k_ring*, i32)* @fm10k_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_clean_rx_irq(%struct.fm10k_q_vector* %0, %struct.fm10k_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.fm10k_q_vector*, align 8
  %5 = alloca %struct.fm10k_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %union.fm10k_rx_desc*, align 8
  store %struct.fm10k_q_vector* %0, %struct.fm10k_q_vector** %4, align 8
  store %struct.fm10k_ring* %1, %struct.fm10k_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %13 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %12, i32 0, i32 2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %16 = call i64 @fm10k_desc_unused(%struct.fm10k_ring* %15)
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %68, %67, %60, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ult i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %17
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @FM10K_RX_BUFFER_WRITE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @fm10k_alloc_rx_buffers(%struct.fm10k_ring* %29, i64 %30)
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %34 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %35 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call %union.fm10k_rx_desc* @FM10K_RX_DESC(%struct.fm10k_ring* %33, i32 %36)
  store %union.fm10k_rx_desc* %37, %union.fm10k_rx_desc** %11, align 8
  %38 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %11, align 8
  %39 = bitcast %union.fm10k_rx_desc* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %82

44:                                               ; preds = %32
  %45 = call i32 (...) @dma_rmb()
  %46 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %47 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = call %struct.sk_buff* @fm10k_fetch_rx_buffer(%struct.fm10k_ring* %46, %union.fm10k_rx_desc* %47, %struct.sk_buff* %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %82

53:                                               ; preds = %44
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %10, align 8
  %56 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %57 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %11, align 8
  %58 = call i64 @fm10k_is_non_eop(%struct.fm10k_ring* %56, %union.fm10k_rx_desc* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %17

61:                                               ; preds = %53
  %62 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %63 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %11, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i64 @fm10k_cleanup_headers(%struct.fm10k_ring* %62, %union.fm10k_rx_desc* %63, %struct.sk_buff* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %17

68:                                               ; preds = %61
  %69 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %70 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %11, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i64 @fm10k_process_skb_fields(%struct.fm10k_ring* %69, %union.fm10k_rx_desc* %70, %struct.sk_buff* %71)
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %4, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i32 @fm10k_receive_skb(%struct.fm10k_q_vector* %77, %struct.sk_buff* %78)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %17

82:                                               ; preds = %52, %43, %17
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %85 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %84, i32 0, i32 2
  store %struct.sk_buff* %83, %struct.sk_buff** %85, align 8
  %86 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %87 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %86, i32 0, i32 0
  %88 = call i32 @u64_stats_update_begin(i32* %87)
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %91 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %97 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load %struct.fm10k_ring*, %struct.fm10k_ring** %5, align 8
  %102 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %101, i32 0, i32 0
  %103 = call i32 @u64_stats_update_end(i32* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %4, align 8
  %106 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, %104
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %4, align 8
  %112 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i64 @fm10k_desc_unused(%struct.fm10k_ring*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @fm10k_alloc_rx_buffers(%struct.fm10k_ring*, i64) #1

declare dso_local %union.fm10k_rx_desc* @FM10K_RX_DESC(%struct.fm10k_ring*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local %struct.sk_buff* @fm10k_fetch_rx_buffer(%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @fm10k_is_non_eop(%struct.fm10k_ring*, %union.fm10k_rx_desc*) #1

declare dso_local i64 @fm10k_cleanup_headers(%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @fm10k_process_skb_fields(%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @fm10k_receive_skb(%struct.fm10k_q_vector*, %struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
