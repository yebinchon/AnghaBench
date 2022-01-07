; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_register_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_register_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rep_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }

@mlx5e_rep_indr_setup_tc_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Failed to register remote block notifier for %s err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rep_priv*, %struct.net_device*)* @mlx5e_rep_indr_register_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_indr_register_block(%struct.mlx5e_rep_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlx5e_rep_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_rep_priv* %0, %struct.mlx5e_rep_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %9 = load i32, i32* @mlx5e_rep_indr_setup_tc_cb, align 4
  %10 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %11 = call i32 @__flow_indr_block_cb_register(%struct.net_device* %7, %struct.mlx5e_rep_priv* %8, i32 %9, %struct.mlx5e_rep_priv* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx5e_priv* @netdev_priv(i32 %17)
  store %struct.mlx5e_priv* %18, %struct.mlx5e_priv** %6, align 8
  %19 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @netdev_name(%struct.net_device* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mlx5_core_err(i32 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %14, %2
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @__flow_indr_block_cb_register(%struct.net_device*, %struct.mlx5e_rep_priv*, i32, %struct.mlx5e_rep_priv*) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(i32) #1

declare dso_local i32 @mlx5_core_err(i32, i8*, i32, i32) #1

declare dso_local i32 @netdev_name(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
