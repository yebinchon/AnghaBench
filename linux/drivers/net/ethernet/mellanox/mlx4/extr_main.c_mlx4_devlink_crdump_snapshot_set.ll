; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_crdump_snapshot_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_devlink_crdump_snapshot_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_param_gset_ctx = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_dev }
%struct.mlx4_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.devlink_param_gset_ctx*)* @mlx4_devlink_crdump_snapshot_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_devlink_crdump_snapshot_set(%struct.devlink* %0, i32 %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_param_gset_ctx*, align 8
  %7 = alloca %struct.mlx4_priv*, align 8
  %8 = alloca %struct.mlx4_dev*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %6, align 8
  %9 = load %struct.devlink*, %struct.devlink** %4, align 8
  %10 = call %struct.mlx4_priv* @devlink_priv(%struct.devlink* %9)
  store %struct.mlx4_priv* %10, %struct.mlx4_priv** %7, align 8
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %7, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  store %struct.mlx4_dev* %12, %struct.mlx4_dev** %8, align 8
  %13 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %18 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  ret i32 0
}

declare dso_local %struct.mlx4_priv* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
