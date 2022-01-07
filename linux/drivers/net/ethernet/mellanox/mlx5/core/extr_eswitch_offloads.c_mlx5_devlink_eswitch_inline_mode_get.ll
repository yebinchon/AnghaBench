; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_devlink_eswitch_inline_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_devlink_eswitch_inline_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_devlink_eswitch_inline_mode_get(%struct.devlink* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_eswitch*, align 8
  %8 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.devlink*, %struct.devlink** %4, align 8
  %10 = call %struct.mlx5_core_dev* @devlink_priv(%struct.devlink* %9)
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %6, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %13, align 8
  store %struct.mlx5_eswitch* %14, %struct.mlx5_eswitch** %7, align 8
  %15 = load %struct.devlink*, %struct.devlink** %4, align 8
  %16 = call i32 @mlx5_devlink_eswitch_check(%struct.devlink* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @esw_inline_mode_to_devlink(i32 %25, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mlx5_core_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @mlx5_devlink_eswitch_check(%struct.devlink*) #1

declare dso_local i32 @esw_inline_mode_to_devlink(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
