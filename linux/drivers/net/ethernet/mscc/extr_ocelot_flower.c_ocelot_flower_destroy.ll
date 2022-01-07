; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocelot_port_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ocelot_ace_rule = type { i32, %struct.TYPE_6__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*, %struct.ocelot_port_block*)* @ocelot_flower_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_flower_destroy(%struct.flow_cls_offload* %0, %struct.ocelot_port_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.ocelot_port_block*, align 8
  %6 = alloca %struct.ocelot_ace_rule, align 8
  %7 = alloca i32, align 4
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %4, align 8
  store %struct.ocelot_port_block* %1, %struct.ocelot_port_block** %5, align 8
  %8 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %9 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %5, align 8
  %14 = getelementptr inbounds %struct.ocelot_port_block, %struct.ocelot_port_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %6, i32 0, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %16, align 8
  %17 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %18 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = call i32 @ocelot_ace_rule_offload_del(%struct.ocelot_ace_rule* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %5, align 8
  %28 = getelementptr inbounds %struct.ocelot_port_block, %struct.ocelot_port_block* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ocelot_ace_rule_offload_del(%struct.ocelot_ace_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
