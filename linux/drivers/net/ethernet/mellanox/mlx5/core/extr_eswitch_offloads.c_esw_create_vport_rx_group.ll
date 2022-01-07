; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_create_vport_rx_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_create_vport_rx_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mlx5_flow_group*, i32 }
%struct.mlx5_flow_group = type { i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@MLX5_ESW_MISS_FLOWS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create vport rx group err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, i32)* @esw_create_vport_rx_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_create_vport_rx_group(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_group*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @create_flow_group_in, align 4
  %11 = call i32 @MLX5_ST_SZ_BYTES(i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MLX5_ESW_MISS_FLOWS, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kvzalloc(i32 %15, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @esw_set_flow_group_source_port(%struct.mlx5_eswitch* %24, i32* %25)
  %27 = load i32, i32* @create_flow_group_in, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @start_flow_index, align 4
  %30 = call i32 @MLX5_SET(i32 %27, i32* %28, i32 %29, i32 0)
  %31 = load i32, i32* @create_flow_group_in, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @end_flow_index, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @MLX5_SET(i32 %31, i32* %32, i32 %33, i32 %35)
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call %struct.mlx5_flow_group* @mlx5_create_flow_group(i32 %40, i32* %41)
  store %struct.mlx5_flow_group* %42, %struct.mlx5_flow_group** %7, align 8
  %43 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %44 = call i64 @IS_ERR(%struct.mlx5_flow_group* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %23
  %47 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %48 = call i32 @PTR_ERR(%struct.mlx5_flow_group* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @mlx5_core_warn(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %59

54:                                               ; preds = %23
  %55 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %7, align 8
  %56 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.mlx5_flow_group* %55, %struct.mlx5_flow_group** %58, align 8
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @kvfree(i32* %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i32 @esw_set_flow_group_source_port(%struct.mlx5_eswitch*, i32*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local %struct.mlx5_flow_group* @mlx5_create_flow_group(i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_group*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_group*) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
