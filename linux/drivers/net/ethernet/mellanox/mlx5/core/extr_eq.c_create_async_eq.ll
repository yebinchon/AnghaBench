; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_create_async_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_create_async_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_eq_table* }
%struct.mlx5_eq_table = type { i32 }
%struct.mlx5_eq = type { i32 }
%struct.mlx5_eq_param = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_eq*, %struct.mlx5_eq_param*)* @create_async_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_async_eq(%struct.mlx5_core_dev* %0, %struct.mlx5_eq* %1, %struct.mlx5_eq_param* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eq*, align 8
  %6 = alloca %struct.mlx5_eq_param*, align 8
  %7 = alloca %struct.mlx5_eq_table*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eq* %1, %struct.mlx5_eq** %5, align 8
  store %struct.mlx5_eq_param* %2, %struct.mlx5_eq_param** %6, align 8
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %11, align 8
  store %struct.mlx5_eq_table* %12, %struct.mlx5_eq_table** %7, align 8
  %13 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.mlx5_eq_param*, %struct.mlx5_eq_param** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_eq_param, %struct.mlx5_eq_param* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %25 = load %struct.mlx5_eq*, %struct.mlx5_eq** %5, align 8
  %26 = load %struct.mlx5_eq_param*, %struct.mlx5_eq_param** %6, align 8
  %27 = call i32 @create_map_eq(%struct.mlx5_core_dev* %24, %struct.mlx5_eq* %25, %struct.mlx5_eq_param* %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @create_map_eq(%struct.mlx5_core_dev*, %struct.mlx5_eq*, %struct.mlx5_eq_param*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
