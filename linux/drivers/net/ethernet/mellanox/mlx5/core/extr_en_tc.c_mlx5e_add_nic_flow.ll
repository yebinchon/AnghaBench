; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_add_nic_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_add_nic_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx5e_tc_flow = type { i32 }
%struct.flow_rule = type { i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32, %struct.net_device* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5E_TC_FLOW_FLAG_NIC = common dso_local global i32 0, align 4
@OFFLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_cls_offload*, i64, %struct.net_device*, %struct.mlx5e_tc_flow**)* @mlx5e_add_nic_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_add_nic_flow(%struct.mlx5e_priv* %0, %struct.flow_cls_offload* %1, i64 %2, %struct.net_device* %3, %struct.mlx5e_tc_flow** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.mlx5e_tc_flow**, align 8
  %12 = alloca %struct.flow_rule*, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %15 = alloca %struct.mlx5e_tc_flow*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %7, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store %struct.mlx5e_tc_flow** %4, %struct.mlx5e_tc_flow*** %11, align 8
  %18 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %19 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %18)
  store %struct.flow_rule* %19, %struct.flow_rule** %12, align 8
  %20 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %21 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %22, align 8
  store %struct.netlink_ext_ack* %23, %struct.netlink_ext_ack** %13, align 8
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %28 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %27, i32 0, i32 0
  %29 = call i32 @tc_cls_can_offload_and_chain0(i32 %26, %struct.TYPE_2__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %99

34:                                               ; preds = %5
  %35 = load i32, i32* @MLX5E_TC_FLOW_FLAG_NIC, align 4
  %36 = call i64 @BIT(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %9, align 8
  store i32 4, i32* %16, align 4
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @mlx5e_alloc_flow(%struct.mlx5e_priv* %39, i32 %40, %struct.flow_cls_offload* %41, i64 %42, %struct.mlx5e_tc_flow_parse_attr** %14, %struct.mlx5e_tc_flow** %15)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %97

47:                                               ; preds = %34
  %48 = load %struct.net_device*, %struct.net_device** %10, align 8
  %49 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %50 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %49, i32 0, i32 1
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %52 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %55 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %56 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, %struct.mlx5e_tc_flow_parse_attr* %55, i32 0, i32 0
  %57 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %58 = load %struct.net_device*, %struct.net_device** %10, align 8
  %59 = call i32 @parse_cls_flower(i32 %53, %struct.mlx5e_tc_flow* %54, i32* %56, %struct.flow_cls_offload* %57, %struct.net_device* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %91

63:                                               ; preds = %47
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %65 = load %struct.flow_rule*, %struct.flow_rule** %12, align 8
  %66 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %65, i32 0, i32 0
  %67 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %68 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %70 = call i32 @parse_tc_nic_actions(%struct.mlx5e_priv* %64, i32* %66, %struct.mlx5e_tc_flow_parse_attr* %67, %struct.mlx5e_tc_flow* %68, %struct.netlink_ext_ack* %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %91

74:                                               ; preds = %63
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %76 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %77 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %79 = call i32 @mlx5e_tc_add_nic_flow(%struct.mlx5e_priv* %75, %struct.mlx5e_tc_flow_parse_attr* %76, %struct.mlx5e_tc_flow* %77, %struct.netlink_ext_ack* %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %91

83:                                               ; preds = %74
  %84 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %85 = load i32, i32* @OFFLOADED, align 4
  %86 = call i32 @flow_flag_set(%struct.mlx5e_tc_flow* %84, i32 %85)
  %87 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %88 = call i32 @kvfree(%struct.mlx5e_tc_flow_parse_attr* %87)
  %89 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %90 = load %struct.mlx5e_tc_flow**, %struct.mlx5e_tc_flow*** %11, align 8
  store %struct.mlx5e_tc_flow* %89, %struct.mlx5e_tc_flow** %90, align 8
  store i32 0, i32* %6, align 4
  br label %99

91:                                               ; preds = %82, %73, %62
  %92 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %93 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %94 = call i32 @mlx5e_flow_put(%struct.mlx5e_priv* %92, %struct.mlx5e_tc_flow* %93)
  %95 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %96 = call i32 @kvfree(%struct.mlx5e_tc_flow_parse_attr* %95)
  br label %97

97:                                               ; preds = %91, %46
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %83, %31
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @tc_cls_can_offload_and_chain0(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @mlx5e_alloc_flow(%struct.mlx5e_priv*, i32, %struct.flow_cls_offload*, i64, %struct.mlx5e_tc_flow_parse_attr**, %struct.mlx5e_tc_flow**) #1

declare dso_local i32 @parse_cls_flower(i32, %struct.mlx5e_tc_flow*, i32*, %struct.flow_cls_offload*, %struct.net_device*) #1

declare dso_local i32 @parse_tc_nic_actions(%struct.mlx5e_priv*, i32*, %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlx5e_tc_add_nic_flow(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @flow_flag_set(%struct.mlx5e_tc_flow*, i32) #1

declare dso_local i32 @kvfree(%struct.mlx5e_tc_flow_parse_attr*) #1

declare dso_local i32 @mlx5e_flow_put(%struct.mlx5e_priv*, %struct.mlx5e_tc_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
