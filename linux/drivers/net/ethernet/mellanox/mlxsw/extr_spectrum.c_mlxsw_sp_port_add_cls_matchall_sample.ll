; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_add_cls_matchall_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_add_cls_matchall_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.tc_cls_matchall_offload = type { i32 }
%struct.flow_action_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sample already active\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@MLXSW_REG_MPSC_RATE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"sample rate not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.tc_cls_matchall_offload*, %struct.flow_action_entry*, i32)* @mlxsw_sp_port_add_cls_matchall_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_add_cls_matchall_sample(%struct.mlxsw_sp_port* %0, %struct.tc_cls_matchall_offload* %1, %struct.flow_action_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca %struct.tc_cls_matchall_offload*, align 8
  %8 = alloca %struct.flow_action_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %6, align 8
  store %struct.tc_cls_matchall_offload* %1, %struct.tc_cls_matchall_offload** %7, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %100

18:                                               ; preds = %4
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @rtnl_dereference(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netdev_err(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EEXIST, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %100

33:                                               ; preds = %18
  %34 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %35 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MLXSW_REG_MPSC_RATE_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netdev_err(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %100

47:                                               ; preds = %33
  %48 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %54 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rcu_assign_pointer(i32 %52, i32 %56)
  %58 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %59 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 8
  %66 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %67 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 4
  %74 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %75 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i64 %77, i64* %81, align 8
  %82 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %83 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %84 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @mlxsw_sp_port_sample_set(%struct.mlxsw_sp_port* %82, i32 1, i64 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %47
  br label %92

91:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %100

92:                                               ; preds = %90
  %93 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @RCU_INIT_POINTER(i32 %97, i32* null)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %92, %91, %40, %26, %15
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @rtnl_dereference(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_sample_set(%struct.mlxsw_sp_port*, i32, i64) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
