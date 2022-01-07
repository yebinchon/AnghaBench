; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_basic_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_add_basic_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.stmmac_flow_entry = type { i32 }
%struct.flow_rule = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flow_dissector* }
%struct.flow_dissector = type { i32 }
%struct.flow_match_basic = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, %struct.flow_cls_offload*, %struct.stmmac_flow_entry*)* @tc_add_basic_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_add_basic_flow(%struct.stmmac_priv* %0, %struct.flow_cls_offload* %1, %struct.stmmac_flow_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmmac_priv*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.stmmac_flow_entry*, align 8
  %8 = alloca %struct.flow_rule*, align 8
  %9 = alloca %struct.flow_dissector*, align 8
  %10 = alloca %struct.flow_match_basic, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store %struct.stmmac_flow_entry* %2, %struct.stmmac_flow_entry** %7, align 8
  %11 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %12 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %11)
  store %struct.flow_rule* %12, %struct.flow_rule** %8, align 8
  %13 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %14 = getelementptr inbounds %struct.flow_rule, %struct.flow_rule* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.flow_dissector*, %struct.flow_dissector** %15, align 8
  store %struct.flow_dissector* %16, %struct.flow_dissector** %9, align 8
  %17 = load %struct.flow_dissector*, %struct.flow_dissector** %9, align 8
  %18 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %19 = call i32 @dissector_uses_key(%struct.flow_dissector* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.flow_rule*, %struct.flow_rule** %8, align 8
  %26 = call i32 @flow_rule_match_basic(%struct.flow_rule* %25, %struct.flow_match_basic* %10)
  %27 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %10, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.stmmac_flow_entry*, %struct.stmmac_flow_entry** %7, align 8
  %32 = getelementptr inbounds %struct.stmmac_flow_entry, %struct.stmmac_flow_entry* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @dissector_uses_key(%struct.flow_dissector*, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
