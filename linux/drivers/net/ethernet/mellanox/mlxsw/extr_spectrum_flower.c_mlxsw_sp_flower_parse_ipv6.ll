; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_match_ipv6_addrs = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@MLXSW_AFK_ELEMENT_SRC_IP_96_127 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SRC_IP_64_95 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SRC_IP_32_63 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SRC_IP_0_31 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_96_127 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_64_95 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_32_63 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_0_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*)* @mlxsw_sp_flower_parse_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_flower_parse_ipv6(%struct.mlxsw_sp_acl_rule_info* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.flow_match_ipv6_addrs, align 8
  store %struct.mlxsw_sp_acl_rule_info* %0, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %4, align 8
  %6 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %7 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @flow_rule_match_ipv6_addrs(i32 %8, %struct.flow_match_ipv6_addrs* %5)
  %10 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %11 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_96_127, align 4
  %12 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %10, i32 %11, i32* %17, i32* %23, i32 4)
  %25 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %26 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_64_95, align 4
  %27 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %25, i32 %26, i32* %32, i32* %38, i32 4)
  %40 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %41 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_32_63, align 4
  %42 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  %48 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %40, i32 %41, i32* %47, i32* %53, i32 4)
  %55 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %56 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_0_31, align 4
  %57 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 12
  %63 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 12
  %69 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %55, i32 %56, i32* %62, i32* %68, i32 4)
  %70 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %71 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_96_127, align 4
  %72 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %70, i32 %71, i32* %77, i32* %83, i32 4)
  %85 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %86 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_64_95, align 4
  %87 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %85, i32 %86, i32* %92, i32* %98, i32 4)
  %100 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %101 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_32_63, align 4
  %102 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  %108 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  %114 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %100, i32 %101, i32* %107, i32* %113, i32 4)
  %115 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %116 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_0_31, align 4
  %117 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 12
  %123 = getelementptr inbounds %struct.flow_match_ipv6_addrs, %struct.flow_match_ipv6_addrs* %5, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 12
  %129 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %115, i32 %116, i32* %122, i32* %128, i32 4)
  ret void
}

declare dso_local i32 @flow_rule_match_ipv6_addrs(i32, %struct.flow_match_ipv6_addrs*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
