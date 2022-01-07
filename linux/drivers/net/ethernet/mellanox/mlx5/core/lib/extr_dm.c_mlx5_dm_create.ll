; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_dm.c_mlx5_dm_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_dm.c_mlx5_dm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_dm = type { %struct.mlx5_dm*, i8*, i32 }
%struct.mlx5_core_dev = type { i32 }

@general_obj_types = common dso_local global i32 0, align 4
@MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@steering_sw_icm_start_address = common dso_local global i32 0, align 4
@log_steering_sw_icm_size = common dso_local global i32 0, align 4
@header_modify_sw_icm_start_address = common dso_local global i32 0, align 4
@log_header_modify_sw_icm_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_dm* @mlx5_dm_create(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_dm*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_dm*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = load i32, i32* @general_obj_types, align 4
  %9 = call i32 @MLX5_CAP_GEN_64(%struct.mlx5_core_dev* %7, i32 %8)
  %10 = load i32, i32* @MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.mlx5_dm* null, %struct.mlx5_dm** %2, align 8
  br label %90

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mlx5_dm* @kzalloc(i32 24, i32 %15)
  store %struct.mlx5_dm* %16, %struct.mlx5_dm** %6, align 8
  %17 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %18 = icmp ne %struct.mlx5_dm* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.mlx5_dm* @ERR_PTR(i32 %21)
  store %struct.mlx5_dm* %22, %struct.mlx5_dm** %2, align 8
  br label %90

23:                                               ; preds = %14
  %24 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %24, i32 0, i32 2
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %28 = load i32, i32* @steering_sw_icm_start_address, align 4
  %29 = call i64 @MLX5_CAP64_DEV_MEM(%struct.mlx5_core_dev* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load i32, i32* @log_steering_sw_icm_size, align 4
  %34 = call i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev* %32, i32 %33)
  %35 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %36 = call i64 @MLX5_LOG_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev* %35)
  %37 = sub nsw i64 %34, %36
  %38 = call i32 @BIT(i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @BITS_TO_LONGS(i32 %39)
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kcalloc(i32 %40, i32 8, i32 %41)
  %43 = bitcast i8* %42 to %struct.mlx5_dm*
  %44 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %44, i32 0, i32 0
  store %struct.mlx5_dm* %43, %struct.mlx5_dm** %45, align 8
  %46 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %47 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %46, i32 0, i32 0
  %48 = load %struct.mlx5_dm*, %struct.mlx5_dm** %47, align 8
  %49 = icmp ne %struct.mlx5_dm* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  br label %84

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load i32, i32* @header_modify_sw_icm_start_address, align 4
  %55 = call i64 @MLX5_CAP64_DEV_MEM(%struct.mlx5_core_dev* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %59 = load i32, i32* @log_header_modify_sw_icm_size, align 4
  %60 = call i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev* %58, i32 %59)
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %62 = call i64 @MLX5_LOG_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev* %61)
  %63 = sub nsw i64 %60, %62
  %64 = call i32 @BIT(i64 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @BITS_TO_LONGS(i32 %65)
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kcalloc(i32 %66, i32 8, i32 %67)
  %69 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %72 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %57
  br label %79

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  store %struct.mlx5_dm* %78, %struct.mlx5_dm** %2, align 8
  br label %90

79:                                               ; preds = %75
  %80 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %81 = getelementptr inbounds %struct.mlx5_dm, %struct.mlx5_dm* %80, i32 0, i32 0
  %82 = load %struct.mlx5_dm*, %struct.mlx5_dm** %81, align 8
  %83 = call i32 @kfree(%struct.mlx5_dm* %82)
  br label %84

84:                                               ; preds = %79, %50
  %85 = load %struct.mlx5_dm*, %struct.mlx5_dm** %6, align 8
  %86 = call i32 @kfree(%struct.mlx5_dm* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.mlx5_dm* @ERR_PTR(i32 %88)
  store %struct.mlx5_dm* %89, %struct.mlx5_dm** %2, align 8
  br label %90

90:                                               ; preds = %84, %77, %19, %13
  %91 = load %struct.mlx5_dm*, %struct.mlx5_dm** %2, align 8
  ret %struct.mlx5_dm* %91
}

declare dso_local i32 @MLX5_CAP_GEN_64(%struct.mlx5_core_dev*, i32) #1

declare dso_local %struct.mlx5_dm* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_dm* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @MLX5_CAP64_DEV_MEM(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @MLX5_CAP_DEV_MEM(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_LOG_SW_ICM_BLOCK_SIZE(%struct.mlx5_core_dev*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_dm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
