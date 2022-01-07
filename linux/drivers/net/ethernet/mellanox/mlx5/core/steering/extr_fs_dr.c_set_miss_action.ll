; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_set_miss_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_fs_dr.c_set_miss_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { i32 }
%struct.mlx5_flow_table = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5dr_action*, %struct.mlx5dr_table* }
%struct.mlx5dr_action = type { i32 }
%struct.mlx5dr_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to destroy action (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*)* @set_miss_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_miss_action(%struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_flow_table*, align 8
  %8 = alloca %struct.mlx5dr_action*, align 8
  %9 = alloca %struct.mlx5dr_action*, align 8
  %10 = alloca %struct.mlx5dr_table*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %5, align 8
  store %struct.mlx5_flow_table* %1, %struct.mlx5_flow_table** %6, align 8
  store %struct.mlx5_flow_table* %2, %struct.mlx5_flow_table** %7, align 8
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %9, align 8
  %12 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %13 = icmp ne %struct.mlx5_flow_table* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi %struct.mlx5dr_table* [ %18, %14 ], [ null, %19 ]
  store %struct.mlx5dr_table* %21, %struct.mlx5dr_table** %10, align 8
  %22 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  %23 = icmp ne %struct.mlx5dr_table* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  %26 = call %struct.mlx5dr_action* @mlx5dr_action_create_dest_table(%struct.mlx5dr_table* %25)
  store %struct.mlx5dr_action* %26, %struct.mlx5dr_action** %9, align 8
  %27 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %28 = icmp ne %struct.mlx5dr_action* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %20
  %34 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %36, align 8
  store %struct.mlx5dr_action* %37, %struct.mlx5dr_action** %8, align 8
  %38 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %40, align 8
  %42 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %43 = call i32 @mlx5dr_table_set_miss_action(%struct.mlx5dr_table* %41, %struct.mlx5dr_action* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %33
  %47 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %48 = icmp ne %struct.mlx5dr_action* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %51 = call i32 @mlx5dr_action_destroy(%struct.mlx5dr_action* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %9, align 8
  %55 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @mlx5_core_err(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %49
  br label %61

61:                                               ; preds = %60, %46, %33
  %62 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %63 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  %64 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store %struct.mlx5dr_action* %62, %struct.mlx5dr_action** %65, align 8
  %66 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %8, align 8
  %67 = icmp ne %struct.mlx5dr_action* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %8, align 8
  %70 = call i32 @mlx5dr_action_destroy(%struct.mlx5dr_action* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @mlx5_core_err(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %61
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %29
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.mlx5dr_action* @mlx5dr_action_create_dest_table(%struct.mlx5dr_table*) #1

declare dso_local i32 @mlx5dr_table_set_miss_action(%struct.mlx5dr_table*, %struct.mlx5dr_action*) #1

declare dso_local i32 @mlx5dr_action_destroy(%struct.mlx5dr_action*) #1

declare dso_local i32 @mlx5_core_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
