; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_mpfs.c_mlx5_mpfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_mpfs.c_mlx5_mpfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_mpfs* }
%struct.mlx5_mpfs = type { i32, i32, i32 }

@log_max_l2_table = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_mpfs_init(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_mpfs*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = load i32, i32* @log_max_l2_table, align 4
  %8 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %6, i32 %7)
  %9 = shl i32 1, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %11 = call i32 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mlx5_mpfs* @kzalloc(i32 12, i32 %15)
  store %struct.mlx5_mpfs* %16, %struct.mlx5_mpfs** %5, align 8
  %17 = load %struct.mlx5_mpfs*, %struct.mlx5_mpfs** %5, align 8
  %18 = icmp ne %struct.mlx5_mpfs* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %14
  %23 = load %struct.mlx5_mpfs*, %struct.mlx5_mpfs** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_mpfs, %struct.mlx5_mpfs* %23, i32 0, i32 2
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mlx5_mpfs*, %struct.mlx5_mpfs** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_mpfs, %struct.mlx5_mpfs* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @bitmap_zalloc(i32 %29, i32 %30)
  %32 = load %struct.mlx5_mpfs*, %struct.mlx5_mpfs** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_mpfs, %struct.mlx5_mpfs* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mlx5_mpfs*, %struct.mlx5_mpfs** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_mpfs, %struct.mlx5_mpfs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %22
  %39 = load %struct.mlx5_mpfs*, %struct.mlx5_mpfs** %5, align 8
  %40 = call i32 @kfree(%struct.mlx5_mpfs* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %22
  %44 = load %struct.mlx5_mpfs*, %struct.mlx5_mpfs** %5, align 8
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.mlx5_mpfs* %44, %struct.mlx5_mpfs** %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %38, %19, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5_mpfs* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_mpfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
