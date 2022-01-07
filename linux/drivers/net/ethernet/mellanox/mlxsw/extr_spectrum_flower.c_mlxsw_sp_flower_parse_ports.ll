; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_ports = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Only UDP and TCP keys are supported\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Only UDP and TCP keys are supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_L4_PORT = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SRC_L4_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*, i64)* @mlxsw_sp_flower_parse_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_flower_parse_ports(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule_info* %1, %struct.flow_cls_offload* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.flow_rule*, align 8
  %11 = alloca %struct.flow_match_ports, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_rule_info* %1, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %13 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %12)
  store %struct.flow_rule* %13, %struct.flow_rule** %10, align 8
  %14 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %15 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %16 = call i32 @flow_rule_match_key(%struct.flow_rule* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @IPPROTO_TCP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @IPPROTO_UDP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %29 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NL_SET_ERR_MSG_MOD(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %70

41:                                               ; preds = %23, %19
  %42 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %43 = call i32 @flow_rule_match_ports(%struct.flow_rule* %42, %struct.flow_match_ports* %11)
  %44 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %45 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_L4_PORT, align 4
  %46 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohs(i32 %54)
  %56 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %44, i32 %45, i32 %50, i32 %55)
  %57 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %58 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_L4_PORT, align 4
  %59 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %57, i32 %58, i32 %63, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %41, %27, %18
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
