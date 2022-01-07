; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_occ_max_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_devlink_sb_occ_max_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.mlxsw_core = type { %struct.mlxsw_driver* }
%struct.mlxsw_driver = type { i32 (%struct.mlxsw_core.0*, i32)* }
%struct.mlxsw_core.0 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32)* @mlxsw_devlink_sb_occ_max_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_devlink_sb_occ_max_clear(%struct.devlink* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca %struct.mlxsw_driver*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.devlink*, %struct.devlink** %4, align 8
  %9 = call %struct.mlxsw_core* @devlink_priv(%struct.devlink* %8)
  store %struct.mlxsw_core* %9, %struct.mlxsw_core** %6, align 8
  %10 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %11 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %11, align 8
  store %struct.mlxsw_driver* %12, %struct.mlxsw_driver** %7, align 8
  %13 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %7, align 8
  %14 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.mlxsw_core.0*, i32)*, i32 (%struct.mlxsw_core.0*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.mlxsw_core.0*, i32)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_driver*, %struct.mlxsw_driver** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_driver, %struct.mlxsw_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.mlxsw_core.0*, i32)*, i32 (%struct.mlxsw_core.0*, i32)** %22, align 8
  %24 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %25 = bitcast %struct.mlxsw_core* %24 to %struct.mlxsw_core.0*
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %23(%struct.mlxsw_core.0* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.mlxsw_core* @devlink_priv(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
