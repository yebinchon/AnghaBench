; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_mlx5e_ktls_handle_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls_tx.c_mlx5e_ktls_handle_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_txqsq = type { %struct.mlx5e_sq_stats* }
%struct.mlx5e_sq_stats = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.mlx5e_tx_wqe = type { %struct.mlx5_wqe_ctrl_seg }
%struct.mlx5_wqe_ctrl_seg = type { i32 }
%struct.mlx5e_ktls_offload_context_tx = type { i64, i32 }
%struct.tls_context = type { %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MLX5E_KTLS_SYNC_DONE = common dso_local global i32 0, align 4
@MLX5E_KTLS_SYNC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mlx5e_ktls_handle_tx_skb(%struct.net_device* %0, %struct.mlx5e_txqsq* %1, %struct.sk_buff* %2, %struct.mlx5e_tx_wqe** %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlx5e_txqsq*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mlx5e_tx_wqe**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx5e_ktls_offload_context_tx*, align 8
  %13 = alloca %struct.mlx5e_sq_stats*, align 8
  %14 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %15 = alloca %struct.tls_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.mlx5e_txqsq* %1, %struct.mlx5e_txqsq** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %struct.mlx5e_tx_wqe** %3, %struct.mlx5e_tx_wqe*** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %20 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %19, i32 0, i32 0
  %21 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %20, align 8
  store %struct.mlx5e_sq_stats* %21, %struct.mlx5e_sq_stats** %13, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tls_is_sk_tx_device_offloaded(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %5
  br label %154

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call i32 @skb_transport_offset(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call i32 @tcp_hdrlen(%struct.sk_buff* %39)
  %41 = add nsw i32 %38, %40
  %42 = sub nsw i32 %36, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %154

46:                                               ; preds = %33
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.tls_context* @tls_get_ctx(i32 %49)
  store %struct.tls_context* %50, %struct.tls_context** %15, align 8
  %51 = load %struct.tls_context*, %struct.tls_context** %15, align 8
  %52 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %51, i32 0, i32 0
  %53 = load %struct.net_device*, %struct.net_device** %52, align 8
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = icmp ne %struct.net_device* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON_ONCE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %156

60:                                               ; preds = %46
  %61 = load %struct.tls_context*, %struct.tls_context** %15, align 8
  %62 = call %struct.mlx5e_ktls_offload_context_tx* @mlx5e_get_ktls_tx_priv_ctx(%struct.tls_context* %61)
  store %struct.mlx5e_ktls_offload_context_tx* %62, %struct.mlx5e_ktls_offload_context_tx** %12, align 8
  %63 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %12, align 8
  %64 = call i32 @mlx5e_ktls_tx_offload_test_and_clear_pending(%struct.mlx5e_ktls_offload_context_tx* %63)
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %60
  %68 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %69 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %12, align 8
  %70 = call i32 @mlx5e_ktls_tx_post_param_wqes(%struct.mlx5e_txqsq* %68, %struct.mlx5e_ktls_offload_context_tx* %69, i32 0, i32 0)
  %71 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call %struct.mlx5e_tx_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq* %71, i32 4, i32* %72)
  %74 = load %struct.mlx5e_tx_wqe**, %struct.mlx5e_tx_wqe*** %10, align 8
  store %struct.mlx5e_tx_wqe* %73, %struct.mlx5e_tx_wqe** %74, align 8
  %75 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %76 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %67, %60
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ntohl(i32 %83)
  store i64 %84, i64* %17, align 8
  %85 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %12, align 8
  %86 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %17, align 8
  %89 = icmp ne i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %79
  %94 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %12, align 8
  %95 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i64, i64* %17, align 8
  %98 = call i32 @mlx5e_ktls_tx_handle_ooo(%struct.mlx5e_ktls_offload_context_tx* %94, %struct.mlx5e_txqsq* %95, i32 %96, i64 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @MLX5E_KTLS_SYNC_DONE, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @likely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %8, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call %struct.mlx5e_tx_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq* %106, i32 4, i32* %107)
  %109 = load %struct.mlx5e_tx_wqe**, %struct.mlx5e_tx_wqe*** %10, align 8
  store %struct.mlx5e_tx_wqe* %108, %struct.mlx5e_tx_wqe** %109, align 8
  br label %116

110:                                              ; preds = %93
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @MLX5E_KTLS_SYNC_FAIL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %156

115:                                              ; preds = %110
  br label %154

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %79
  %118 = load i64, i64* %17, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %12, align 8
  %123 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.mlx5e_tx_wqe**, %struct.mlx5e_tx_wqe*** %10, align 8
  %125 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %124, align 8
  %126 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %125, i32 0, i32 0
  store %struct.mlx5_wqe_ctrl_seg* %126, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %127 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %12, align 8
  %128 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 8
  %131 = call i32 @cpu_to_be32(i32 %130)
  %132 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %133 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = call i64 @skb_is_gso(%struct.sk_buff* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %117
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  br label %143

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %137
  %144 = phi i32 [ %141, %137 ], [ 1, %142 ]
  %145 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %146 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load %struct.mlx5e_sq_stats*, %struct.mlx5e_sq_stats** %13, align 8
  %151 = getelementptr inbounds %struct.mlx5e_sq_stats, %struct.mlx5e_sq_stats* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %143, %115, %45, %32
  %155 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %155, %struct.sk_buff** %6, align 8
  br label %159

156:                                              ; preds = %114, %59
  %157 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %158 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %157)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %159

159:                                              ; preds = %156, %154
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %160
}

declare dso_local i32 @tls_is_sk_tx_device_offloaded(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.tls_context* @tls_get_ctx(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.mlx5e_ktls_offload_context_tx* @mlx5e_get_ktls_tx_priv_ctx(%struct.tls_context*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_ktls_tx_offload_test_and_clear_pending(%struct.mlx5e_ktls_offload_context_tx*) #1

declare dso_local i32 @mlx5e_ktls_tx_post_param_wqes(%struct.mlx5e_txqsq*, %struct.mlx5e_ktls_offload_context_tx*, i32, i32) #1

declare dso_local %struct.mlx5e_tx_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq*, i32, i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.TYPE_3__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @mlx5e_ktls_tx_handle_ooo(%struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_txqsq*, i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
