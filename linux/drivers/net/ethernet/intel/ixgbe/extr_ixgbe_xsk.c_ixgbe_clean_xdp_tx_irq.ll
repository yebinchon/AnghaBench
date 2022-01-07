; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_clean_xdp_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_clean_xdp_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ixgbe_ring = type { i64, i64, i64, %struct.xdp_umem*, i32, %struct.TYPE_5__, %struct.ixgbe_tx_buffer* }
%struct.xdp_umem = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ixgbe_tx_buffer = type { i32*, i64, i64 }
%union.ixgbe_adv_tx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IXGBE_TXD_STAT_DD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_clean_xdp_tx_irq(%struct.ixgbe_q_vector* %0, %struct.ixgbe_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_q_vector*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xdp_umem*, align 8
  %12 = alloca %union.ixgbe_adv_tx_desc*, align 8
  %13 = alloca %struct.ixgbe_tx_buffer*, align 8
  %14 = alloca i64, align 8
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %22 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %21, i32 0, i32 3
  %23 = load %struct.xdp_umem*, %struct.xdp_umem** %22, align 8
  store %struct.xdp_umem* %23, %struct.xdp_umem** %11, align 8
  store i64 0, i64* %14, align 8
  %24 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %24, i32 0, i32 6
  %26 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %26, i64 %27
  store %struct.ixgbe_tx_buffer* %28, %struct.ixgbe_tx_buffer** %13, align 8
  %29 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring* %29, i64 %30)
  store %union.ixgbe_adv_tx_desc* %31, %union.ixgbe_adv_tx_desc** %12, align 8
  br label %32

32:                                               ; preds = %95, %3
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %32
  %37 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %12, align 8
  %38 = bitcast %union.ixgbe_adv_tx_desc* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IXGBE_TXD_STAT_DD, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %98

46:                                               ; preds = %36
  %47 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %48 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %55 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %62 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %46
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %67 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %68 = call i32 @ixgbe_clean_xdp_tx_buffer(%struct.ixgbe_ring* %66, %struct.ixgbe_tx_buffer* %67)
  br label %72

69:                                               ; preds = %46
  %70 = load i64, i64* %14, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %14, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %74 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %13, align 8
  %76 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %75, i32 1
  store %struct.ixgbe_tx_buffer* %76, %struct.ixgbe_tx_buffer** %13, align 8
  %77 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %12, align 8
  %78 = getelementptr inbounds %union.ixgbe_adv_tx_desc, %union.ixgbe_adv_tx_desc* %77, i32 1
  store %union.ixgbe_adv_tx_desc* %78, %union.ixgbe_adv_tx_desc** %12, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %83 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %72
  store i64 0, i64* %7, align 8
  %90 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %91 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %90, i32 0, i32 6
  %92 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %91, align 8
  store %struct.ixgbe_tx_buffer* %92, %struct.ixgbe_tx_buffer** %13, align 8
  %93 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %94 = call %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring* %93, i64 0)
  store %union.ixgbe_adv_tx_desc* %94, %union.ixgbe_adv_tx_desc** %12, align 8
  br label %95

95:                                               ; preds = %89, %72
  %96 = load %union.ixgbe_adv_tx_desc*, %union.ixgbe_adv_tx_desc** %12, align 8
  %97 = call i32 @prefetch(%union.ixgbe_adv_tx_desc* %96)
  br label %32

98:                                               ; preds = %45, %32
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %101 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %103 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %102, i32 0, i32 4
  %104 = call i32 @u64_stats_update_begin(i32* %103)
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %107 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %113 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %118 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %117, i32 0, i32 4
  %119 = call i32 @u64_stats_update_end(i32* %118)
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %122 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, %120
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %128 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add i32 %130, %126
  store i32 %131, i32* %129, align 4
  %132 = load i64, i64* %14, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %98
  %135 = load %struct.xdp_umem*, %struct.xdp_umem** %11, align 8
  %136 = load i64, i64* %14, align 8
  %137 = call i32 @xsk_umem_complete_tx(%struct.xdp_umem* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %98
  %139 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %140 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %139, i32 0, i32 3
  %141 = load %struct.xdp_umem*, %struct.xdp_umem** %140, align 8
  %142 = call i64 @xsk_umem_uses_need_wakeup(%struct.xdp_umem* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %146 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %145, i32 0, i32 3
  %147 = load %struct.xdp_umem*, %struct.xdp_umem** %146, align 8
  %148 = call i32 @xsk_set_tx_need_wakeup(%struct.xdp_umem* %147)
  br label %149

149:                                              ; preds = %144, %138
  %150 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %151 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %152 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ixgbe_xmit_zc(%struct.ixgbe_ring* %150, i32 %154)
  ret i32 %155
}

declare dso_local %union.ixgbe_adv_tx_desc* @IXGBE_TX_DESC(%struct.ixgbe_ring*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ixgbe_clean_xdp_tx_buffer(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @prefetch(%union.ixgbe_adv_tx_desc*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @xsk_umem_complete_tx(%struct.xdp_umem*, i64) #1

declare dso_local i64 @xsk_umem_uses_need_wakeup(%struct.xdp_umem*) #1

declare dso_local i32 @xsk_set_tx_need_wakeup(%struct.xdp_umem*) #1

declare dso_local i32 @ixgbe_xmit_zc(%struct.ixgbe_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
