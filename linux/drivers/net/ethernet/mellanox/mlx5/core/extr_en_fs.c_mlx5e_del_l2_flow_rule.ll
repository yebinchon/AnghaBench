; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_del_l2_flow_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_del_l2_flow_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_l2_rule = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_l2_rule*)* @mlx5e_del_l2_flow_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_del_l2_flow_rule(%struct.mlx5e_priv* %0, %struct.mlx5e_l2_rule* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_l2_rule*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_l2_rule* %1, %struct.mlx5e_l2_rule** %4, align 8
  %5 = load %struct.mlx5e_l2_rule*, %struct.mlx5e_l2_rule** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @IS_ERR_OR_NULL(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.mlx5e_l2_rule*, %struct.mlx5e_l2_rule** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @mlx5_del_flow_rules(i32* %13)
  %15 = load %struct.mlx5e_l2_rule*, %struct.mlx5e_l2_rule** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @mlx5_del_flow_rules(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
