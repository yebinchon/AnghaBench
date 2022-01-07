; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_modify_header_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_mlx5_cmd_dr_modify_header_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5_modify_hdr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5dr_action* }
%struct.mlx5dr_action = type { i32 }

@set_action_in_add_action_in_auto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed allocating modify-header action\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, i64, i64, i8*, %struct.mlx5_modify_hdr*)* @mlx5_cmd_dr_modify_header_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_dr_modify_header_alloc(%struct.mlx5_flow_root_namespace* %0, i64 %1, i64 %2, i8* %3, %struct.mlx5_modify_hdr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlx5_modify_hdr*, align 8
  %12 = alloca %struct.mlx5dr_domain*, align 8
  %13 = alloca %struct.mlx5dr_action*, align 8
  %14 = alloca i64, align 8
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.mlx5_modify_hdr* %4, %struct.mlx5_modify_hdr** %11, align 8
  %15 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %17, align 8
  store %struct.mlx5dr_domain* %18, %struct.mlx5dr_domain** %12, align 8
  %19 = load i32, i32* @set_action_in_add_action_in_auto, align 4
  %20 = call i64 @MLX5_UN_SZ_BYTES(i32 %19)
  %21 = load i64, i64* %9, align 8
  %22 = mul i64 %20, %21
  store i64 %22, i64* %14, align 8
  %23 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %12, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call %struct.mlx5dr_action* @mlx5dr_action_create_modify_header(%struct.mlx5dr_domain* %23, i32 0, i64 %24, i8* %25)
  store %struct.mlx5dr_action* %26, %struct.mlx5dr_action** %13, align 8
  %27 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %13, align 8
  %28 = icmp ne %struct.mlx5dr_action* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %5
  %30 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlx5_core_err(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %5
  %37 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %13, align 8
  %38 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %11, align 8
  %39 = getelementptr inbounds %struct.mlx5_modify_hdr, %struct.mlx5_modify_hdr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.mlx5dr_action* %37, %struct.mlx5dr_action** %40, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @MLX5_UN_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5dr_action* @mlx5dr_action_create_modify_header(%struct.mlx5dr_domain*, i32, i64, i8*) #1

declare dso_local i32 @mlx5_core_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
