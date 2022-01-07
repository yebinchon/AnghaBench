; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_del_nic_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_tc_del_nic_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.mlx5e_tc_flow = type { i32*, %struct.mlx5_nic_flow_attr* }
%struct.mlx5_nic_flow_attr = type { i32, %struct.mlx5_fc* }
%struct.mlx5_fc = type { i32 }

@NIC_OFFLOAD = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_MOD_HDR = common dso_local global i32 0, align 4
@HAIRPIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*)* @mlx5e_tc_del_nic_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tc_del_nic_flow(%struct.mlx5e_priv* %0, %struct.mlx5e_tc_flow* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_tc_flow*, align 8
  %5 = alloca %struct.mlx5_nic_flow_attr*, align 8
  %6 = alloca %struct.mlx5_fc*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_tc_flow* %1, %struct.mlx5e_tc_flow** %4, align 8
  %7 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %7, i32 0, i32 1
  %9 = load %struct.mlx5_nic_flow_attr*, %struct.mlx5_nic_flow_attr** %8, align 8
  store %struct.mlx5_nic_flow_attr* %9, %struct.mlx5_nic_flow_attr** %5, align 8
  store %struct.mlx5_fc* null, %struct.mlx5_fc** %6, align 8
  %10 = load %struct.mlx5_nic_flow_attr*, %struct.mlx5_nic_flow_attr** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_nic_flow_attr, %struct.mlx5_nic_flow_attr* %10, i32 0, i32 1
  %12 = load %struct.mlx5_fc*, %struct.mlx5_fc** %11, align 8
  store %struct.mlx5_fc* %12, %struct.mlx5_fc** %6, align 8
  %13 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IS_ERR_OR_NULL(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx5_del_flow_rules(i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mlx5_fc*, %struct.mlx5_fc** %6, align 8
  %32 = call i32 @mlx5_fc_destroy(i32 %30, %struct.mlx5_fc* %31)
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %39 = load i32, i32* @NIC_OFFLOAD, align 4
  %40 = call i32 @MLX5_TC_FLAG(i32 %39)
  %41 = call i32 @mlx5e_tc_num_filters(%struct.mlx5e_priv* %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %27
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @mlx5_destroy_flow_table(i32* %55)
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %50, %43, %27
  %62 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.mlx5_nic_flow_attr*, %struct.mlx5_nic_flow_attr** %5, align 8
  %68 = getelementptr inbounds %struct.mlx5_nic_flow_attr, %struct.mlx5_nic_flow_attr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_MOD_HDR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %75 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %76 = call i32 @mlx5e_detach_mod_hdr(%struct.mlx5e_priv* %74, %struct.mlx5e_tc_flow* %75)
  br label %77

77:                                               ; preds = %73, %61
  %78 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %79 = load i32, i32* @HAIRPIN, align 4
  %80 = call i64 @flow_flag_test(%struct.mlx5e_tc_flow* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %84 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %4, align 8
  %85 = call i32 @mlx5e_hairpin_flow_del(%struct.mlx5e_priv* %83, %struct.mlx5e_tc_flow* %84)
  br label %86

86:                                               ; preds = %82, %77
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @mlx5_del_flow_rules(i32) #1

declare dso_local i32 @mlx5_fc_destroy(i32, %struct.mlx5_fc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5e_tc_num_filters(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @MLX5_TC_FLAG(i32) #1

declare dso_local i32 @mlx5_destroy_flow_table(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5e_detach_mod_hdr(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

declare dso_local i64 @flow_flag_test(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @mlx5e_hairpin_flow_del(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
