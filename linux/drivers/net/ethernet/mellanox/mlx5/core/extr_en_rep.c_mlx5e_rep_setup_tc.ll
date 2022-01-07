; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.flow_block_offload = type { i32 }

@mlx5e_rep_block_cb_list = common dso_local global i32 0, align 4
@mlx5e_rep_setup_tc_cb = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @mlx5e_rep_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.flow_block_offload*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx5e_priv* %11, %struct.mlx5e_priv** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.flow_block_offload*
  store %struct.flow_block_offload* %13, %struct.flow_block_offload** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %23 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.flow_block_offload*, %struct.flow_block_offload** %9, align 8
  %17 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @mlx5e_rep_setup_tc_cb, align 4
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %22 = call i32 @flow_block_cb_setup_simple(i8* %18, i32* @mlx5e_rep_block_cb_list, i32 %19, %struct.mlx5e_priv* %20, %struct.mlx5e_priv* %21, i32 1)
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @flow_block_cb_setup_simple(i8*, i32*, i32, %struct.mlx5e_priv*, %struct.mlx5e_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
