; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_actions_apply_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_actions_apply_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.dr_action_apply_attr = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DR_ACTION_TYP_L2_TO_TNL_L2 = common dso_local global i64 0, align 8
@DR_ACTION_TYP_L2_TO_TNL_L3 = common dso_local global i64 0, align 8
@DR_ACTION_TYP_MODIFY_HDR = common dso_local global i64 0, align 8
@MLX5DR_STE_TYPE_MODIFY_PKT = common dso_local global i32 0, align 4
@DR_ACTION_TYP_PUSH_VLAN = common dso_local global i64 0, align 8
@MLX5DR_STE_TYPE_TX = common dso_local global i32 0, align 4
@prio_tag_required = common dso_local global i32 0, align 4
@DR_ACTION_TYP_CTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_domain*, i64*, i64*, %struct.dr_action_apply_attr*, i32*)* @dr_actions_apply_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_actions_apply_tx(%struct.mlx5dr_domain* %0, i64* %1, i64* %2, %struct.dr_action_apply_attr* %3, i32* %4) #0 {
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.dr_action_apply_attr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.dr_action_apply_attr* %3, %struct.dr_action_apply_attr** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* @DR_ACTION_TYP_L2_TO_TNL_L2, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* @DR_ACTION_TYP_L2_TO_TNL_L3, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* @DR_ACTION_TYP_MODIFY_HDR, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* @MLX5DR_STE_TYPE_MODIFY_PKT, align 4
  %35 = call i32 @mlx5dr_ste_set_entry_type(i64* %33, i32 %34)
  %36 = load i64*, i64** %8, align 8
  %37 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %38 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %41 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mlx5dr_ste_set_rewrite_actions(i64* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %32, %24
  %45 = load i64*, i64** %7, align 8
  %46 = load i64, i64* @DR_ACTION_TYP_PUSH_VLAN, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %90

50:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %54 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %51
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* @DR_ACTION_TYP_MODIFY_HDR, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61, %58
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* @MLX5DR_STE_TYPE_TX, align 4
  %70 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %71 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dr_actions_init_next_ste(i64** %8, i32* %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i64*, i64** %8, align 8
  %76 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %77 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @mlx5dr_ste_set_tx_push_vlan(i64* %75, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %51

89:                                               ; preds = %51
  br label %90

90:                                               ; preds = %89, %44
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %135

93:                                               ; preds = %90
  %94 = load i64*, i64** %7, align 8
  %95 = load i64, i64* @DR_ACTION_TYP_MODIFY_HDR, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i64*, i64** %7, align 8
  %101 = load i64, i64* @DR_ACTION_TYP_PUSH_VLAN, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99, %93
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* @MLX5DR_STE_TYPE_TX, align 4
  %108 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %109 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dr_actions_init_next_ste(i64** %8, i32* %106, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %105, %99
  %113 = load i64*, i64** %8, align 8
  %114 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %115 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %118 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i64*, i64** %7, align 8
  %121 = load i64, i64* @DR_ACTION_TYP_L2_TO_TNL_L3, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @mlx5dr_ste_set_tx_encap(i64* %113, i32 %116, i32 %119, i64 %123)
  %125 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %126 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @prio_tag_required, align 4
  %129 = call i64 @MLX5_CAP_GEN(i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %112
  %132 = load i64*, i64** %8, align 8
  %133 = call i32 @mlx5dr_ste_set_go_back_bit(i64* %132)
  br label %134

134:                                              ; preds = %131, %112
  br label %135

135:                                              ; preds = %134, %90
  %136 = load i64*, i64** %7, align 8
  %137 = load i64, i64* @DR_ACTION_TYP_CTR, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i64*, i64** %8, align 8
  %143 = load %struct.dr_action_apply_attr*, %struct.dr_action_apply_attr** %9, align 8
  %144 = getelementptr inbounds %struct.dr_action_apply_attr, %struct.dr_action_apply_attr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @mlx5dr_ste_set_counter_id(i64* %142, i32 %145)
  br label %147

147:                                              ; preds = %141, %135
  ret void
}

declare dso_local i32 @mlx5dr_ste_set_entry_type(i64*, i32) #1

declare dso_local i32 @mlx5dr_ste_set_rewrite_actions(i64*, i32, i32) #1

declare dso_local i32 @dr_actions_init_next_ste(i64**, i32*, i32, i32) #1

declare dso_local i32 @mlx5dr_ste_set_tx_push_vlan(i64*, i32, i32) #1

declare dso_local i32 @mlx5dr_ste_set_tx_encap(i64*, i32, i32, i64) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5dr_ste_set_go_back_bit(i64*) #1

declare dso_local i32 @mlx5dr_ste_set_counter_id(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
