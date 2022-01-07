; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_ace_rule_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_ace_rule_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_ace_rule = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.ocelot_port_block = type { %struct.TYPE_2__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocelot_ace_rule* (%struct.flow_cls_offload*, %struct.ocelot_port_block*)* @ocelot_ace_rule_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocelot_ace_rule* @ocelot_ace_rule_create(%struct.flow_cls_offload* %0, %struct.ocelot_port_block* %1) #0 {
  %3 = alloca %struct.ocelot_ace_rule*, align 8
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.ocelot_port_block*, align 8
  %6 = alloca %struct.ocelot_ace_rule*, align 8
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %4, align 8
  store %struct.ocelot_port_block* %1, %struct.ocelot_port_block** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ocelot_ace_rule* @kzalloc(i32 16, i32 %7)
  store %struct.ocelot_ace_rule* %8, %struct.ocelot_ace_rule** %6, align 8
  %9 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  %10 = icmp ne %struct.ocelot_ace_rule* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ocelot_ace_rule* null, %struct.ocelot_ace_rule** %3, align 8
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %5, align 8
  %14 = getelementptr inbounds %struct.ocelot_port_block, %struct.ocelot_port_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  %17 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %16, i32 0, i32 1
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %5, align 8
  %19 = getelementptr inbounds %struct.ocelot_port_block, %struct.ocelot_port_block* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  %24 = getelementptr inbounds %struct.ocelot_ace_rule, %struct.ocelot_ace_rule* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  store %struct.ocelot_ace_rule* %25, %struct.ocelot_ace_rule** %3, align 8
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %3, align 8
  ret %struct.ocelot_ace_rule* %27
}

declare dso_local %struct.ocelot_ace_rule* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
