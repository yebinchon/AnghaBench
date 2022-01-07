; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_trap_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_trap_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_trap = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)* }
%struct.mlxsw_core.0 = type opaque
%struct.devlink_trap.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*, %struct.devlink_trap*, i8*)* @mlxsw_devlink_trap_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_devlink_trap_fini(%struct.devlink* %0, %struct.devlink_trap* %1, i8* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_trap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_core*, align 8
  %8 = alloca %struct.mlxsw_driver*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.devlink*, %struct.devlink** %4, align 8
  %10 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %9)
  store %struct.mlxsw_core* %10, %struct.mlxsw_core** %7, align 8
  %11 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %12 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %12, align 8
  store %struct.mlxsw_driver* %13, %struct.mlxsw_driver** %8, align 8
  %14 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %8, align 8
  %15 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)*, i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)*, i32 (%struct.mlxsw_core.0*, %struct.devlink_trap.1*, i8*)** %21, align 8
  %23 = load %struct.mlxsw_core*, %struct.mlxsw_core** %7, align 8
  %24 = bitcast %struct.mlxsw_core* %23 to %struct.mlxsw_core.0*
  %25 = load %struct.devlink_trap*, %struct.devlink_trap** %5, align 8
  %26 = bitcast %struct.devlink_trap* %25 to %struct.devlink_trap.1*
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 %22(%struct.mlxsw_core.0* %24, %struct.devlink_trap.1* %26, i8* %27)
  br label %29

29:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
