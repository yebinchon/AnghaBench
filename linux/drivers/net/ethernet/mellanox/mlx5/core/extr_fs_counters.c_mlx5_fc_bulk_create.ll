; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_bulk_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_counters.c_mlx5_fc_bulk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fc_bulk = type { i32, %struct.mlx5_fc_bulk*, i32*, i64 }
%struct.mlx5_core_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@flow_counter_bulk_alloc = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_fc_bulk* (%struct.mlx5_core_dev*)* @mlx5_fc_bulk_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_fc_bulk* @mlx5_fc_bulk_create(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_fc_bulk*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_fc_bulk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %13 = load i32, i32* @flow_counter_bulk_alloc, align 4
  %14 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MLX5_FC_BULK_NUM_FCS(i32 %18)
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 1, %20 ]
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 32, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mlx5_fc_bulk* @kzalloc(i32 %27, i32 %28)
  store %struct.mlx5_fc_bulk* %29, %struct.mlx5_fc_bulk** %5, align 8
  %30 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %31 = icmp ne %struct.mlx5_fc_bulk* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %94

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @BITS_TO_LONGS(i32 %34)
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mlx5_fc_bulk* @kcalloc(i32 %35, i32 8, i32 %36)
  %38 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %39 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %38, i32 0, i32 1
  store %struct.mlx5_fc_bulk* %37, %struct.mlx5_fc_bulk** %39, align 8
  %40 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %40, i32 0, i32 1
  %42 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %41, align 8
  %43 = icmp ne %struct.mlx5_fc_bulk* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %91

45:                                               ; preds = %33
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mlx5_cmd_fc_bulk_alloc(%struct.mlx5_core_dev* %46, i32 %47, i64* %8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %86

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %81, %52
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @mlx5_fc_init(i32* %69, %struct.mlx5_fc_bulk* %70, i64 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %78 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %77, i32 0, i32 1
  %79 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %78, align 8
  %80 = call i32 @set_bit(i32 %76, %struct.mlx5_fc_bulk* %79)
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %59

84:                                               ; preds = %59
  %85 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  store %struct.mlx5_fc_bulk* %85, %struct.mlx5_fc_bulk** %2, align 8
  br label %97

86:                                               ; preds = %51
  %87 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %88 = getelementptr inbounds %struct.mlx5_fc_bulk, %struct.mlx5_fc_bulk* %87, i32 0, i32 1
  %89 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %88, align 8
  %90 = call i32 @kfree(%struct.mlx5_fc_bulk* %89)
  br label %91

91:                                               ; preds = %86, %44
  %92 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %5, align 8
  %93 = call i32 @kfree(%struct.mlx5_fc_bulk* %92)
  br label %94

94:                                               ; preds = %91, %32
  %95 = load i32, i32* %6, align 4
  %96 = call %struct.mlx5_fc_bulk* @ERR_PTR(i32 %95)
  store %struct.mlx5_fc_bulk* %96, %struct.mlx5_fc_bulk** %2, align 8
  br label %97

97:                                               ; preds = %94, %84
  %98 = load %struct.mlx5_fc_bulk*, %struct.mlx5_fc_bulk** %2, align 8
  ret %struct.mlx5_fc_bulk* %98
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_FC_BULK_NUM_FCS(i32) #1

declare dso_local %struct.mlx5_fc_bulk* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_fc_bulk* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @mlx5_cmd_fc_bulk_alloc(%struct.mlx5_core_dev*, i32, i64*) #1

declare dso_local i32 @mlx5_fc_init(i32*, %struct.mlx5_fc_bulk*, i64) #1

declare dso_local i32 @set_bit(i32, %struct.mlx5_fc_bulk*) #1

declare dso_local i32 @kfree(%struct.mlx5_fc_bulk*) #1

declare dso_local %struct.mlx5_fc_bulk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
