; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_setup_tc_block_flower_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_flower.c_ocelot_setup_tc_block_flower_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { i32 }
%struct.flow_block_offload = type { i64, i32, i32 }
%struct.ocelot_port_block = type { i32 }
%struct.flow_block_cb = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ocelot_setup_tc_block_cb_flower = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocelot_tc_block_unbind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_setup_tc_block_flower_bind(%struct.ocelot_port* %0, %struct.flow_block_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocelot_port*, align 8
  %5 = alloca %struct.flow_block_offload*, align 8
  %6 = alloca %struct.ocelot_port_block*, align 8
  %7 = alloca %struct.flow_block_cb*, align 8
  %8 = alloca i32, align 4
  store %struct.ocelot_port* %0, %struct.ocelot_port** %4, align 8
  store %struct.flow_block_offload* %1, %struct.flow_block_offload** %5, align 8
  %9 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %10 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %19 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ocelot_setup_tc_block_cb_flower, align 4
  %22 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %23 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %20, i32 %21, %struct.ocelot_port* %22)
  store %struct.flow_block_cb* %23, %struct.flow_block_cb** %7, align 8
  %24 = load %struct.flow_block_cb*, %struct.flow_block_cb** %7, align 8
  %25 = icmp ne %struct.flow_block_cb* %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %17
  %27 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %28 = call %struct.ocelot_port_block* @ocelot_port_block_create(%struct.ocelot_port* %27)
  store %struct.ocelot_port_block* %28, %struct.ocelot_port_block** %6, align 8
  %29 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %6, align 8
  %30 = icmp ne %struct.ocelot_port_block* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %26
  %35 = load i32, i32* @ocelot_setup_tc_block_cb_flower, align 4
  %36 = load %struct.ocelot_port*, %struct.ocelot_port** %4, align 8
  %37 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %6, align 8
  %38 = load i32, i32* @ocelot_tc_block_unbind, align 4
  %39 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32 %35, %struct.ocelot_port* %36, %struct.ocelot_port_block* %37, i32 %38)
  store %struct.flow_block_cb* %39, %struct.flow_block_cb** %7, align 8
  %40 = load %struct.flow_block_cb*, %struct.flow_block_cb** %7, align 8
  %41 = call i64 @IS_ERR(%struct.flow_block_cb* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.flow_block_cb*, %struct.flow_block_cb** %7, align 8
  %45 = call i32 @PTR_ERR(%struct.flow_block_cb* %44)
  store i32 %45, i32* %8, align 4
  br label %62

46:                                               ; preds = %34
  %47 = load %struct.flow_block_cb*, %struct.flow_block_cb** %7, align 8
  %48 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %49 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %47, %struct.flow_block_offload* %48)
  %50 = load %struct.flow_block_cb*, %struct.flow_block_cb** %7, align 8
  %51 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %50, i32 0, i32 0
  %52 = load %struct.flow_block_offload*, %struct.flow_block_offload** %5, align 8
  %53 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @list_add_tail(i32* %51, i32 %54)
  br label %59

56:                                               ; preds = %17
  %57 = load %struct.flow_block_cb*, %struct.flow_block_cb** %7, align 8
  %58 = call %struct.ocelot_port_block* @flow_block_cb_priv(%struct.flow_block_cb* %57)
  store %struct.ocelot_port_block* %58, %struct.ocelot_port_block** %6, align 8
  br label %59

59:                                               ; preds = %56, %46
  %60 = load %struct.flow_block_cb*, %struct.flow_block_cb** %7, align 8
  %61 = call i32 @flow_block_cb_incref(%struct.flow_block_cb* %60)
  store i32 0, i32* %3, align 4
  br label %66

62:                                               ; preds = %43
  %63 = load %struct.ocelot_port_block*, %struct.ocelot_port_block** %6, align 8
  %64 = call i32 @ocelot_port_block_destroy(%struct.ocelot_port_block* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %59, %31, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32, %struct.ocelot_port*) #1

declare dso_local %struct.ocelot_port_block* @ocelot_port_block_create(%struct.ocelot_port*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32, %struct.ocelot_port*, %struct.ocelot_port_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local %struct.ocelot_port_block* @flow_block_cb_priv(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_incref(%struct.flow_block_cb*) #1

declare dso_local i32 @ocelot_port_block_destroy(%struct.ocelot_port_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
