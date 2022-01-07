; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_rule_parse6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_rule_parse6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@MLXSW_AFK_ELEMENT_SRC_IP_96_127 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SRC_IP_64_95 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SRC_IP_32_63 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_SRC_IP_0_31 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_96_127 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_64_95 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_32_63 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_0_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_mr_route_key*)* @mlxsw_sp2_mr_tcam_rule_parse6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp2_mr_tcam_rule_parse6(%struct.mlxsw_sp_acl_rule_info* %0, %struct.mlxsw_sp_mr_route_key* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %4 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  store %struct.mlxsw_sp_acl_rule_info* %0, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  store %struct.mlxsw_sp_mr_route_key* %1, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %5 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %6 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_96_127, align 4
  %7 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %5, i32 %6, i32* %12, i32* %18, i32 4)
  %20 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %21 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_64_95, align 4
  %22 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %20, i32 %21, i32* %27, i32* %33, i32 4)
  %35 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %36 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_32_63, align 4
  %37 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  %49 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %35, i32 %36, i32* %42, i32* %48, i32 4)
  %50 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %51 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_0_31, align 4
  %52 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 12
  %58 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %50, i32 %51, i32* %57, i32* %63, i32 4)
  %65 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %66 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_96_127, align 4
  %67 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %65, i32 %66, i32* %72, i32* %78, i32 4)
  %80 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %81 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_64_95, align 4
  %82 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %83 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %89 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  %94 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %80, i32 %81, i32* %87, i32* %93, i32 4)
  %95 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %96 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_32_63, align 4
  %97 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  %103 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %95, i32 %96, i32* %102, i32* %108, i32 4)
  %110 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %111 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_0_31, align 4
  %112 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %113 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 12
  %118 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 12
  %124 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %110, i32 %111, i32* %117, i32* %123, i32 4)
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
