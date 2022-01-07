; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_cmd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }

@mbox_in = common dso_local global i32 0, align 4
@MLX5_CMD_OP_DESTROY_MKEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"%s(0x%x) op_mod(0x%x) failed, status %s(0x%x), syndrome (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i8*, i8*)* @mlx5_cmd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_check(%struct.mlx5_core_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @mlx5_cmd_mbox_status(i8* %13, i32* %9, i32* %8)
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load i32, i32* @mbox_in, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @MLX5_GET(i32 %19, i8* %20, i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* @mbox_in, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i64 @MLX5_GET(i32 %23, i8* %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i32, i32* @mbox_in, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @MLX5_GET(i32 %27, i8* %28, i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %18
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @MLX5_CMD_OP_DESTROY_MKEY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @mlx5_command_str(i64 %39)
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cmd_status_str(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @mlx5_core_err_rl(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i64 %42, i32 %44, i32 %45, i32 %46)
  br label %59

48:                                               ; preds = %33, %18
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @mlx5_command_str(i64 %50)
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @cmd_status_str(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %49, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52, i64 %53, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %48, %37
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @cmd_status_to_err(i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @mlx5_cmd_mbox_status(i8*, i32*, i32*) #1

declare dso_local i64 @MLX5_GET(i32, i8*, i64) #1

declare dso_local i32 @mlx5_core_err_rl(%struct.mlx5_core_dev*, i8*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @mlx5_command_str(i64) #1

declare dso_local i32 @cmd_status_str(i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @cmd_status_to_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
