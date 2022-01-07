; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_is_devlink_port_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_is_devlink_port_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@MLX5_VPORT_PF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_rep_priv*)* @is_devlink_port_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_devlink_port_supported(%struct.mlx5_core_dev* %0, %struct.mlx5e_rep_priv* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5e_rep_priv* %1, %struct.mlx5e_rep_priv** %4, align 8
  %5 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %6 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLX5_VPORT_PF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %12
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @mlx5_eswitch_is_vf_vport(i32 %24, i64 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %20, %12, %2
  %33 = phi i1 [ true, %12 ], [ true, %2 ], [ %31, %20 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @mlx5_eswitch_is_vf_vport(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
