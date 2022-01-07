; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_setup_tc_block_flower_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_setup_tc_block_flower_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { i32 }
%struct.flow_block_offload = type { i32 }
%struct.flow_block_cb = type { i32 }

@ocelot_setup_tc_block_cb_flower = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocelot_setup_tc_block_flower_unbind(%struct.ocelot_port* %0, %struct.flow_block_offload* %1) #0 {
  %3 = alloca %struct.ocelot_port*, align 8
  %4 = alloca %struct.flow_block_offload*, align 8
  %5 = alloca %struct.flow_block_cb*, align 8
  store %struct.ocelot_port* %0, %struct.ocelot_port** %3, align 8
  store %struct.flow_block_offload* %1, %struct.flow_block_offload** %4, align 8
  %6 = load %struct.flow_block_offload*, %struct.flow_block_offload** %4, align 8
  %7 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ocelot_setup_tc_block_cb_flower, align 4
  %10 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %11 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %8, i32 %9, %struct.ocelot_port* %10)
  store %struct.flow_block_cb* %11, %struct.flow_block_cb** %5, align 8
  %12 = load %struct.flow_block_cb*, %struct.flow_block_cb** %5, align 8
  %13 = icmp ne %struct.flow_block_cb* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.flow_block_cb*, %struct.flow_block_cb** %5, align 8
  %17 = call i32 @flow_block_cb_decref(%struct.flow_block_cb* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load %struct.flow_block_cb*, %struct.flow_block_cb** %5, align 8
  %21 = load %struct.flow_block_offload*, %struct.flow_block_offload** %4, align 8
  %22 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %20, %struct.flow_block_offload* %21)
  %23 = load %struct.flow_block_cb*, %struct.flow_block_cb** %5, align 8
  %24 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  br label %26

26:                                               ; preds = %14, %19, %15
  ret void
}

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32, %struct.ocelot_port*) #1

declare dso_local i32 @flow_block_cb_decref(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
