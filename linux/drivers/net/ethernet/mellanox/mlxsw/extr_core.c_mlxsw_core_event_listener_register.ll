; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_event_listener_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_event_listener_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_event_listener = type { i32 }
%struct.mlxsw_event_listener_item = type { i32, i8*, %struct.mlxsw_event_listener }
%struct.mlxsw_rx_listener = type { i32, i32, i32 }

@MLXSW_PORT_DONT_CARE = common dso_local global i32 0, align 4
@mlxsw_core_event_listener_func = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_core_event_listener_register(%struct.mlxsw_core* %0, %struct.mlxsw_event_listener* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca %struct.mlxsw_event_listener*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_event_listener_item*, align 8
  %10 = alloca %struct.mlxsw_rx_listener, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store %struct.mlxsw_event_listener* %1, %struct.mlxsw_event_listener** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = getelementptr inbounds %struct.mlxsw_rx_listener, %struct.mlxsw_rx_listener* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_event_listener*, %struct.mlxsw_event_listener** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_event_listener, %struct.mlxsw_event_listener* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.mlxsw_rx_listener, %struct.mlxsw_rx_listener* %10, i32 0, i32 1
  %16 = load i32, i32* @MLXSW_PORT_DONT_CARE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.mlxsw_rx_listener, %struct.mlxsw_rx_listener* %10, i32 0, i32 2
  %18 = load i32, i32* @mlxsw_core_event_listener_func, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %20 = load %struct.mlxsw_event_listener*, %struct.mlxsw_event_listener** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.mlxsw_event_listener_item* @__find_event_listener_item(%struct.mlxsw_core* %19, %struct.mlxsw_event_listener* %20, i8* %21)
  store %struct.mlxsw_event_listener_item* %22, %struct.mlxsw_event_listener_item** %9, align 8
  %23 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %9, align 8
  %24 = icmp ne %struct.mlxsw_event_listener_item* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EEXIST, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %61

28:                                               ; preds = %3
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mlxsw_event_listener_item* @kmalloc(i32 24, i32 %29)
  store %struct.mlxsw_event_listener_item* %30, %struct.mlxsw_event_listener_item** %9, align 8
  %31 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %9, align 8
  %32 = icmp ne %struct.mlxsw_event_listener_item* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %28
  %37 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %9, align 8
  %38 = getelementptr inbounds %struct.mlxsw_event_listener_item, %struct.mlxsw_event_listener_item* %37, i32 0, i32 2
  %39 = load %struct.mlxsw_event_listener*, %struct.mlxsw_event_listener** %6, align 8
  %40 = bitcast %struct.mlxsw_event_listener* %38 to i8*
  %41 = bitcast %struct.mlxsw_event_listener* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %9, align 8
  %44 = getelementptr inbounds %struct.mlxsw_event_listener_item, %struct.mlxsw_event_listener_item* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %46 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %9, align 8
  %47 = call i32 @mlxsw_core_rx_listener_register(%struct.mlxsw_core* %45, %struct.mlxsw_rx_listener* %10, %struct.mlxsw_event_listener_item* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %57

51:                                               ; preds = %36
  %52 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %9, align 8
  %53 = getelementptr inbounds %struct.mlxsw_event_listener_item, %struct.mlxsw_event_listener_item* %52, i32 0, i32 0
  %54 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %55 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %54, i32 0, i32 0
  %56 = call i32 @list_add_rcu(i32* %53, i32* %55)
  store i32 0, i32* %4, align 4
  br label %61

57:                                               ; preds = %50
  %58 = load %struct.mlxsw_event_listener_item*, %struct.mlxsw_event_listener_item** %9, align 8
  %59 = call i32 @kfree(%struct.mlxsw_event_listener_item* %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %51, %33, %25
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.mlxsw_event_listener_item* @__find_event_listener_item(%struct.mlxsw_core*, %struct.mlxsw_event_listener*, i8*) #1

declare dso_local %struct.mlxsw_event_listener_item* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_core_rx_listener_register(%struct.mlxsw_core*, %struct.mlxsw_rx_listener*, %struct.mlxsw_event_listener_item*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_event_listener_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
