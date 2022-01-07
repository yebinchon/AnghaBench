; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_handle_ooo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls_rxtx.c_mlx5e_tls_handle_ooo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tls_offload_context_tx = type { i64, i32 }
%struct.mlx5e_txqsq = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.mlx5e_tx_wqe = type { i32 }
%struct.mlx5e_tls = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.sync_info = type { i32, i32, i64, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_txqsq*, %struct.sk_buff*, %struct.mlx5e_tx_wqe**, i32*, %struct.mlx5e_tls*)* @mlx5e_tls_handle_ooo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mlx5e_tls_handle_ooo(%struct.mlx5e_tls_offload_context_tx* %0, %struct.mlx5e_txqsq* %1, %struct.sk_buff* %2, %struct.mlx5e_tx_wqe** %3, i32* %4, %struct.mlx5e_tls* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mlx5e_tls_offload_context_tx*, align 8
  %9 = alloca %struct.mlx5e_txqsq*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.mlx5e_tx_wqe**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mlx5e_tls*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.sync_info, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.mlx5e_tls_offload_context_tx* %0, %struct.mlx5e_tls_offload_context_tx** %8, align 8
  store %struct.mlx5e_txqsq* %1, %struct.mlx5e_txqsq** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.mlx5e_tx_wqe** %3, %struct.mlx5e_tx_wqe*** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.mlx5e_tls* %5, %struct.mlx5e_tls** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call %struct.TYPE_7__* @tcp_hdr(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ntohl(i32 %24)
  store i64 %25, i64* %14, align 8
  store i32 0, i32* %17, align 4
  %26 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %9, align 8
  %27 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %8, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i64 @mlx5e_tls_get_sync_data(%struct.mlx5e_tls_offload_context_tx* %32, i64 %33, %struct.sync_info* %15)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load %struct.mlx5e_tls*, %struct.mlx5e_tls** %13, align 8
  %38 = getelementptr inbounds %struct.mlx5e_tls, %struct.mlx5e_tls* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = call i32 @atomic64_inc(i32* %39)
  br label %198

41:                                               ; preds = %6
  %42 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %41
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = call i32 @skb_transport_offset(%struct.sk_buff* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = call i32 @tcp_hdrlen(%struct.sk_buff* %51)
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %18, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  store i64 %59, i64* %20, align 8
  %60 = load i64, i64* %20, align 8
  %61 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 0, %62
  %64 = icmp sle i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @likely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %7, align 8
  br label %201

70:                                               ; preds = %48
  %71 = load %struct.mlx5e_tls*, %struct.mlx5e_tls** %13, align 8
  %72 = getelementptr inbounds %struct.mlx5e_tls, %struct.mlx5e_tls* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = call i32 @atomic64_inc(i32* %73)
  br label %198

75:                                               ; preds = %41
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %8, align 8
  %78 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mlx5e_tls_add_metadata(%struct.sk_buff* %76, i32 %79)
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.mlx5e_tls*, %struct.mlx5e_tls** %13, align 8
  %85 = getelementptr inbounds %struct.mlx5e_tls, %struct.mlx5e_tls* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = call i32 @atomic64_inc(i32* %86)
  br label %198

88:                                               ; preds = %75
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = call i32 @skb_transport_offset(%struct.sk_buff* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = call i32 @tcp_hdrlen(%struct.sk_buff* %91)
  %93 = add nsw i32 %90, %92
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 4
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @GFP_ATOMIC, align 4
  %103 = call %struct.sk_buff* @alloc_skb(i32 %101, i32 %102)
  store %struct.sk_buff* %103, %struct.sk_buff** %16, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %105 = icmp ne %struct.sk_buff* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %88
  %111 = load %struct.mlx5e_tls*, %struct.mlx5e_tls** %13, align 8
  %112 = getelementptr inbounds %struct.mlx5e_tls, %struct.mlx5e_tls* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = call i32 @atomic64_inc(i32* %113)
  br label %198

115:                                              ; preds = %88
  %116 = load i64, i64* %14, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = sub nsw i64 %120, %122
  %124 = load %struct.mlx5e_tls_offload_context_tx*, %struct.mlx5e_tls_offload_context_tx** %8, align 8
  %125 = getelementptr inbounds %struct.mlx5e_tls_offload_context_tx, %struct.mlx5e_tls_offload_context_tx* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @skb_put(%struct.sk_buff* %126, i32 %127)
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %148, %115
  %130 = load i32, i32* %19, align 4
  %131 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %142 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %141)
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %134
  %149 = load i32, i32* %19, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %19, align 4
  br label %129

151:                                              ; preds = %129
  %152 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %155 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %9, align 8
  %171 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %169
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %180 = load i64, i64* %14, align 8
  %181 = load i32, i32* %18, align 4
  %182 = getelementptr inbounds %struct.sync_info, %struct.sync_info* %15, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @cpu_to_be64(i32 %183)
  %185 = call i32 @mlx5e_tls_complete_sync_skb(%struct.sk_buff* %178, %struct.sk_buff* %179, i64 %180, i32 %181, i32 %184)
  %186 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %9, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %188 = load %struct.mlx5e_tx_wqe**, %struct.mlx5e_tx_wqe*** %11, align 8
  %189 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %188, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @mlx5e_sq_xmit(%struct.mlx5e_txqsq* %186, %struct.sk_buff* %187, %struct.mlx5e_tx_wqe* %189, i32 %191, i32 1)
  %193 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %9, align 8
  %194 = load i32*, i32** %12, align 8
  %195 = call %struct.mlx5e_tx_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq* %193, i32 4, i32* %194)
  %196 = load %struct.mlx5e_tx_wqe**, %struct.mlx5e_tx_wqe*** %11, align 8
  store %struct.mlx5e_tx_wqe* %195, %struct.mlx5e_tx_wqe** %196, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %197, %struct.sk_buff** %7, align 8
  br label %201

198:                                              ; preds = %110, %83, %70, %36
  %199 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %200 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %199)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %201

201:                                              ; preds = %198, %151, %68
  %202 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %202
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.TYPE_7__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @mlx5e_tls_get_sync_data(%struct.mlx5e_tls_offload_context_tx*, i64, %struct.sync_info*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mlx5e_tls_add_metadata(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @mlx5e_tls_complete_sync_skb(%struct.sk_buff*, %struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @mlx5e_sq_xmit(%struct.mlx5e_txqsq*, %struct.sk_buff*, %struct.mlx5e_tx_wqe*, i32, i32) #1

declare dso_local %struct.mlx5e_tx_wqe* @mlx5e_sq_fetch_wqe(%struct.mlx5e_txqsq*, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
