; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_group_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.devlink_trap_group = type { i32 }
%struct.mlxsw_sp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_trap_group_init(%struct.mlxsw_core* %0, %struct.devlink_trap_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.devlink_trap_group*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.devlink_trap_group* %1, %struct.devlink_trap_group** %5, align 8
  %8 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %9 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %8)
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %6, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %11 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %5, align 8
  %12 = call i32 @mlxsw_sp_trap_group_policer_init(%struct.mlxsw_sp* %10, %struct.devlink_trap_group* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %19 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %5, align 8
  %20 = call i32 @__mlxsw_sp_trap_group_init(%struct.mlxsw_sp* %18, %struct.devlink_trap_group* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_sp_trap_group_policer_init(%struct.mlxsw_sp*, %struct.devlink_trap_group*) #1

declare dso_local i32 @__mlxsw_sp_trap_group_init(%struct.mlxsw_sp*, %struct.devlink_trap_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
