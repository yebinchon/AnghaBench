; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlxsw_sp_acl_block = type { i64, i32 }
%struct.flow_rule = type { i32 }
%struct.mlxsw_sp_port = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.flow_match_meta = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FLOW_DISSECTOR_KEY_META = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unsupported ingress ifindex mask\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Can't find specified ingress port to match on\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't match on non-mlxsw ingress port\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Can't match on a port from different device\00", align 1
@MLXSW_AFK_ELEMENT_SRC_SYS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*, %struct.mlxsw_sp_acl_block*)* @mlxsw_sp_flower_parse_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_flower_parse_meta(%struct.mlxsw_sp_acl_rule_info* %0, %struct.flow_cls_offload* %1, %struct.mlxsw_sp_acl_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.mlxsw_sp_port*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.flow_match_meta, align 8
  store %struct.mlxsw_sp_acl_rule_info* %0, %struct.mlxsw_sp_acl_rule_info** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store %struct.mlxsw_sp_acl_block* %2, %struct.mlxsw_sp_acl_block** %7, align 8
  %12 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %13 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %12)
  store %struct.flow_rule* %13, %struct.flow_rule** %8, align 8
  %14 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %15 = load i32, i32* @FLOW_DISSECTOR_KEY_META, align 4
  %16 = call i32 @flow_rule_match_key(%struct.flow_rule* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

19:                                               ; preds = %3
  %20 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %21 = call i32 @flow_rule_match_meta(%struct.flow_rule* %20, %struct.flow_match_meta* %11)
  %22 = getelementptr inbounds %struct.flow_match_meta, %struct.flow_match_meta* %11, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %29 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NL_SET_ERR_MSG_MOD(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %91

35:                                               ; preds = %19
  %36 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.flow_match_meta, %struct.flow_match_meta* %11, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.net_device* @__dev_get_by_index(i32 %38, i32 %42)
  store %struct.net_device* %43, %struct.net_device** %10, align 8
  %44 = load %struct.net_device*, %struct.net_device** %10, align 8
  %45 = icmp ne %struct.net_device* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %35
  %47 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %48 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @NL_SET_ERR_MSG_MOD(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %91

54:                                               ; preds = %35
  %55 = load %struct.net_device*, %struct.net_device** %10, align 8
  %56 = call i32 @mlxsw_sp_port_dev_check(%struct.net_device* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %60 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @NL_SET_ERR_MSG_MOD(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %91

66:                                               ; preds = %54
  %67 = load %struct.net_device*, %struct.net_device** %10, align 8
  %68 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %67)
  store %struct.mlxsw_sp_port* %68, %struct.mlxsw_sp_port** %9, align 8
  %69 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %78 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @NL_SET_ERR_MSG_MOD(i32 %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %91

84:                                               ; preds = %66
  %85 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %5, align 8
  %86 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_SYS_PORT, align 4
  %87 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %9, align 8
  %88 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %85, i32 %86, i32 %89, i32 -1)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %84, %76, %58, %46, %27, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_meta(%struct.flow_rule*, %struct.flow_match_meta*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_dev_check(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
