; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_get_slave_from_resource_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_get_slave_from_resource_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_common = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_slave_from_resource_id(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.res_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RES_QP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = and i32 %19, 8388607
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %23 = call i32 @mlx4_tlock(%struct.mlx4_dev* %22)
  %24 = call i32 @spin_lock(i32 %23)
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.res_common* @find_res(%struct.mlx4_dev* %25, i32 %26, i32 %27)
  store %struct.res_common* %28, %struct.res_common** %9, align 8
  %29 = load %struct.res_common*, %struct.res_common** %9, align 8
  %30 = icmp ne %struct.res_common* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.res_common*, %struct.res_common** %9, align 8
  %33 = getelementptr inbounds %struct.res_common, %struct.res_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %31, %21
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %38 = call i32 @mlx4_tlock(%struct.mlx4_dev* %37)
  %39 = call i32 @spin_unlock(i32 %38)
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_common* @find_res(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
