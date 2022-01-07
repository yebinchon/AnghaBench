; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_ip4_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_ip4_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.stmmac_flow_entry = type { i32, i32 }
%struct.flow_rule = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@STMMAC_FLOW_ACTION_DROP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*, %struct.stmmac_flow_entry*)* @tc_add_ip4_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_add_ip4_flow(%struct.stmmac_priv* %0, %struct.flow_cls_offload* %1, %struct.stmmac_flow_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.stmmac_flow_entry*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.flow_dissector*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flow_match_ipv4_addrs, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store %struct.stmmac_flow_entry* %2, %struct.stmmac_flow_entry** %7, align 8
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %15 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %14)
  store %struct.flow_rule* %15, %struct.flow_rule** %8, align 8
  %16 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %17 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.flow_dissector*, %struct.flow_dissector** %18, align 8
  store %struct.flow_dissector* %19, %struct.flow_dissector** %9, align 8
  %20 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %21 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @STMMAC_FLOW_ACTION_DROP, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %26 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %27 = call i32 @dissector_uses_key(%struct.flow_dissector* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %95

32:                                               ; preds = %3
  %33 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %34 = call i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule* %33, %struct.flow_match_ipv4_addrs* %11)
  %35 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %11, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohl(i32 %38)
  %40 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %11, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohl(i32 %43)
  %45 = and i32 %39, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %32
  %49 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %50 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %51 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %54 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @stmmac_config_l3_filter(%struct.stmmac_priv* %49, i32 %52, i32 %55, i32 1, i32 0, i32 1, i32 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %4, align 4
  br label %95

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %32
  %65 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %11, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohl(i32 %68)
  %70 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %11, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohl(i32 %73)
  %75 = and i32 %69, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %64
  %79 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %80 = load %struct.stmmac_priv*, %struct.stmmac_priv** %5, align 8
  %81 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %84 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @stmmac_config_l3_filter(%struct.stmmac_priv* %79, i32 %82, i32 %85, i32 1, i32 0, i32 0, i32 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  br label %95

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %64
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %91, %61, %29
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @dissector_uses_key(%struct.flow_dissector*, i32) #1

declare dso_local i32 @flow_rule_match_ipv4_addrs(%struct.flow_rule*, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @stmmac_config_l3_filter(%struct.stmmac_priv*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
