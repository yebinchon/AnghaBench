; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_kvdl.c_mlxsw_sp_kvdl_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_kvdl.c_mlxsw_sp_kvdl_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_kvdl* }
%struct.mlxsw_sp_kvdl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_kvdl_fini(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.mlxsw_sp_kvdl*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %4 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %4, i32 0, i32 0
  %6 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %5, align 8
  store %struct.mlxsw_sp_kvdl* %6, %struct.mlxsw_sp_kvdl** %3, align 8
  %7 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_kvdl, %struct.mlxsw_sp_kvdl* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.mlxsw_sp*, i32)*, i32 (%struct.mlxsw_sp*, i32)** %10, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %13 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_kvdl, %struct.mlxsw_sp_kvdl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %11(%struct.mlxsw_sp* %12, i32 %15)
  %17 = load %struct.mlxsw_sp_kvdl*, %struct.mlxsw_sp_kvdl** %3, align 8
  %18 = call i32 @kfree(%struct.mlxsw_sp_kvdl* %17)
  ret void
}

declare dso_local i32 @kfree(%struct.mlxsw_sp_kvdl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
