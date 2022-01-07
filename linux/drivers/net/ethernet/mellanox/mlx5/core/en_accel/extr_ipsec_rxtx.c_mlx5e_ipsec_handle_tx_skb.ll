; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_handle_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_handle_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_tx_wqe = type { i32 }
%struct.sk_buff = type { i64 }
%struct.mlx5e_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.xfrm_offload = type { i32 }
%struct.mlx5e_ipsec_metadata = type { i32 }
%struct.mlx5e_ipsec_sa_entry = type { i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.xfrm_offload*)* }
%struct.xfrm_state = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.sec_path = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mlx5e_ipsec_handle_tx_skb(%struct.net_device* %0, %struct.mlx5e_tx_wqe* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlx5e_tx_wqe*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.xfrm_offload*, align 8
  %10 = alloca %struct.mlx5e_ipsec_metadata*, align 8
  %11 = alloca %struct.mlx5e_ipsec_sa_entry*, align 8
  %12 = alloca %struct.xfrm_state*, align 8
  %13 = alloca %struct.sec_path*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.mlx5e_tx_wqe* %1, %struct.mlx5e_tx_wqe** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx5e_priv* %15, %struct.mlx5e_priv** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %16)
  store %struct.xfrm_offload* %17, %struct.xfrm_offload** %9, align 8
  %18 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %19 = icmp ne %struct.xfrm_offload* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %4, align 8
  br label %150

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %23)
  store %struct.sec_path* %24, %struct.sec_path** %13, align 8
  %25 = load %struct.sec_path*, %struct.sec_path** %13, align 8
  %26 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = call i32 @atomic64_inc(i32* %37)
  br label %147

39:                                               ; preds = %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %40)
  store %struct.xfrm_state* %41, %struct.xfrm_state** %12, align 8
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %43 = icmp ne %struct.xfrm_state* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %50 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = call i32 @atomic64_inc(i32* %53)
  br label %147

55:                                               ; preds = %39
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ETH_P_IP, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @ETH_P_IPV6, align 4
  %73 = call i64 @htons(i32 %72)
  %74 = icmp ne i64 %71, %73
  br label %75

75:                                               ; preds = %68, %61
  %76 = phi i1 [ false, %61 ], [ %74, %68 ]
  br label %77

77:                                               ; preds = %75, %55
  %78 = phi i1 [ true, %55 ], [ %76, %75 ]
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %84 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = call i32 @atomic64_inc(i32* %87)
  br label %147

89:                                               ; preds = %77
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @skb_is_gso(%struct.sk_buff* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %89
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %96 = call i32 @mlx5e_ipsec_remove_trailer(%struct.sk_buff* %94, %struct.xfrm_state* %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %101 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = call i32 @atomic64_inc(i32* %104)
  br label %147

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %89
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = call %struct.mlx5e_ipsec_metadata* @mlx5e_ipsec_add_metadata(%struct.sk_buff* %108)
  store %struct.mlx5e_ipsec_metadata* %109, %struct.mlx5e_ipsec_metadata** %10, align 8
  %110 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %10, align 8
  %111 = call i64 @IS_ERR(%struct.mlx5e_ipsec_metadata* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %115 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = call i32 @atomic64_inc(i32* %118)
  br label %147

120:                                              ; preds = %107
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %6, align 8
  %123 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %122, i32 0, i32 0
  %124 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %125 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %129 = call i32 @mlx5e_ipsec_set_swp(%struct.sk_buff* %121, i32* %123, i32 %127, %struct.xfrm_offload* %128)
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %131 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.mlx5e_ipsec_sa_entry*
  store %struct.mlx5e_ipsec_sa_entry* %134, %struct.mlx5e_ipsec_sa_entry** %11, align 8
  %135 = load %struct.mlx5e_ipsec_sa_entry*, %struct.mlx5e_ipsec_sa_entry** %11, align 8
  %136 = getelementptr inbounds %struct.mlx5e_ipsec_sa_entry, %struct.mlx5e_ipsec_sa_entry* %135, i32 0, i32 0
  %137 = load i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.xfrm_offload*)*, i32 (%struct.sk_buff*, %struct.xfrm_state*, %struct.xfrm_offload*)** %136, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  %140 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %141 = call i32 %137(%struct.sk_buff* %138, %struct.xfrm_state* %139, %struct.xfrm_offload* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = load %struct.mlx5e_ipsec_metadata*, %struct.mlx5e_ipsec_metadata** %10, align 8
  %144 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %145 = call i32 @mlx5e_ipsec_set_metadata(%struct.sk_buff* %142, %struct.mlx5e_ipsec_metadata* %143, %struct.xfrm_offload* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %146, %struct.sk_buff** %4, align 8
  br label %150

147:                                              ; preds = %113, %99, %82, %48, %32
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = call i32 @kfree_skb(%struct.sk_buff* %148)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %150

150:                                              ; preds = %147, %120, %20
  %151 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %151
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @mlx5e_ipsec_remove_trailer(%struct.sk_buff*, %struct.xfrm_state*) #1

declare dso_local %struct.mlx5e_ipsec_metadata* @mlx5e_ipsec_add_metadata(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5e_ipsec_metadata*) #1

declare dso_local i32 @mlx5e_ipsec_set_swp(%struct.sk_buff*, i32*, i32, %struct.xfrm_offload*) #1

declare dso_local i32 @mlx5e_ipsec_set_metadata(%struct.sk_buff*, %struct.mlx5e_ipsec_metadata*, %struct.xfrm_offload*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
