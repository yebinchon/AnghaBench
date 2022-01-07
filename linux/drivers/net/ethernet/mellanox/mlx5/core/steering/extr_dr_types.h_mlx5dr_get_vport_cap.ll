; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_types.h_mlx5dr_get_vport_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_types.h_mlx5dr_get_vport_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_cmd_vport_cap = type { i32 }
%struct.mlx5dr_cmd_caps = type { i64, %struct.mlx5dr_cmd_vport_cap* }

@WIRE_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_cmd_vport_cap* (%struct.mlx5dr_cmd_caps*, i64)* @mlx5dr_get_vport_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_cmd_vport_cap* @mlx5dr_get_vport_cap(%struct.mlx5dr_cmd_caps* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5dr_cmd_vport_cap*, align 8
  %4 = alloca %struct.mlx5dr_cmd_caps*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5dr_cmd_caps* %0, %struct.mlx5dr_cmd_caps** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %6, i32 0, i32 1
  %8 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %7, align 8
  %9 = icmp ne %struct.mlx5dr_cmd_vport_cap* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @WIRE_PORT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store %struct.mlx5dr_cmd_vport_cap* null, %struct.mlx5dr_cmd_vport_cap** %3, align 8
  br label %35

21:                                               ; preds = %16, %10
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @WIRE_PORT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.mlx5dr_cmd_caps*, %struct.mlx5dr_cmd_caps** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_cmd_caps, %struct.mlx5dr_cmd_caps* %30, i32 0, i32 1
  %32 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap* %32, i64 %33
  store %struct.mlx5dr_cmd_vport_cap* %34, %struct.mlx5dr_cmd_vport_cap** %3, align 8
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %3, align 8
  ret %struct.mlx5dr_cmd_vport_cap* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
