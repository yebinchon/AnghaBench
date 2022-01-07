; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_build_sp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_build_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mlx5e_ipsec_metadata = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mlx5e_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.xfrm_offload = type { i32, i32, i32 }
%struct.sec_path = type { i32, i32, %struct.xfrm_state** }

@CRYPTO_DONE = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@XFRM_ESP_NO_TRAILER = common dso_local global i32 0, align 4
@CRYPTO_TUNNEL_ESP_AUTH_FAILED = common dso_local global i32 0, align 4
@CRYPTO_INVALID_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.net_device*, %struct.sk_buff*, %struct.mlx5e_ipsec_metadata*)* @mlx5e_ipsec_build_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @mlx5e_ipsec_build_sp(%struct.net_device* %0, %struct.sk_buff* %1, %struct.mlx5e_ipsec_metadata* %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mlx5e_ipsec_metadata*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.xfrm_offload*, align 8
  %10 = alloca %struct.xfrm_state*, align 8
  %11 = alloca %struct.sec_path*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.mlx5e_ipsec_metadata* %2, %struct.mlx5e_ipsec_metadata** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx5e_priv* %14, %struct.mlx5e_priv** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.sec_path* @secpath_set(%struct.sk_buff* %15)
  store %struct.sec_path* %16, %struct.sec_path** %11, align 8
  %17 = load %struct.sec_path*, %struct.sec_path** %11, align 8
  %18 = icmp ne %struct.sec_path* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = call i32 @atomic64_inc(i32* %28)
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %122

30:                                               ; preds = %3
  %31 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.xfrm_state* @mlx5e_ipsec_sadb_rx_lookup(%struct.TYPE_8__* %39, i32 %40)
  store %struct.xfrm_state* %41, %struct.xfrm_state** %10, align 8
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %43 = icmp ne %struct.xfrm_state* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = call i32 @atomic64_inc(i32* %53)
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %122

55:                                               ; preds = %30
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %56)
  store %struct.sec_path* %57, %struct.sec_path** %11, align 8
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %59 = load %struct.sec_path*, %struct.sec_path** %11, align 8
  %60 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %59, i32 0, i32 2
  %61 = load %struct.xfrm_state**, %struct.xfrm_state*** %60, align 8
  %62 = load %struct.sec_path*, %struct.sec_path** %11, align 8
  %63 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %61, i64 %66
  store %struct.xfrm_state* %58, %struct.xfrm_state** %67, align 8
  %68 = load %struct.sec_path*, %struct.sec_path** %11, align 8
  %69 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %72)
  store %struct.xfrm_offload* %73, %struct.xfrm_offload** %9, align 8
  %74 = load i32, i32* @CRYPTO_DONE, align 4
  %75 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %76 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %7, align 8
  %78 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %113 [
    i32 128, label %80
    i32 130, label %105
    i32 129, label %109
  ]

80:                                               ; preds = %55
  %81 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %82 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %83 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %85 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @likely(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %80
  %92 = load i32, i32* @XFRM_ESP_NO_TRAILER, align 4
  %93 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %94 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %7, align 8
  %98 = getelementptr inbounds %struct.mlx5e_ipsec_metadata, %struct.mlx5e_ipsec_metadata* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %103 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %91, %80
  br label %120

105:                                              ; preds = %55
  %106 = load i32, i32* @CRYPTO_TUNNEL_ESP_AUTH_FAILED, align 4
  %107 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %108 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %120

109:                                              ; preds = %55
  %110 = load i32, i32* @CRYPTO_INVALID_PROTOCOL, align 4
  %111 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %112 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %120

113:                                              ; preds = %55
  %114 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %115 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = call i32 @atomic64_inc(i32* %118)
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %122

120:                                              ; preds = %109, %105, %104
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  store %struct.xfrm_state* %121, %struct.xfrm_state** %4, align 8
  br label %122

122:                                              ; preds = %120, %113, %48, %23
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  ret %struct.xfrm_state* %123
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sec_path* @secpath_set(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.xfrm_state* @mlx5e_ipsec_sadb_rx_lookup(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local i32 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
