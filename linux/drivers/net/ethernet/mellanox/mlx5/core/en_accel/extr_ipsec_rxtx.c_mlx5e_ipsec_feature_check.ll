; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_feature_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ipsec_rxtx.c_mlx5e_ipsec_feature_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.sec_path = type { %struct.xfrm_state**, i64 }
%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_ipsec_feature_check(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sec_path*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %10)
  store %struct.sec_path* %11, %struct.sec_path** %8, align 8
  %12 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %13 = icmp ne %struct.sec_path* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %16 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %21 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %20, i32 0, i32 0
  %22 = load %struct.xfrm_state**, %struct.xfrm_state*** %21, align 8
  %23 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %22, i64 0
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %23, align 8
  store %struct.xfrm_state* %24, %struct.xfrm_state** %9, align 8
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %26 = icmp ne %struct.xfrm_state* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %36

34:                                               ; preds = %27, %19
  br label %35

35:                                               ; preds = %34, %14, %3
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
