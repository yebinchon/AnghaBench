; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_set_iv_esn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_set_iv_esn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.xfrm_replay_state_esn* }
%struct.xfrm_replay_state_esn = type { i64 }
%struct.xfrm_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@MLX5E_IPSEC_ESN_SCOPE_MID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_ipsec_set_iv_esn(%struct.sk_buff* %0, %struct.xfrm_state* %1, %struct.xfrm_offload* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_offload*, align 8
  %7 = alloca %struct.xfrm_replay_state_esn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_offload* %2, %struct.xfrm_offload** %6, align 8
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 0
  %14 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  store %struct.xfrm_replay_state_esn* %14, %struct.xfrm_replay_state_esn** %7, align 8
  %15 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %7, align 8
  %16 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @skb_is_gso(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @MLX5E_IPSEC_ESN_SCOPE_MID, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i64, i64* @MLX5E_IPSEC_ESN_SCOPE_MID, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = icmp slt i64 %26, %32
  br label %34

34:                                               ; preds = %25, %21, %3
  %35 = phi i1 [ false, %21 ], [ false, %3 ], [ %33, %25 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %41 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %47 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.xfrm_offload*, %struct.xfrm_offload** %6, align 8
  %52 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 32
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = call i32 @cpu_to_be64(i64 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @skb_transport_offset(%struct.sk_buff* %61)
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @skb_store_bits(%struct.sk_buff* %66, i32 %67, i32* %10, i32 8)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_store_bits(%struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
