; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c___mlxsw_sx_port_ib_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c___mlxsw_sx_port_ib_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx = type { %struct.mlxsw_sx_port**, i32 }
%struct.mlxsw_sx_port = type { i32 }

@MLXSW_PORT_SWID_DISABLED_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sx*, i64)* @__mlxsw_sx_port_ib_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_sx_port_ib_remove(%struct.mlxsw_sx* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxsw_sx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlxsw_sx_port*, align 8
  store %struct.mlxsw_sx* %0, %struct.mlxsw_sx** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %6, i32 0, i32 0
  %8 = load %struct.mlxsw_sx_port**, %struct.mlxsw_sx_port*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %8, i64 %9
  %11 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %10, align 8
  store %struct.mlxsw_sx_port* %11, %struct.mlxsw_sx_port** %5, align 8
  %12 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %17 = call i32 @mlxsw_core_port_clear(i32 %14, i64 %15, %struct.mlxsw_sx* %16)
  %18 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sx_port**, %struct.mlxsw_sx_port*** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %20, i64 %21
  store %struct.mlxsw_sx_port* null, %struct.mlxsw_sx_port** %22, align 8
  %23 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %5, align 8
  %24 = call i32 @mlxsw_sx_port_admin_status_set(%struct.mlxsw_sx_port* %23, i32 0)
  %25 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %5, align 8
  %26 = load i32, i32* @MLXSW_PORT_SWID_DISABLED_PORT, align 4
  %27 = call i32 @mlxsw_sx_port_swid_set(%struct.mlxsw_sx_port* %25, i32 %26)
  %28 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %5, align 8
  %29 = call i32 @kfree(%struct.mlxsw_sx_port* %28)
  ret void
}

declare dso_local i32 @mlxsw_core_port_clear(i32, i64, %struct.mlxsw_sx*) #1

declare dso_local i32 @mlxsw_sx_port_admin_status_set(%struct.mlxsw_sx_port*, i32) #1

declare dso_local i32 @mlxsw_sx_port_swid_set(%struct.mlxsw_sx_port*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sx_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
