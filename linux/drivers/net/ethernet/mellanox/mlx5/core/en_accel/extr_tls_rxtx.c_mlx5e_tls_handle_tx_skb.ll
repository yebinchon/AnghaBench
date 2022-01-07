; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_handle_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_handle_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_txqsq = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.mlx5e_tx_wqe = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_tls_offload_context_tx = type { i64, i32 }
%struct.tls_context = type { %struct.net_device* }
%struct.TYPE_7__ = type { i32 }

@tls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mlx5e_tls_handle_tx_skb(%struct.net_device* %0, %struct.mlx5e_txqsq* %1, %struct.sk_buff* %2, %struct.mlx5e_tx_wqe** %3, i32* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlx5e_txqsq*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mlx5e_tx_wqe**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mlx5e_priv*, align 8
  %12 = alloca %struct.mlx5e_tls_offload_context_tx*, align 8
  %13 = alloca %struct.tls_context*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.mlx5e_txqsq* %1, %struct.mlx5e_txqsq** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.mlx5e_tx_wqe** %3, %struct.mlx5e_tx_wqe*** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %11, align 8
  %19 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @tls, align 4
  %25 = call i64 @MLX5_CAP_GEN(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load %struct.mlx5e_tx_wqe**, %struct.mlx5e_tx_wqe*** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call %struct.sk_buff* @mlx5e_ktls_handle_tx_skb(%struct.net_device* %28, %struct.mlx5e_txqsq* %29, %struct.sk_buff* %30, %struct.mlx5e_tx_wqe** %31, i32* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %8, align 8
  br label %124

34:                                               ; preds = %5
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tls_is_sk_tx_device_offloaded(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39, %34
  br label %124

46:                                               ; preds = %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = call i32 @skb_transport_offset(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = call i32 @tcp_hdrlen(%struct.sk_buff* %52)
  %54 = add nsw i32 %51, %53
  %55 = sub nsw i32 %49, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %124

59:                                               ; preds = %46
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.tls_context* @tls_get_ctx(i32 %62)
  store %struct.tls_context* %63, %struct.tls_context** %13, align 8
  %64 = load %struct.tls_context*, %struct.tls_context** %13, align 8
  %65 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %64, i32 0, i32 0
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = icmp ne %struct.net_device* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %124

73:                                               ; preds = %59
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = call %struct.TYPE_7__* @tcp_hdr(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohl(i32 %77)
  store i64 %78, i64* %16, align 8
  %79 = load %struct.tls_context*, %struct.tls_context** %13, align 8
  %80 = call %struct.mlx5e_tls_offload_context_tx* @mlx5e_get_tls_tx_context(%struct.tls_context* %79)
  store %struct.mlx5e_tls_offload_context_tx* %80, %struct.mlx5e_tls_offload_context_tx** %12, align 8
  %81 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %12, align 8
  %82 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %73
  %91 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %12, align 8
  %92 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %7, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = load %struct.mlx5e_tx_wqe**, %struct.mlx5e_tx_wqe*** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %11, align 8
  %97 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call %struct.sk_buff* @mlx5e_tls_handle_ooo(%struct.mlx5e_tls_offload_context_tx* %91, %struct.mlx5e_txqsq* %92, %struct.sk_buff* %93, %struct.mlx5e_tx_wqe** %94, i32* %95, %struct.TYPE_8__* %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %8, align 8
  br label %124

100:                                              ; preds = %73
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %12, align 8
  %103 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @mlx5e_tls_add_metadata(%struct.sk_buff* %101, i32 %104)
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %11, align 8
  %110 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = call i32 @atomic64_inc(i32* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %115)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %124

117:                                              ; preds = %100
  %118 = load i64, i64* %16, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %12, align 8
  %123 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %117, %108, %90, %72, %58, %45, %27
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %125
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local %struct.sk_buff* @mlx5e_ktls_handle_tx_skb(%struct.net_device*, %struct.mlx5e_txqsq*, %struct.sk_buff*, %struct.mlx5e_tx_wqe**, i32*) #1

declare dso_local i32 @tls_is_sk_tx_device_offloaded(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.tls_context* @tls_get_ctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.TYPE_7__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.mlx5e_tls_offload_context_tx* @mlx5e_get_tls_tx_context(%struct.tls_context*) #1

declare dso_local %struct.sk_buff* @mlx5e_tls_handle_ooo(%struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_txqsq*, %struct.sk_buff*, %struct.mlx5e_tx_wqe**, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mlx5e_tls_add_metadata(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
