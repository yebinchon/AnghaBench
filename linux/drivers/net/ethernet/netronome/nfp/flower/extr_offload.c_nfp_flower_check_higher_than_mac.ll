; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_check_higher_than_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_check_higher_than_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }

@FLOW_DISSECTOR_KEY_IPV4_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IPV6_ADDRS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ICMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*)* @nfp_flower_check_higher_than_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_check_higher_than_mac(%struct.flow_cls_offload* %0) #0 {
  %2 = alloca %struct.flow_cls_offload*, align 8
  %3 = alloca %struct.flow_rule*, align 8
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %2, align 8
  %4 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %2, align 8
  %5 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %4)
  store %struct.flow_rule* %5, %struct.flow_rule** %3, align 8
  %6 = load %struct.flow_rule*, %struct.flow_rule** %3, align 8
  %7 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV4_ADDRS, align 4
  %8 = call i64 @flow_rule_match_key(%struct.flow_rule* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.flow_rule*, %struct.flow_rule** %3, align 8
  %12 = load i32, i32* @FLOW_DISSECTOR_KEY_IPV6_ADDRS, align 4
  %13 = call i64 @flow_rule_match_key(%struct.flow_rule* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load %struct.flow_rule*, %struct.flow_rule** %3, align 8
  %17 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %18 = call i64 @flow_rule_match_key(%struct.flow_rule* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.flow_rule*, %struct.flow_rule** %3, align 8
  %22 = load i32, i32* @FLOW_DISSECTOR_KEY_ICMP, align 4
  %23 = call i64 @flow_rule_match_key(%struct.flow_rule* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15, %10, %1
  %26 = phi i1 [ true, %15 ], [ true, %10 ], [ true, %1 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
