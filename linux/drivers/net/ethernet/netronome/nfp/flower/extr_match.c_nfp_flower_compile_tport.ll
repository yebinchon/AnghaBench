; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_tport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_tport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_tp_ports = type { i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_ports = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports*, %struct.flow_cls_offload*)* @nfp_flower_compile_tport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_compile_tport(%struct.nfp_flower_tp_ports* %0, %struct.nfp_flower_tp_ports* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.nfp_flower_tp_ports*, align 8
  %5 = alloca %struct.nfp_flower_tp_ports*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca %struct.flow_match_ports, align 8
  store %struct.nfp_flower_tp_ports* %0, %struct.nfp_flower_tp_ports** %4, align 8
  store %struct.nfp_flower_tp_ports* %1, %struct.nfp_flower_tp_ports** %5, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %9 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %10 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %9)
  store %struct.flow_rule* %10, %struct.flow_rule** %7, align 8
  %11 = load %struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports** %4, align 8
  %12 = call i32 @memset(%struct.nfp_flower_tp_ports* %11, i32 0, i32 8)
  %13 = load %struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports** %5, align 8
  %14 = call i32 @memset(%struct.nfp_flower_tp_ports* %13, i32 0, i32 8)
  %15 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %16 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %17 = call i64 @flow_rule_match_key(%struct.flow_rule* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %21 = call i32 @flow_rule_match_ports(%struct.flow_rule* %20, %struct.flow_match_ports* %8)
  %22 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_tp_ports, %struct.nfp_flower_tp_ports* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports** %4, align 8
  %33 = getelementptr inbounds %struct.nfp_flower_tp_ports, %struct.nfp_flower_tp_ports* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports** %5, align 8
  %39 = getelementptr inbounds %struct.nfp_flower_tp_ports, %struct.nfp_flower_tp_ports* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %8, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfp_flower_tp_ports*, %struct.nfp_flower_tp_ports** %5, align 8
  %45 = getelementptr inbounds %struct.nfp_flower_tp_ports, %struct.nfp_flower_tp_ports* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @memset(%struct.nfp_flower_tp_ports*, i32, i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
