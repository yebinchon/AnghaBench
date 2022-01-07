; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_del_vlan_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_del_vlan_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { i64 }
%struct.mlx5_esw_flow_attr = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5_eswitch_rep = type { i32, i64, i64 }

@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@SET_VLAN_STRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_del_vlan_action(%struct.mlx5_eswitch* %0, %struct.mlx5_esw_flow_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %6 = alloca %struct.offloads_fdb*, align 8
  %7 = alloca %struct.mlx5_eswitch_rep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.mlx5_esw_flow_attr* %1, %struct.mlx5_esw_flow_attr** %5, align 8
  %12 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.offloads_fdb* %14, %struct.offloads_fdb** %6, align 8
  store %struct.mlx5_eswitch_rep* null, %struct.mlx5_eswitch_rep** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @mlx5_eswitch_vlan_actions_supported(i32 %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %132

21:                                               ; preds = %2
  %22 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %132

27:                                               ; preds = %21
  %28 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.mlx5_eswitch_rep* @esw_vlan_action_get_vport(%struct.mlx5_esw_flow_attr* %58, i32 %59, i32 %60)
  store %struct.mlx5_eswitch_rep* %61, %struct.mlx5_eswitch_rep** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %27
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %72 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %83 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %81, %70
  br label %127

87:                                               ; preds = %67, %64, %27
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  %91 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %92 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %96 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %114

100:                                              ; preds = %90
  %101 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %102 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %104 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %105 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SET_VLAN_STRIP, align 4
  %108 = call i32 @__mlx5_eswitch_set_vport_vlan(%struct.mlx5_eswitch* %103, i32 %106, i32 0, i32 0, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %127

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %87
  br label %114

114:                                              ; preds = %113, %99
  %115 = load %struct.offloads_fdb*, %struct.offloads_fdb** %6, align 8
  %116 = getelementptr inbounds %struct.offloads_fdb, %struct.offloads_fdb* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.offloads_fdb*, %struct.offloads_fdb** %6, align 8
  %120 = getelementptr inbounds %struct.offloads_fdb, %struct.offloads_fdb* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %127

124:                                              ; preds = %114
  %125 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %126 = call i32 @esw_set_global_vlan_pop(%struct.mlx5_eswitch* %125, i32 0)
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %124, %123, %111, %86
  %128 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %129 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %26, %20
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @mlx5_eswitch_vlan_actions_supported(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_eswitch_rep* @esw_vlan_action_get_vport(%struct.mlx5_esw_flow_attr*, i32, i32) #1

declare dso_local i32 @__mlx5_eswitch_set_vport_vlan(%struct.mlx5_eswitch*, i32, i32, i32, i32) #1

declare dso_local i32 @esw_set_global_vlan_pop(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
