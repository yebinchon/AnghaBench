; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_devlink_traps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_trap.c_mlxsw_sp_devlink_traps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink = type { i32 }

@mlxsw_sp_listener_devlink_map = common dso_local global i32 0, align 4
@mlxsw_sp_listeners_arr = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mlxsw_sp_traps_arr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_devlink_traps_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.devlink*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %5 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.devlink* @priv_to_devlink(i32 %7)
  store %struct.devlink* %8, %struct.devlink** %4, align 8
  %9 = load i32, i32* @mlxsw_sp_listener_devlink_map, align 4
  %10 = call i64 @ARRAY_SIZE(i32 %9)
  %11 = load i32, i32* @mlxsw_sp_listeners_arr, align 4
  %12 = call i64 @ARRAY_SIZE(i32 %11)
  %13 = icmp ne i64 %10, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.devlink*, %struct.devlink** %4, align 8
  %22 = load i32, i32* @mlxsw_sp_traps_arr, align 4
  %23 = load i32, i32* @mlxsw_sp_traps_arr, align 4
  %24 = call i64 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %26 = call i32 @devlink_traps_register(%struct.devlink* %21, i32 %22, i64 %24, %struct.mlxsw_sp* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devlink_traps_register(%struct.devlink*, i32, i64, %struct.mlxsw_sp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
