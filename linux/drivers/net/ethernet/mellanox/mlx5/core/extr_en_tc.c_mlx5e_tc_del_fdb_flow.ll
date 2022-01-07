; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_del_fdb_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_del_fdb_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.mlx5e_tc_flow = type { %struct.mlx5_esw_flow_attr* }
%struct.mlx5_esw_flow_attr = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@NOT_READY = common dso_local global i32 0, align 4
@SLOW = common dso_local global i32 0, align 4
@MLX5_MAX_FLOW_FWD_VPORTS = common dso_local global i32 0, align 4
@MLX5_ESW_DEST_ENCAP = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_MOD_HDR = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*)* @mlx5e_tc_del_fdb_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tc_del_fdb_flow(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_tc_flow*, align 8
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %7 = alloca %struct.mlx5_esw_flow_attr, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %4, align 8
  %9 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %13, align 8
  store %struct.mlx5_eswitch* %14, %struct.mlx5_eswitch** %5, align 8
  %15 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %15, i32 0, i32 0
  %17 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %16, align 8
  store %struct.mlx5_esw_flow_attr* %17, %struct.mlx5_esw_flow_attr** %6, align 8
  %18 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %19 = load i32, i32* @NOT_READY, align 4
  %20 = call i64 @flow_flag_test(%struct.mlx5e_tc_flow* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %24 = call i32 @remove_unready_flow(%struct.mlx5e_tc_flow* %23)
  %25 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %25, i32 0, i32 3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = call i32 @kvfree(%struct.TYPE_8__* %27)
  br label %128

29:                                               ; preds = %2
  %30 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %31 = call i64 @mlx5e_is_offloaded_flow(%struct.mlx5e_tc_flow* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %35 = load i32, i32* @SLOW, align 4
  %36 = call i64 @flow_flag_test(%struct.mlx5e_tc_flow* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %40 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %41 = call i32 @mlx5e_tc_unoffload_from_slow_path(%struct.mlx5_eswitch* %39, %struct.mlx5e_tc_flow* %40, %struct.mlx5_esw_flow_attr* %7)
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %44 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %45 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %46 = call i32 @mlx5e_tc_unoffload_fdb_rules(%struct.mlx5_eswitch* %43, %struct.mlx5e_tc_flow* %44, %struct.mlx5_esw_flow_attr* %45)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %50 = call i64 @mlx5_flow_has_geneve_opt(%struct.mlx5e_tc_flow* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @mlx5_geneve_tlv_option_del(i32 %57)
  br label %59

59:                                               ; preds = %52, %48
  %60 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %61 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %62 = call i32 @mlx5_eswitch_del_vlan_action(%struct.mlx5_eswitch* %60, %struct.mlx5_esw_flow_attr* %61)
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %95, %59
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @MLX5_MAX_FLOW_FWD_VPORTS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %63
  %68 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %69 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %68, i32 0, i32 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MLX5_ESW_DEST_ENCAP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %67
  %80 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %81 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @mlx5e_detach_encap(%struct.mlx5e_priv* %80, %struct.mlx5e_tc_flow* %81, i32 %82)
  %84 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %85 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %84, i32 0, i32 3
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @kfree(i32 %92)
  br label %94

94:                                               ; preds = %79, %67
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %63

98:                                               ; preds = %63
  %99 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %100 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %99, i32 0, i32 3
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = call i32 @kvfree(%struct.TYPE_8__* %101)
  %103 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %104 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %111 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %112 = call i32 @mlx5e_detach_mod_hdr(%struct.mlx5e_priv* %110, %struct.mlx5e_tc_flow* %111)
  br label %113

113:                                              ; preds = %109, %98
  %114 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %115 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_COUNT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %122 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %6, align 8
  %125 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @mlx5_fc_destroy(i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %22, %120, %113
  ret void
}

declare dso_local i64 @flow_flag_test(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @remove_unready_flow(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @kvfree(%struct.TYPE_8__*) #1

declare dso_local i64 @mlx5e_is_offloaded_flow(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @mlx5e_tc_unoffload_from_slow_path(%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @mlx5e_tc_unoffload_fdb_rules(%struct.mlx5_eswitch*, %struct.mlx5e_tc_flow*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i64 @mlx5_flow_has_geneve_opt(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @mlx5_geneve_tlv_option_del(i32) #1

declare dso_local i32 @mlx5_eswitch_del_vlan_action(%struct.mlx5_eswitch*, %struct.mlx5_esw_flow_attr*) #1

declare dso_local i32 @mlx5e_detach_encap(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlx5e_detach_mod_hdr(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

declare dso_local i32 @mlx5_fc_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
