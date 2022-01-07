; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_tc_vlan_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_parse_tc_vlan_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.flow_action_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx5_esw_flow_attr = type { i64, i32*, i32*, i32* }

@MLX5_FS_VLAN_DEPTH = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2 = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_POP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2 = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_action_entry*, %struct.mlx5_esw_flow_attr*, i32*)* @parse_tc_vlan_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tc_vlan_action(%struct.mlx5e_priv* %0, %struct.flow_action_entry* %1, %struct.mlx5_esw_flow_attr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.flow_action_entry*, align 8
  %8 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %7, align 8
  store %struct.mlx5_esw_flow_attr* %2, %struct.mlx5_esw_flow_attr** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %12 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @MLX5_FS_VLAN_DEPTH, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %148

20:                                               ; preds = %4
  %21 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %22 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %140 [
    i32 129, label %24
    i32 128, label %49
  ]

24:                                               ; preds = %20
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @MLX5_FS_VLAN_DEPTH, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @mlx5_eswitch_vlan_actions_supported(i32 %30, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %148

38:                                               ; preds = %27
  %39 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %48

43:                                               ; preds = %24
  %44 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_POP, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %38
  br label %143

49:                                               ; preds = %20
  %50 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %51 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %53, i32* %58, align 4
  %59 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %60 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %64 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %69 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %73 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %78 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %49
  %85 = load i32, i32* @ETH_P_8021Q, align 4
  %86 = call i32 @htons(i32 %85)
  %87 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %88 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %49
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %97 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* @MLX5_FS_VLAN_DEPTH, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @mlx5_eswitch_vlan_actions_supported(i32 %98, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %148

106:                                              ; preds = %95
  %107 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %139

111:                                              ; preds = %92
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %113 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mlx5_eswitch_vlan_actions_supported(i32 %114, i32 1)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %111
  %118 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %119 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ETH_P_8021Q, align 4
  %123 = call i32 @htons(i32 %122)
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %117
  %126 = load %struct.flow_action_entry*, %struct.flow_action_entry** %7, align 8
  %127 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125, %117
  %132 = load i32, i32* @EOPNOTSUPP, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %148

134:                                              ; preds = %125, %111
  %135 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %106
  br label %143

140:                                              ; preds = %20
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %148

143:                                              ; preds = %139, %48
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %144, 1
  %146 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %8, align 8
  %147 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %143, %140, %131, %103, %35, %17
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @mlx5_eswitch_vlan_actions_supported(i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
