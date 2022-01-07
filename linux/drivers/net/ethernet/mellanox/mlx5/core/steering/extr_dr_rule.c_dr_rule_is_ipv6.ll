; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_is_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_is_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@ETH_P_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*)* @dr_rule_is_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_rule_is_ipv6(%struct.mlx5dr_match_param* %0) #0 {
  %2 = alloca %struct.mlx5dr_match_param*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %2, align 8
  %3 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ETH_P_IPV6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ETH_P_IPV6, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %21, %14, %8, %1
  %29 = phi i1 [ true, %14 ], [ true, %8 ], [ true, %1 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
