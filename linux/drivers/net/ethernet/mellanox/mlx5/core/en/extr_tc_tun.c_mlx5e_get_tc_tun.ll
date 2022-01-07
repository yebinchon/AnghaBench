; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_get_tc_tun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_mlx5e_get_tc_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_tc_tunnel = type { i32 }
%struct.net_device = type { i32 }

@vxlan_tunnel = common dso_local global %struct.mlx5e_tc_tunnel zeroinitializer, align 4
@geneve_tunnel = common dso_local global %struct.mlx5e_tc_tunnel zeroinitializer, align 4
@gre_tunnel = common dso_local global %struct.mlx5e_tc_tunnel zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5e_tc_tunnel* @mlx5e_get_tc_tun(%struct.net_device* %0) #0 {
  %2 = alloca %struct.mlx5e_tc_tunnel*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = call i64 @netif_is_vxlan(%struct.net_device* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.mlx5e_tc_tunnel* @vxlan_tunnel, %struct.mlx5e_tc_tunnel** %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i64 @netif_is_geneve(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.mlx5e_tc_tunnel* @geneve_tunnel, %struct.mlx5e_tc_tunnel** %2, align 8
  br label %23

13:                                               ; preds = %8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @netif_is_gretap(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @netif_is_ip6gretap(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store %struct.mlx5e_tc_tunnel* @gre_tunnel, %struct.mlx5e_tc_tunnel** %2, align 8
  br label %23

22:                                               ; preds = %17
  store %struct.mlx5e_tc_tunnel* null, %struct.mlx5e_tc_tunnel** %2, align 8
  br label %23

23:                                               ; preds = %22, %21, %12, %7
  %24 = load %struct.mlx5e_tc_tunnel*, %struct.mlx5e_tc_tunnel** %2, align 8
  ret %struct.mlx5e_tc_tunnel* %24
}

declare dso_local i64 @netif_is_vxlan(%struct.net_device*) #1

declare dso_local i64 @netif_is_geneve(%struct.net_device*) #1

declare dso_local i64 @netif_is_gretap(%struct.net_device*) #1

declare dso_local i64 @netif_is_ip6gretap(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
