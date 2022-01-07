; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_mc_remove_mdb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_mc_remove_mdb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_mid = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_mid*)* @mlxsw_sp_mc_remove_mdb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mc_remove_mdb_entry(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_mid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_mid*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_mid* %1, %struct.mlxsw_sp_mid** %5, align 8
  %6 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %5, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  %12 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clear_bit(i32 %14, i32 %19)
  %21 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %24 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlxsw_sp_port_mdb_op(%struct.mlxsw_sp* %23, i32 %26, i32 %29, i32 %32, i32 0)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %11, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_mdb_op(%struct.mlxsw_sp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
