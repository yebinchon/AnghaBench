; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.igb_ring* }
%struct.igb_ring = type { i32, %struct.TYPE_7__, %struct.sk_buff*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.igb_rx_buffer = type { i32 }

@IGB_RX_BUFFER_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_q_vector*, i32)* @igb_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_clean_rx_irq(%struct.igb_q_vector* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_q_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %union.e1000_adv_rx_desc*, align 8
  %11 = alloca %struct.igb_rx_buffer*, align 8
  %12 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %14 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.igb_ring*, %struct.igb_ring** %15, align 8
  store %struct.igb_ring* %16, %struct.igb_ring** %5, align 8
  %17 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %18 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %17, i32 0, i32 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %21 = call i64 @igb_desc_unused(%struct.igb_ring* %20)
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %113, %112, %105, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ult i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %131

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @IGB_RX_BUFFER_WRITE, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %34, i64 %35)
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %39 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %40 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %38, i32 %41)
  store %union.e1000_adv_rx_desc* %42, %union.e1000_adv_rx_desc** %10, align 8
  %43 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %44 = bitcast %union.e1000_adv_rx_desc* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  br label %131

52:                                               ; preds = %37
  %53 = call i32 (...) @dma_rmb()
  %54 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.igb_rx_buffer* @igb_get_rx_buffer(%struct.igb_ring* %54, i32 %55)
  store %struct.igb_rx_buffer* %56, %struct.igb_rx_buffer** %11, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %61 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %11, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @igb_add_rx_frag(%struct.igb_ring* %60, %struct.igb_rx_buffer* %61, %struct.sk_buff* %62, i32 %63)
  br label %82

65:                                               ; preds = %52
  %66 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %67 = call i64 @ring_uses_build_skb(%struct.igb_ring* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %71 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %11, align 8
  %72 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.sk_buff* @igb_build_skb(%struct.igb_ring* %70, %struct.igb_rx_buffer* %71, %union.e1000_adv_rx_desc* %72, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %6, align 8
  br label %81

75:                                               ; preds = %65
  %76 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %77 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %11, align 8
  %78 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call %struct.sk_buff* @igb_construct_skb(%struct.igb_ring* %76, %struct.igb_rx_buffer* %77, %union.e1000_adv_rx_desc* %78, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %6, align 8
  br label %81

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %87 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %11, align 8
  %92 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %131

95:                                               ; preds = %82
  %96 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %97 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %11, align 8
  %98 = call i32 @igb_put_rx_buffer(%struct.igb_ring* %96, %struct.igb_rx_buffer* %97)
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %9, align 8
  %101 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %102 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %103 = call i64 @igb_is_non_eop(%struct.igb_ring* %101, %union.e1000_adv_rx_desc* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %22

106:                                              ; preds = %95
  %107 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %108 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = call i64 @igb_cleanup_headers(%struct.igb_ring* %107, %union.e1000_adv_rx_desc* %108, %struct.sk_buff* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %22

113:                                              ; preds = %106
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %122 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = call i32 @igb_process_skb_fields(%struct.igb_ring* %121, %union.e1000_adv_rx_desc* %122, %struct.sk_buff* %123)
  %125 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %126 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %125, i32 0, i32 1
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = call i32 @napi_gro_receive(i32* %126, %struct.sk_buff* %127)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %22

131:                                              ; preds = %85, %51, %22
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %134 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %133, i32 0, i32 2
  store %struct.sk_buff* %132, %struct.sk_buff** %134, align 8
  %135 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %136 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %135, i32 0, i32 0
  %137 = call i32 @u64_stats_update_begin(i32* %136)
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %140 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, %138
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %146 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, %144
  store i32 %149, i32* %147, align 4
  %150 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %151 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %150, i32 0, i32 0
  %152 = call i32 @u64_stats_update_end(i32* %151)
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %155 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add i32 %157, %153
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %161 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, %159
  store i32 %164, i32* %162, align 4
  %165 = load i64, i64* %9, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %131
  %168 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %168, i64 %169)
  br label %171

171:                                              ; preds = %167, %131
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i64 @igb_desc_unused(%struct.igb_ring*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @igb_alloc_rx_buffers(%struct.igb_ring*, i64) #1

declare dso_local %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local %struct.igb_rx_buffer* @igb_get_rx_buffer(%struct.igb_ring*, i32) #1

declare dso_local i32 @igb_add_rx_frag(%struct.igb_ring*, %struct.igb_rx_buffer*, %struct.sk_buff*, i32) #1

declare dso_local i64 @ring_uses_build_skb(%struct.igb_ring*) #1

declare dso_local %struct.sk_buff* @igb_build_skb(%struct.igb_ring*, %struct.igb_rx_buffer*, %union.e1000_adv_rx_desc*, i32) #1

declare dso_local %struct.sk_buff* @igb_construct_skb(%struct.igb_ring*, %struct.igb_rx_buffer*, %union.e1000_adv_rx_desc*, i32) #1

declare dso_local i32 @igb_put_rx_buffer(%struct.igb_ring*, %struct.igb_rx_buffer*) #1

declare dso_local i64 @igb_is_non_eop(%struct.igb_ring*, %union.e1000_adv_rx_desc*) #1

declare dso_local i64 @igb_cleanup_headers(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @igb_process_skb_fields(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
