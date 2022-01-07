; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_flower_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { i32 }
%struct.ocelot_port_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocelot_ace_rule = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*, %struct.ocelot_port_block*)* @ocelot_flower_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_flower_replace(%struct.flow_cls_offload* %0, %struct.ocelot_port_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.ocelot_port_block*, align 8
  %6 = alloca %struct.ocelot_ace_rule*, align 8
  %7 = alloca i32, align 4
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %4, align 8
  store %struct.ocelot_port_block* %1, %struct.ocelot_port_block** %5, align 8
  %8 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %9 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %5, align 8
  %10 = call %struct.ocelot_ace_rule* @ocelot_ace_rule_create(%struct.flow_cls_offload* %8, %struct.ocelot_port_block* %9)
  store %struct.ocelot_ace_rule* %10, %struct.ocelot_ace_rule** %6, align 8
  %11 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  %12 = icmp ne %struct.ocelot_ace_rule* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %18 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  %19 = call i32 @ocelot_flower_parse(%struct.flow_cls_offload* %17, %struct.ocelot_ace_rule* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  %24 = call i32 @kfree(%struct.ocelot_ace_rule* %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %16
  %27 = load %struct.ocelot_ace_rule*, %struct.ocelot_ace_rule** %6, align 8
  %28 = call i32 @ocelot_ace_rule_offload_add(%struct.ocelot_ace_rule* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %5, align 8
  %35 = getelementptr inbounds %struct.ocelot_port_block, %struct.ocelot_port_block* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %31, %22, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.ocelot_ace_rule* @ocelot_ace_rule_create(%struct.flow_cls_offload*, %struct.ocelot_port_block*) #1

declare dso_local i32 @ocelot_flower_parse(%struct.flow_cls_offload*, %struct.ocelot_ace_rule*) #1

declare dso_local i32 @kfree(%struct.ocelot_ace_rule*) #1

declare dso_local i32 @ocelot_ace_rule_offload_add(%struct.ocelot_ace_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
