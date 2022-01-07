; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_ethtool_flow_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_mlx5e_ethtool_flow_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_ethtool_rule = type { i32 }

@MAX_NUM_OF_ETHTOOL_RULES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32)* @mlx5e_ethtool_flow_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_ethtool_flow_remove(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_ethtool_rule*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_NUM_OF_ETHTOOL_RULES, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOSPC, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.mlx5e_ethtool_rule* @find_ethtool_rule(%struct.mlx5e_priv* %15, i32 %16)
  store %struct.mlx5e_ethtool_rule* %17, %struct.mlx5e_ethtool_rule** %6, align 8
  %18 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %6, align 8
  %19 = icmp ne %struct.mlx5e_ethtool_rule* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %25 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %6, align 8
  %26 = call i32 @del_ethtool_rule(%struct.mlx5e_priv* %24, %struct.mlx5e_ethtool_rule* %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.mlx5e_ethtool_rule* @find_ethtool_rule(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @del_ethtool_rule(%struct.mlx5e_priv*, %struct.mlx5e_ethtool_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
