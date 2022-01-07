; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_add_vlan_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_add_vlan_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { i32 }
%struct.mlx5_esw_flow_attr = type { i32, i32, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mlx5_eswitch_rep = type { i64, i32, i32 }

@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i32 0, align 4
@MLX5_VPORT_UPLINK = common dso_local global i64 0, align 8
@SET_VLAN_STRIP = common dso_local global i32 0, align 4
@SET_VLAN_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_add_vlan_action(%struct.mlx5_eswitch* %0, %struct.mlx5_esw_flow_attr* %1) #0 {
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
  br label %178

21:                                               ; preds = %2
  %22 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %21
  %53 = phi i1 [ false, %21 ], [ %51, %46 ]
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @esw_add_vlan_action_check(%struct.mlx5_esw_flow_attr* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %173

68:                                               ; preds = %52
  %69 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call %struct.mlx5_eswitch_rep* @esw_vlan_action_get_vport(%struct.mlx5_esw_flow_attr* %71, i32 %72, i32 %73)
  store %struct.mlx5_eswitch_rep* %74, %struct.mlx5_eswitch_rep** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %102, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MLX5_VPORT_UPLINK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %96 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %100 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %83
  br label %173

102:                                              ; preds = %80, %77, %68
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %173

109:                                              ; preds = %105, %102
  %110 = load %struct.offloads_fdb*, %struct.offloads_fdb** %6, align 8
  %111 = getelementptr inbounds %struct.offloads_fdb, %struct.offloads_fdb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %116 = load i32, i32* @SET_VLAN_STRIP, align 4
  %117 = call i32 @esw_set_global_vlan_pop(%struct.mlx5_eswitch* %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %166

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %109
  %123 = load %struct.offloads_fdb*, %struct.offloads_fdb** %6, align 8
  %124 = getelementptr inbounds %struct.offloads_fdb, %struct.offloads_fdb* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %165

129:                                              ; preds = %122
  %130 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %131 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %160

135:                                              ; preds = %129
  %136 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %137 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %138 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %141 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SET_VLAN_INSERT, align 4
  %146 = load i32, i32* @SET_VLAN_STRIP, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @__mlx5_eswitch_set_vport_vlan(%struct.mlx5_eswitch* %136, i32 %139, i32 %144, i32 0, i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %135
  br label %166

152:                                              ; preds = %135
  %153 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %154 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %159 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %152, %134
  %161 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %162 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  br label %165

165:                                              ; preds = %160, %122
  br label %166

166:                                              ; preds = %165, %151, %120
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %5, align 8
  %171 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %170, i32 0, i32 1
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %172, %108, %101, %67
  %174 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %175 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %174, i32 0, i32 0
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %173, %20
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i64 @mlx5_eswitch_vlan_actions_supported(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @esw_add_vlan_action_check(%struct.mlx5_esw_flow_attr*, i32, i32, i32) #1

declare dso_local %struct.mlx5_eswitch_rep* @esw_vlan_action_get_vport(%struct.mlx5_esw_flow_attr*, i32, i32) #1

declare dso_local i32 @esw_set_global_vlan_pop(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @__mlx5_eswitch_set_vport_vlan(%struct.mlx5_eswitch*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
