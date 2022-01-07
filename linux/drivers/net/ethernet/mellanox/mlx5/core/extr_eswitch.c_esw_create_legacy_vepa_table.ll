; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_create_legacy_vepa_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_create_legacy_vepa_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_4__, %struct.mlx5_core_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_flow_namespace = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to get FDB flow namespace\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LEGACY_VEPA_PRIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create VEPA FDB err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*)* @esw_create_legacy_vepa_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_create_legacy_vepa_table(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_flow_namespace*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  %8 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %8, i32 0, i32 1
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %10, %struct.mlx5_core_dev** %4, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = call %struct.mlx5_flow_namespace* @mlx5_get_fdb_sub_ns(%struct.mlx5_core_dev* %11, i32 0)
  store %struct.mlx5_flow_namespace* %12, %struct.mlx5_flow_namespace** %5, align 8
  %13 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %14 = icmp ne %struct.mlx5_flow_namespace* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %5, align 8
  %22 = load i32, i32* @LEGACY_VEPA_PRIO, align 4
  %23 = call %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace* %21, i32 %22, i32 2, i32 2, i32 0, i32 0)
  store %struct.mlx5_flow_table* %23, %struct.mlx5_flow_table** %6, align 8
  %24 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %25 = call i64 @IS_ERR(%struct.mlx5_flow_table* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (%struct.mlx5_core_dev*, i8*, ...) @esw_warn(%struct.mlx5_core_dev* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %36 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.mlx5_flow_table* %35, %struct.mlx5_flow_table** %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %27, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_fdb_sub_ns(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @esw_warn(%struct.mlx5_core_dev*, i8*, ...) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
