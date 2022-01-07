; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_modify_sq_param = type { i64, i64, i64, i64 }

@modify_sq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@sq_state = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RDY = common dso_local global i64 0, align 8
@modify_bitmask = common dso_local global i32 0, align 4
@packet_pacing_rate_limit_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_modify_sq(%struct.mlx5_core_dev* %0, i32 %1, %struct.mlx5e_modify_sq_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_modify_sq_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5e_modify_sq_param* %2, %struct.mlx5e_modify_sq_param** %7, align 8
  %12 = load i8*, i8** @modify_sq_in, align 8
  %13 = call i32 @MLX5_ST_SZ_BYTES(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kvzalloc(i32 %14, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %72

22:                                               ; preds = %3
  %23 = load i8*, i8** @modify_sq_in, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @ctx, align 4
  %26 = call i8* @MLX5_ADDR_OF(i8* %23, i8* %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** @modify_sq_in, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @sq_state, align 4
  %30 = load %struct.mlx5e_modify_sq_param*, %struct.mlx5e_modify_sq_param** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @MLX5_SET(i8* %27, i8* %28, i32 %29, i64 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @state, align 4
  %37 = load %struct.mlx5e_modify_sq_param*, %struct.mlx5e_modify_sq_param** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @MLX5_SET(i8* %34, i8* %35, i32 %36, i64 %39)
  %41 = load %struct.mlx5e_modify_sq_param*, %struct.mlx5e_modify_sq_param** %7, align 8
  %42 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %22
  %46 = load %struct.mlx5e_modify_sq_param*, %struct.mlx5e_modify_sq_param** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MLX5_SQC_STATE_RDY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i8*, i8** @modify_sq_in, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @modify_bitmask, align 4
  %55 = call i32 @MLX5_SET64(i8* %52, i8* %53, i32 %54, i32 1)
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* @packet_pacing_rate_limit_index, align 4
  %59 = load %struct.mlx5e_modify_sq_param*, %struct.mlx5e_modify_sq_param** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5e_modify_sq_param, %struct.mlx5e_modify_sq_param* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @MLX5_SET(i8* %56, i8* %57, i32 %58, i64 %61)
  br label %63

63:                                               ; preds = %51, %45, %22
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @mlx5_core_modify_sq(%struct.mlx5_core_dev* %64, i32 %65, i8* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @kvfree(i8* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %63, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i64) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_sq(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
