; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_trap_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_listener = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.devlink_trap = type { i64 }

@mlxsw_sp_listener_devlink_map = common dso_local global i64* null, align 8
@mlxsw_sp_listeners_arr = common dso_local global %struct.mlxsw_listener* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_trap_fini(%struct.mlxsw_core* %0, %struct.devlink_trap* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.devlink_trap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_listener*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i64*, i64** @mlxsw_sp_listener_devlink_map, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i64*, i64** @mlxsw_sp_listener_devlink_map, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.devlink_trap*, %struct.devlink_trap** %5, align 8
  %21 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %34

25:                                               ; preds = %14
  %26 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** @mlxsw_sp_listeners_arr, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlxsw_listener, %struct.mlxsw_listener* %26, i64 %28
  store %struct.mlxsw_listener* %29, %struct.mlxsw_listener** %8, align 8
  %30 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %31 = load %struct.mlxsw_listener*, %struct.mlxsw_listener** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @mlxsw_core_trap_unregister(%struct.mlxsw_core* %30, %struct.mlxsw_listener* %31, i8* %32)
  br label %34

34:                                               ; preds = %25, %24
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @mlxsw_core_trap_unregister(%struct.mlxsw_core*, %struct.mlxsw_listener*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
