; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_ports_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_ports_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.stmmac_flow_entry = type { i32, i32, i32, i32 }
%struct.flow_rule = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_ports = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@STMMAC_FLOW_ACTION_DROP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*, %struct.stmmac_flow_entry*)* @tc_add_ports_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_add_ports_flow(%struct.stmmac_priv* %0, %struct.flow_cls_offload* %1, %struct.stmmac_flow_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.stmmac_flow_entry*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.flow_dissector*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flow_match_ports, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store %struct.stmmac_flow_entry* %2, %struct.stmmac_flow_entry** %7, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %16 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %15)
  store %struct.flow_rule* %16, %struct.flow_rule** %8, align 8
  %17 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %18 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.flow_dissector*, %struct.flow_dissector** %19, align 8
  store %struct.flow_dissector* %20, %struct.flow_dissector** %9, align 8
  %21 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %22 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STMMAC_FLOW_ACTION_DROP, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %27 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %28 = call i32 @dissector_uses_key(%struct.flow_dissector* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %109

33:                                               ; preds = %3
  %34 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %35 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %39 [
    i32 129, label %37
    i32 128, label %38
  ]

37:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %42

38:                                               ; preds = %33
  store i32 1, i32* %13, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %109

42:                                               ; preds = %38, %37
  %43 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %44 = call i32 @flow_rule_match_ports(%struct.flow_rule* %43, %struct.flow_match_ports* %11)
  %45 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  %55 = and i32 %49, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %42
  %59 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %60 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %61 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %64 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @stmmac_config_l4_filter(%struct.stmmac_priv* %59, i32 %62, i32 %65, i32 1, i32 %66, i32 1, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %4, align 4
  br label %109

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %42
  %76 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ntohs(i32 %79)
  %81 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %11, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  %86 = and i32 %80, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %75
  %90 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %91 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %92 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %95 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @stmmac_config_l4_filter(%struct.stmmac_priv* %90, i32 %93, i32 %96, i32 1, i32 %97, i32 0, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %89
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %4, align 4
  br label %109

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %75
  %107 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %108 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %107, i32 0, i32 2
  store i32 1, i32* %108, align 4
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %103, %72, %39, %30
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @dissector_uses_key(%struct.flow_dissector*, i32) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @stmmac_config_l4_filter(%struct.stmmac_priv*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
