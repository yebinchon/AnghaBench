; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32, i32 }
%struct.mlx5_vport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@MLX5_VPORT_STATE_OP_MOD_ESW_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to set vport %d link state, err = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_set_vport_state(%struct.mlx5_eswitch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_vport*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch* %10, i32 %11)
  store %struct.mlx5_vport* %12, %struct.mlx5_vport** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %14 = call i32 @ESW_ALLOWED(%struct.mlx5_eswitch* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %21 = call i64 @IS_ERR(%struct.mlx5_vport* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %25 = call i32 @PTR_ERR(%struct.mlx5_vport* %24)
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %19
  %27 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MLX5_VPORT_STATE_OP_MOD_ESW_VPORT, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @mlx5_modify_vport_admin_state(i32 %32, i32 %33, i32 %34, i32 1, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mlx5_core_warn(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %51

46:                                               ; preds = %26
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %23, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @ESW_ALLOWED(%struct.mlx5_eswitch*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_modify_vport_admin_state(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
