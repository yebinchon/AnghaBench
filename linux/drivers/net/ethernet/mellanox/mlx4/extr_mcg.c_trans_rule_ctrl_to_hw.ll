; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_trans_rule_ctrl_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mcg.c_trans_rule_ctrl_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_net_trans_rule = type { i64, i64, i32, i32, i32, i64, i64 }
%struct.mlx4_net_trans_rule_hw_ctrl = type { i32, i32, i32, i32, i32 }

@MLX4_NET_TRANS_Q_LIFO = common dso_local global i64 0, align 8
@__promisc_mode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule_hw_ctrl*)* @trans_rule_ctrl_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trans_rule_ctrl_to_hw(%struct.mlx4_net_trans_rule* %0, %struct.mlx4_net_trans_rule_hw_ctrl* %1) #0 {
  %3 = alloca %struct.mlx4_net_trans_rule*, align 8
  %4 = alloca %struct.mlx4_net_trans_rule_hw_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_net_trans_rule* %0, %struct.mlx4_net_trans_rule** %3, align 8
  store %struct.mlx4_net_trans_rule_hw_ctrl* %1, %struct.mlx4_net_trans_rule_hw_ctrl** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MLX4_NET_TRANS_Q_LIFO, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %5, align 4
  %13 = load %struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule** %3, align 8
  %14 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 4, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule** %3, align 8
  %22 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 8, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** @__promisc_mode, align 8
  %33 = load %struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule** %3, align 8
  %34 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cpu_to_be16(i32 %42)
  %44 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %4, align 8
  %45 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mlx4_net_trans_rule*, %struct.mlx4_net_trans_rule** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_net_trans_rule, %struct.mlx4_net_trans_rule* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cpu_to_be32(i32 %53)
  %55 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
