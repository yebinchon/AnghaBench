; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_core_query_vport_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_core_query_vport_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@query_vport_counter_in = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_QUERY_VPORT_COUNTER = common dso_local global i32 0, align 4
@vport_number = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_query_vport_counter(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @query_vport_counter_in, align 4
  %19 = call i32 @MLX5_ST_SZ_BYTES(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %21 = load i32, i32* @vport_group_manager, align 4
  %22 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kvzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %16, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  store i32 %31, i32* %7, align 4
  br label %80

32:                                               ; preds = %6
  %33 = load i32, i32* @query_vport_counter_in, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* @opcode, align 4
  %36 = load i32, i32* @MLX5_CMD_OP_QUERY_VPORT_COUNTER, align 4
  %37 = call i32 @MLX5_SET(i32 %33, i8* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* @query_vport_counter_in, align 4
  %45 = load i8*, i8** %16, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @MLX5_SET(i32 %44, i8* %45, i32 %46, i32 1)
  %48 = load i32, i32* @query_vport_counter_in, align 4
  %49 = load i8*, i8** %16, align 8
  %50 = load i32, i32* @vport_number, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @MLX5_SET(i32 %48, i8* %49, i32 %50, i32 %52)
  br label %57

54:                                               ; preds = %40
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %17, align 4
  br label %76

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %60 = load i32, i32* @num_ports, align 4
  %61 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %59, i32 %60)
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @query_vport_counter_in, align 4
  %65 = load i8*, i8** %16, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @MLX5_SET(i32 %64, i8* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %70, i8* %71, i32 %72, i8* %73, i64 %74)
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %69, %54
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @kvfree(i8* %77)
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %28
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i8*, i64) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
