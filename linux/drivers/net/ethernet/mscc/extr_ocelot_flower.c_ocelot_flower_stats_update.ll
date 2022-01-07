; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocelot_port_block = type { i32 }
%struct.ocelot_ace_rule = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*, %struct.ocelot_port_block*)* @ocelot_flower_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_flower_stats_update(%struct.flow_cls_offload* %0, %struct.ocelot_port_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.ocelot_port_block*, align 8
  %6 = alloca %struct.ocelot_ace_rule, align 4
  %7 = alloca i32, align 4
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %4, align 8
  store %struct.ocelot_port_block* %1, %struct.ocelot_port_block** %5, align 8
  %8 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %9 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %6, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %5, align 8
  %14 = getelementptr inbounds %struct.ocelot_port_block, %struct.ocelot_port_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %18 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = call i32 @ocelot_ace_rule_stats_update(%struct.ocelot_ace_rule* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %28 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @flow_stats_update(i32* %28, i32 0, i32 %31, i32 0)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ocelot_ace_rule_stats_update(%struct.ocelot_ace_rule*) #1

declare dso_local i32 @flow_stats_update(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
