; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_dm.c_mlx5_dm_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_dm.c_mlx5_dm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_dm* }
%struct.mlx5_dm = type { %struct.mlx5_dm*, %struct.mlx5_dm* }

@log_steering_sw_icm_size = common dso_local global i32 0, align 4
@log_header_modify_sw_icm_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_dm_cleanup(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca %struct.mlx5_dm*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 0
  %6 = load %struct.mlx5_dm*, %struct.mlx5_dm** %5, align 8
  store %struct.mlx5_dm* %6, %struct.mlx5_dm** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = load %struct.mlx5_dm*, %struct.mlx5_dm** %8, align 8
  %10 = icmp ne %struct.mlx5_dm* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.mlx5_dm*, %struct.mlx5_dm** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %13, i32 0, i32 1
  %15 = load %struct.mlx5_dm*, %struct.mlx5_dm** %14, align 8
  %16 = icmp ne %struct.mlx5_dm* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.mlx5_dm*, %struct.mlx5_dm** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %18, i32 0, i32 1
  %20 = load %struct.mlx5_dm*, %struct.mlx5_dm** %19, align 8
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %22 = load i32, i32* @log_steering_sw_icm_size, align 4
  %23 = call i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev* %21, i32 %22)
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %25 = call i64 @MLX5_LOG_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev* %24)
  %26 = sub nsw i64 %23, %25
  %27 = call i32 @BIT(i64 %26)
  %28 = call i32 @bitmap_empty(%struct.mlx5_dm* %20, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.mlx5_dm*, %struct.mlx5_dm** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %33, i32 0, i32 1
  %35 = load %struct.mlx5_dm*, %struct.mlx5_dm** %34, align 8
  %36 = call i32 @kfree(%struct.mlx5_dm* %35)
  br label %37

37:                                               ; preds = %17, %12
  %38 = load %struct.mlx5_dm*, %struct.mlx5_dm** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %38, i32 0, i32 0
  %40 = load %struct.mlx5_dm*, %struct.mlx5_dm** %39, align 8
  %41 = icmp ne %struct.mlx5_dm* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.mlx5_dm*, %struct.mlx5_dm** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %43, i32 0, i32 0
  %45 = load %struct.mlx5_dm*, %struct.mlx5_dm** %44, align 8
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %47 = load i32, i32* @log_header_modify_sw_icm_size, align 4
  %48 = call i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev* %46, i32 %47)
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %50 = call i64 @MLX5_LOG_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev* %49)
  %51 = sub nsw i64 %48, %50
  %52 = call i32 @BIT(i64 %51)
  %53 = call i32 @bitmap_empty(%struct.mlx5_dm* %45, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.mlx5_dm*, %struct.mlx5_dm** %3, align 8
  %59 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %58, i32 0, i32 0
  %60 = load %struct.mlx5_dm*, %struct.mlx5_dm** %59, align 8
  %61 = call i32 @kfree(%struct.mlx5_dm* %60)
  br label %62

62:                                               ; preds = %42, %37
  %63 = load %struct.mlx5_dm*, %struct.mlx5_dm** %3, align 8
  %64 = call i32 @kfree(%struct.mlx5_dm* %63)
  br label %65

65:                                               ; preds = %62, %11
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bitmap_empty(%struct.mlx5_dm*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_LOG_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev*) #1

declare dso_local i32 @kfree(%struct.mlx5_dm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
