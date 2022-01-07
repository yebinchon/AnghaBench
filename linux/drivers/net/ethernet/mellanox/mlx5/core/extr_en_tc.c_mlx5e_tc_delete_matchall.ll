; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_delete_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_delete_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.tc_cls_matchall_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_tc_delete_matchall(%struct.mlx5e_priv* %0, %struct.tc_cls_matchall_offload* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.tc_cls_matchall_offload*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %4, align 8
  %6 = load %struct.tc_cls_matchall_offload*, %struct.tc_cls_matchall_offload** %4, align 8
  %7 = getelementptr inbounds %struct.tc_cls_matchall_offload, %struct.tc_cls_matchall_offload* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  store %struct.netlink_ext_ack* %9, %struct.netlink_ext_ack** %5, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %11 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %12 = call i32 @apply_police_params(%struct.mlx5e_priv* %10, i32 0, %struct.netlink_ext_ack* %11)
  ret i32 %12
}

declare dso_local i32 @apply_police_params(%struct.mlx5e_priv*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
