; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_listener = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.devlink_trap = type { i64 }

@mlxsw_sp_listener_devlink_map = common dso_local global i64* null, align 8
@mlxsw_sp_listeners_arr = common dso_local global %struct.mlxsw_listener* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_trap_init(%struct.mlxsw_core* %0, %struct.devlink_trap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca %struct.devlink_trap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_listener*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %41, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i64*, i64** @mlxsw_sp_listener_devlink_map, align 8
  %14 = call i32 @ARRAY_SIZE(i64* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %11
  %17 = load i64*, i64** @mlxsw_sp_listener_devlink_map, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.devlink_trap*, %struct.devlink_trap** %6, align 8
  %23 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %41

27:                                               ; preds = %16
  %28 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** @mlxsw_sp_listeners_arr, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %28, i64 %30
  store %struct.mlxsw_listener* %31, %struct.mlxsw_listener** %9, align 8
  %32 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %33 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @mlxsw_core_trap_register(%struct.mlxsw_core* %32, %struct.mlxsw_listener* %33, i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mlxsw_core_trap_register(%struct.mlxsw_core*, %struct.mlxsw_listener*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
