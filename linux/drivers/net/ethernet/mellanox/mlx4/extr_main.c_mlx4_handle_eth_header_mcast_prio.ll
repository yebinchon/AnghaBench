; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_handle_eth_header_mcast_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_handle_eth_header_mcast_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_net_trans_rule_hw_ctrl = type { i32 }
%struct._rule_hw = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_net_trans_rule_hw_eth = type { i32 }

@MLX4_DOMAIN_NIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_handle_eth_header_mcast_prio(%struct.mlx4_net_trans_rule_hw_ctrl* %0, %struct._rule_hw* %1) #0 {
  %3 = alloca %struct.mlx4_net_trans_rule_hw_ctrl*, align 8
  %4 = alloca %struct._rule_hw*, align 8
  %5 = alloca %struct.mlx4_net_trans_rule_hw_eth*, align 8
  %6 = alloca %struct._rule_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_net_trans_rule_hw_ctrl* %0, %struct.mlx4_net_trans_rule_hw_ctrl** %3, align 8
  store %struct._rule_hw* %1, %struct._rule_hw** %4, align 8
  %8 = load %struct._rule_hw*, %struct._rule_hw** %4, align 8
  %9 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @is_multicast_ether_addr(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct._rule_hw*, %struct._rule_hw** %4, align 8
  %16 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @is_broadcast_ether_addr(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %14, %2
  %22 = load %struct._rule_hw*, %struct._rule_hw** %4, align 8
  %23 = bitcast %struct._rule_hw* %22 to %struct.mlx4_net_trans_rule_hw_eth*
  store %struct.mlx4_net_trans_rule_hw_eth* %23, %struct.mlx4_net_trans_rule_hw_eth** %5, align 8
  %24 = load %struct.mlx4_net_trans_rule_hw_eth*, %struct.mlx4_net_trans_rule_hw_eth** %5, align 8
  %25 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_eth, %struct.mlx4_net_trans_rule_hw_eth* %24, i64 1
  %26 = bitcast %struct.mlx4_net_trans_rule_hw_eth* %25 to %struct._rule_hw*
  store %struct._rule_hw* %26, %struct._rule_hw** %6, align 8
  %27 = load %struct._rule_hw*, %struct._rule_hw** %6, align 8
  %28 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct._rule_hw*, %struct._rule_hw** %6, align 8
  %33 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct._rule_hw*, %struct._rule_hw** %6, align 8
  %38 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %36, %31, %21
  %42 = phi i1 [ false, %31 ], [ false, %21 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @MLX4_DOMAIN_NIC, align 4
  %48 = call i32 @cpu_to_be16(i32 %47)
  %49 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %14
  ret void
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
