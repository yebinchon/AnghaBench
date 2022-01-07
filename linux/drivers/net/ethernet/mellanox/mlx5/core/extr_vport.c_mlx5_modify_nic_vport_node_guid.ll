; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_modify_nic_vport_node_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_modify_nic_vport_node_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vport_number = common dso_local global i32 0, align 4
@other_vport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_nic_vport_node_guid(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @modify_nic_vport_context_in, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %21 = load i32, i32* @vport_group_manager, align 4
  %22 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kvzalloc(i32 %28, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %27
  %37 = load i32, i32* @modify_nic_vport_context_in, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @field_select, i32 0, i32 0), align 4
  %40 = call i32 @MLX5_SET(i32 %37, i8* %38, i32 %39, i32 1)
  %41 = load i32, i32* @modify_nic_vport_context_in, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @vport_number, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @MLX5_SET(i32 %41, i8* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @modify_nic_vport_context_in, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @other_vport, align 4
  %49 = call i32 @MLX5_SET(i32 %46, i8* %47, i32 %48, i32 1)
  %50 = load i32, i32* @modify_nic_vport_context_in, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i8* @MLX5_ADDR_OF(i32 %50, i8* %51, i8* %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @MLX5_SET64(i8* %54, i8* %55, i32 %56, i32 %57)
  %59 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev* %59, i8* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @kvfree(i8* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %36, %33, %24, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i8*) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_modify_nic_vport_context(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
