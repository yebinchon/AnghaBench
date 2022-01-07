; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_event_listener_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_event_listener_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_event_listener = type { i32 }
%struct.mlxsw_event_listener_item = type { i32 }
%struct.mlxsw_rx_listener = type { i32, i32, i32 }

@MLXSW_PORT_DONT_CARE = common dso_local global i32 0, align 4
@mlxsw_core_event_listener_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_core_event_listener_unregister(%struct.mlxsw_core* %0, %struct.mlxsw_event_listener* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.mlxsw_event_listener*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_event_listener_item*, align 8
  %8 = alloca %struct.mlxsw_rx_listener, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.mlxsw_event_listener* %1, %struct.mlxsw_event_listener** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds %struct.mlxsw_rx_listener, %struct.mlxsw_rx_listener* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_event_listener*, %struct.mlxsw_event_listener** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_event_listener, %struct.mlxsw_event_listener* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.mlxsw_rx_listener, %struct.mlxsw_rx_listener* %8, i32 0, i32 1
  %14 = load i32, i32* @MLXSW_PORT_DONT_CARE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.mlxsw_rx_listener, %struct.mlxsw_rx_listener* %8, i32 0, i32 2
  %16 = load i32, i32* @mlxsw_core_event_listener_func, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %18 = load %struct.mlxsw_event_listener*, %struct.mlxsw_event_listener** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call %struct.mlxsw_event_listener_item* @__find_event_listener_item(%struct.mlxsw_core* %17, %struct.mlxsw_event_listener* %18, i8* %19)
  store %struct.mlxsw_event_listener_item* %20, %struct.mlxsw_event_listener_item** %7, align 8
  %21 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %7, align 8
  %22 = icmp ne %struct.mlxsw_event_listener_item* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %26 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %7, align 8
  %27 = call i32 @mlxsw_core_rx_listener_unregister(%struct.mlxsw_core* %25, %struct.mlxsw_rx_listener* %8, %struct.mlxsw_event_listener_item* %26)
  %28 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %7, align 8
  %29 = getelementptr inbounds %struct.mlxsw_event_listener_item, %struct.mlxsw_event_listener_item* %28, i32 0, i32 0
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %7, align 8
  %32 = call i32 @kfree(%struct.mlxsw_event_listener_item* %31)
  br label %33

33:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.mlxsw_event_listener_item* @__find_event_listener_item(%struct.mlxsw_core*, %struct.mlxsw_event_listener*, i8*) #1

declare dso_local i32 @mlxsw_core_rx_listener_unregister(%struct.mlxsw_core*, %struct.mlxsw_rx_listener*, %struct.mlxsw_event_listener_item*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_event_listener_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
