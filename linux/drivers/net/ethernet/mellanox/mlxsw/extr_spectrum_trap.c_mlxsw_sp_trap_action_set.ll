; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_action_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_action_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_listener = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.devlink_trap = type { i64 }

@mlxsw_sp_listener_devlink_map = common dso_local global i64* null, align 8
@mlxsw_sp_listeners_arr = common dso_local global %struct.mlxsw_listener* null, align 8
@MLXSW_REG_HPKT_ACTION_SET_FW_DEFAULT = common dso_local global i32 0, align 4
@MLXSW_REG_HPKT_ACTION_TRAP_EXCEPTION_TO_CPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_trap_action_set(%struct.mlxsw_core* %0, %struct.devlink_trap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca %struct.devlink_trap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_listener*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i64*, i64** @mlxsw_sp_listener_devlink_map, align 8
  %15 = call i32 @ARRAY_SIZE(i64* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %12
  %18 = load i64*, i64** @mlxsw_sp_listener_devlink_map, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.devlink_trap*, %struct.devlink_trap** %6, align 8
  %24 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %51

28:                                               ; preds = %17
  %29 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** @mlxsw_sp_listeners_arr, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %29, i64 %31
  store %struct.mlxsw_listener* %32, %struct.mlxsw_listener** %10, align 8
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %38 [
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %28
  %35 = load i32, i32* @MLXSW_REG_HPKT_ACTION_SET_FW_DEFAULT, align 4
  store i32 %35, i32* %9, align 4
  br label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @MLXSW_REG_HPKT_ACTION_TRAP_EXCEPTION_TO_CPU, align 4
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %36, %34
  %42 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %43 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mlxsw_core_trap_action_set(%struct.mlxsw_core* %42, %struct.mlxsw_listener* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %12

54:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %48, %38
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mlxsw_core_trap_action_set(%struct.mlxsw_core*, %struct.mlxsw_listener*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
