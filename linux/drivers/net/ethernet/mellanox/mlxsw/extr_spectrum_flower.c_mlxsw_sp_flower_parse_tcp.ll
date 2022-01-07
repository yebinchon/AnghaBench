; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_tcp = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@FLOW_DISSECTOR_KEY_TCP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"TCP keys supported only for TCP\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TCP keys supported only for TCP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"TCP flags match not supported on reserved bits\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"TCP flags match not supported on reserved bits\0A\00", align 1
@MLXSW_AFK_ELEMENT_TCP_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*, i64)* @mlxsw_sp_flower_parse_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_flower_parse_tcp(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule_info* %1, %struct.flow_cls_offload* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %8 = alloca %struct.flow_cls_offload*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.flow_rule*, align 8
  %11 = alloca %struct.flow_match_tcp, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_acl_rule_info* %1, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %13 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %12)
  store %struct.flow_rule* %13, %struct.flow_rule** %10, align 8
  %14 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %15 = load i32, i32* @FLOW_DISSECTOR_KEY_TCP, align 4
  %16 = call i32 @flow_rule_match_key(%struct.flow_rule* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @IPPROTO_TCP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %25 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NL_SET_ERR_MSG_MOD(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %75

37:                                               ; preds = %19
  %38 = load %struct.flow_rule*, %struct.flow_rule** %10, align 8
  %39 = call i32 @flow_rule_match_tcp(%struct.flow_rule* %38, %struct.flow_match_tcp* %11)
  %40 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %11, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htons(i32 3584)
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %8, align 8
  %49 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NL_SET_ERR_MSG_MOD(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %75

61:                                               ; preds = %37
  %62 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %7, align 8
  %63 = load i32, i32* @MLXSW_AFK_ELEMENT_TCP_FLAGS, align 4
  %64 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %11, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %11, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohs(i32 %72)
  %74 = call i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info* %62, i32 %63, i32 %68, i32 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %61, %47, %23, %18
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @flow_rule_match_tcp(%struct.flow_rule*, %struct.flow_match_tcp*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_u32(%struct.mlxsw_sp_acl_rule_info*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
