; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_trap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_trap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_trap = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)* }
%struct.mlxsw_core.0 = type opaque
%struct.devlink_trap.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_trap*, i8*)* @mlxsw_devlink_trap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_trap_init(%struct.devlink* %0, %struct.devlink_trap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.devlink_trap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_core*, align 8
  %9 = alloca %struct.mlxsw_driver*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.devlink*, %struct.devlink** %5, align 8
  %11 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %10)
  store %struct.mlxsw_core* %11, %struct.mlxsw_core** %8, align 8
  %12 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %13 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %13, align 8
  store %struct.mlxsw_driver* %14, %struct.mlxsw_driver** %9, align 8
  %15 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %9, align 8
  %16 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)*, i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)** %16, align 8
  %18 = icmp ne i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %9, align 8
  %24 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %23, i32 0, i32 0
  %25 = load i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)*, i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)** %24, align 8
  %26 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %27 = bitcast %struct.mlxsw_core* %26 to %struct.mlxsw_core.0*
  %28 = load %struct.devlink_trap*, %struct.devlink_trap** %6, align 8
  %29 = bitcast %struct.devlink_trap* %28 to %struct.devlink_trap.1*
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 %25(%struct.mlxsw_core.0* %27, %struct.devlink_trap.1* %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
