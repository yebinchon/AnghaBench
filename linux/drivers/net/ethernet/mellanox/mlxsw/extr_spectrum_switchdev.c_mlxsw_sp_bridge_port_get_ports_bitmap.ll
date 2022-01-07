; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_get_ports_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_get_ports_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i32, i32, i32 }
%struct.mlxsw_sp_port = type { i32 }

@MAX_LAG_MEMBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_port*, i64*)* @mlxsw_sp_bridge_port_get_ports_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_bridge_port_get_ports_bitmap(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_bridge_port* %1, i64* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_bridge_port* %1, %struct.mlxsw_sp_bridge_port** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 @set_bit(i32 %18, i64* %19)
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_LAG_MEMBERS, align 4
  %26 = call i64 @MLXSW_CORE_RES_GET(i32 %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %48, %21
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call %struct.mlxsw_sp_port* @mlxsw_sp_port_lagged_get(%struct.mlxsw_sp* %35, i32 %36, i64 %37)
  store %struct.mlxsw_sp_port* %38, %struct.mlxsw_sp_port** %7, align 8
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %40 = icmp ne %struct.mlxsw_sp_port* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64*, i64** %6, align 8
  %46 = call i32 @set_bit(i32 %44, i64* %45)
  br label %47

47:                                               ; preds = %41, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %30

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51, %15
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local %struct.mlxsw_sp_port* @mlxsw_sp_port_lagged_get(%struct.mlxsw_sp*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
