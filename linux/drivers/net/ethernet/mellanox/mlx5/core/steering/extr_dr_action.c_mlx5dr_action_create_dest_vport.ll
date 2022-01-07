; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_dest_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_dest_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_domain* }
%struct.mlx5dr_cmd_vport_cap = type { i32 }
%struct.mlx5dr_domain = type { i64, %struct.TYPE_4__, %struct.mlx5dr_domain* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"No peer vport domain for given vhca_id\0A\00", align 1
@MLX5DR_DOMAIN_TYPE_FDB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Domain doesn't support vport actions\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to get vport %d caps\0A\00", align 1
@DR_ACTION_TYP_VPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_action* @mlx5dr_action_create_dest_vport(%struct.mlx5dr_domain* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlx5dr_action*, align 8
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mlx5dr_cmd_vport_cap*, align 8
  %11 = alloca %struct.mlx5dr_domain*, align 8
  %12 = alloca %struct.mlx5dr_action*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br label %24

24:                                               ; preds = %16, %4
  %25 = phi i1 [ false, %4 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %30, i32 0, i32 2
  %32 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %31, align 8
  br label %35

33:                                               ; preds = %24
  %34 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi %struct.mlx5dr_domain* [ %32, %29 ], [ %34, %33 ]
  store %struct.mlx5dr_domain* %36, %struct.mlx5dr_domain** %11, align 8
  %37 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %38 = icmp ne %struct.mlx5dr_domain* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %41 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %5, align 8
  br label %79

42:                                               ; preds = %35
  %43 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MLX5DR_DOMAIN_TYPE_FDB, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %50 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %5, align 8
  br label %79

51:                                               ; preds = %42
  %52 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.mlx5dr_cmd_vport_cap* @mlx5dr_get_vport_cap(%struct.TYPE_6__* %54, i32 %55)
  store %struct.mlx5dr_cmd_vport_cap* %56, %struct.mlx5dr_cmd_vport_cap** %10, align 8
  %57 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %10, align 8
  %58 = icmp ne %struct.mlx5dr_cmd_vport_cap* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %5, align 8
  br label %79

63:                                               ; preds = %51
  %64 = load i32, i32* @DR_ACTION_TYP_VPORT, align 4
  %65 = call %struct.mlx5dr_action* @dr_action_create_generic(i32 %64)
  store %struct.mlx5dr_action* %65, %struct.mlx5dr_action** %12, align 8
  %66 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %12, align 8
  %67 = icmp ne %struct.mlx5dr_action* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %5, align 8
  br label %79

69:                                               ; preds = %63
  %70 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %11, align 8
  %71 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %12, align 8
  %72 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store %struct.mlx5dr_domain* %70, %struct.mlx5dr_domain** %73, align 8
  %74 = load %struct.mlx5dr_cmd_vport_cap*, %struct.mlx5dr_cmd_vport_cap** %10, align 8
  %75 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %12, align 8
  %76 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store %struct.mlx5dr_cmd_vport_cap* %74, %struct.mlx5dr_cmd_vport_cap** %77, align 8
  %78 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %12, align 8
  store %struct.mlx5dr_action* %78, %struct.mlx5dr_action** %5, align 8
  br label %79

79:                                               ; preds = %69, %68, %59, %48, %39
  %80 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %5, align 8
  ret %struct.mlx5dr_action* %80
}

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*, ...) #1

declare dso_local %struct.mlx5dr_cmd_vport_cap* @mlx5dr_get_vport_cap(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.mlx5dr_action* @dr_action_create_generic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
