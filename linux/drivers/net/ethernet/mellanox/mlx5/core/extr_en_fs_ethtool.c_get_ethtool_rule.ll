; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_get_ethtool_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_get_ethtool_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ethtool_rule = type { i32 }
%struct.mlx5e_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_ethtool_rule* (%struct.mlx5e_priv*, i32)* @get_ethtool_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_ethtool_rule* @get_ethtool_rule(%struct.mlx5e_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_ethtool_rule*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_ethtool_rule*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.mlx5e_ethtool_rule* @find_ethtool_rule(%struct.mlx5e_priv* %7, i32 %8)
  store %struct.mlx5e_ethtool_rule* %9, %struct.mlx5e_ethtool_rule** %6, align 8
  %10 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %6, align 8
  %11 = icmp ne %struct.mlx5e_ethtool_rule* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %14 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %6, align 8
  %15 = call i32 @del_ethtool_rule(%struct.mlx5e_priv* %13, %struct.mlx5e_ethtool_rule* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mlx5e_ethtool_rule* @kzalloc(i32 4, i32 %17)
  store %struct.mlx5e_ethtool_rule* %18, %struct.mlx5e_ethtool_rule** %6, align 8
  %19 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %6, align 8
  %20 = icmp ne %struct.mlx5e_ethtool_rule* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mlx5e_ethtool_rule* @ERR_PTR(i32 %23)
  store %struct.mlx5e_ethtool_rule* %24, %struct.mlx5e_ethtool_rule** %3, align 8
  br label %30

25:                                               ; preds = %16
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %27 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %6, align 8
  %28 = call i32 @add_rule_to_list(%struct.mlx5e_priv* %26, %struct.mlx5e_ethtool_rule* %27)
  %29 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %6, align 8
  store %struct.mlx5e_ethtool_rule* %29, %struct.mlx5e_ethtool_rule** %3, align 8
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.mlx5e_ethtool_rule*, %struct.mlx5e_ethtool_rule** %3, align 8
  ret %struct.mlx5e_ethtool_rule* %31
}

declare dso_local %struct.mlx5e_ethtool_rule* @find_ethtool_rule(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @del_ethtool_rule(%struct.mlx5e_priv*, %struct.mlx5e_ethtool_rule*) #1

declare dso_local %struct.mlx5e_ethtool_rule* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5e_ethtool_rule* @ERR_PTR(i32) #1

declare dso_local i32 @add_rule_to_list(%struct.mlx5e_priv*, %struct.mlx5e_ethtool_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
