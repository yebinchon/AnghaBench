; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_actions_apply_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_actions_apply_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dr_action_apply_attr = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DR_ACTION_TYP_CTR = common dso_local global i64 0, align 8
@DR_ACTION_TYP_TNL_L3_TO_L2 = common dso_local global i64 0, align 8
@MLX5DR_STE_TYPE_MODIFY_PKT = common dso_local global i64 0, align 8
@DR_ACTION_TYP_TNL_L2_TO_L2 = common dso_local global i64 0, align 8
@DR_ACTION_TYP_POP_VLAN = common dso_local global i64 0, align 8
@MLX5DR_STE_TYPE_RX = common dso_local global i64 0, align 8
@DR_ACTION_TYP_MODIFY_HDR = common dso_local global i64 0, align 8
@DR_ACTION_TYP_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, %struct.dr_action_apply_attr*, i32*)* @dr_actions_apply_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_actions_apply_rx(i64* %0, i64* %1, %struct.dr_action_apply_attr* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.dr_action_apply_attr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.dr_action_apply_attr* %2, %struct.dr_action_apply_attr** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* @DR_ACTION_TYP_CTR, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i64*, i64** %6, align 8
  %17 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %18 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlx5dr_ste_set_counter_id(i64* %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* @DR_ACTION_TYP_TNL_L3_TO_L2, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* @MLX5DR_STE_TYPE_MODIFY_PKT, align 8
  %30 = call i32 @mlx5dr_ste_set_entry_type(i64* %28, i64 %29)
  %31 = load i64*, i64** %6, align 8
  %32 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %33 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mlx5dr_ste_set_rx_decap_l3(i64* %31, i32 %34)
  %36 = load i64*, i64** %6, align 8
  %37 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %38 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %41 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mlx5dr_ste_set_rewrite_actions(i64* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %27, %21
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* @DR_ACTION_TYP_TNL_L2_TO_L2, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i64*, i64** %6, align 8
  %52 = call i32 @mlx5dr_ste_set_rx_decap(i64* %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* @DR_ACTION_TYP_POP_VLAN, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %92, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %63 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* @DR_ACTION_TYP_TNL_L2_TO_L2, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* @DR_ACTION_TYP_TNL_L3_TO_L2, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76, %70, %67
  %83 = load i32*, i32** %8, align 8
  %84 = load i64, i64* @MLX5DR_STE_TYPE_RX, align 8
  %85 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %86 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dr_actions_init_next_ste(i64** %6, i32* %83, i64 %84, i32 %87)
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i64*, i64** %6, align 8
  %91 = call i32 @mlx5dr_ste_set_rx_pop_vlan(i64* %90)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %60

95:                                               ; preds = %60
  br label %96

96:                                               ; preds = %95, %53
  %97 = load i64*, i64** %5, align 8
  %98 = load i64, i64* @DR_ACTION_TYP_MODIFY_HDR, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %96
  %103 = load i64*, i64** %6, align 8
  %104 = call i64 @mlx5dr_ste_get_entry_type(i64* %103)
  %105 = load i64, i64* @MLX5DR_STE_TYPE_MODIFY_PKT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32*, i32** %8, align 8
  %109 = load i64, i64* @MLX5DR_STE_TYPE_MODIFY_PKT, align 8
  %110 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %111 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dr_actions_init_next_ste(i64** %6, i32* %108, i64 %109, i32 %112)
  br label %118

114:                                              ; preds = %102
  %115 = load i64*, i64** %6, align 8
  %116 = load i64, i64* @MLX5DR_STE_TYPE_MODIFY_PKT, align 8
  %117 = call i32 @mlx5dr_ste_set_entry_type(i64* %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i64*, i64** %6, align 8
  %120 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %121 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %124 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mlx5dr_ste_set_rewrite_actions(i64* %119, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %118, %96
  %128 = load i64*, i64** %5, align 8
  %129 = load i64, i64* @DR_ACTION_TYP_TAG, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %127
  %134 = load i64*, i64** %6, align 8
  %135 = call i64 @mlx5dr_ste_get_entry_type(i64* %134)
  %136 = load i64, i64* @MLX5DR_STE_TYPE_MODIFY_PKT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i32*, i32** %8, align 8
  %140 = load i64, i64* @MLX5DR_STE_TYPE_RX, align 8
  %141 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %142 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dr_actions_init_next_ste(i64** %6, i32* %139, i64 %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %133
  %146 = load i64*, i64** %6, align 8
  %147 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %7, align 8
  %148 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @mlx5dr_ste_rx_set_flow_tag(i64* %146, i32 %149)
  br label %151

151:                                              ; preds = %145, %127
  ret void
}

declare dso_local i32 @mlx5dr_ste_set_counter_id(i64*, i32) #1

declare dso_local i32 @mlx5dr_ste_set_entry_type(i64*, i64) #1

declare dso_local i32 @mlx5dr_ste_set_rx_decap_l3(i64*, i32) #1

declare dso_local i32 @mlx5dr_ste_set_rewrite_actions(i64*, i32, i32) #1

declare dso_local i32 @mlx5dr_ste_set_rx_decap(i64*) #1

declare dso_local i32 @dr_actions_init_next_ste(i64**, i32*, i64, i32) #1

declare dso_local i32 @mlx5dr_ste_set_rx_pop_vlan(i64*) #1

declare dso_local i64 @mlx5dr_ste_get_entry_type(i64*) #1

declare dso_local i32 @mlx5dr_ste_rx_set_flow_tag(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
