; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_rx_listener_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_rx_listener_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_rx_listener = type { i32 }
%struct.mlxsw_rx_listener_item = type { i32, i8*, %struct.mlxsw_rx_listener }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_core_rx_listener_register(%struct.mlxsw_core* %0, %struct.mlxsw_rx_listener* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca %struct.mlxsw_rx_listener*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_rx_listener_item*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store %struct.mlxsw_rx_listener* %1, %struct.mlxsw_rx_listener** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %10 = load %struct.mlxsw_rx_listener*, %struct.mlxsw_rx_listener** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.mlxsw_rx_listener_item* @__find_rx_listener_item(%struct.mlxsw_core* %9, %struct.mlxsw_rx_listener* %10, i8* %11)
  store %struct.mlxsw_rx_listener_item* %12, %struct.mlxsw_rx_listener_item** %8, align 8
  %13 = load %struct.mlxsw_rx_listener_item*, %struct.mlxsw_rx_listener_item** %8, align 8
  %14 = icmp ne %struct.mlxsw_rx_listener_item* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mlxsw_rx_listener_item* @kmalloc(i32 24, i32 %19)
  store %struct.mlxsw_rx_listener_item* %20, %struct.mlxsw_rx_listener_item** %8, align 8
  %21 = load %struct.mlxsw_rx_listener_item*, %struct.mlxsw_rx_listener_item** %8, align 8
  %22 = icmp ne %struct.mlxsw_rx_listener_item* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %18
  %27 = load %struct.mlxsw_rx_listener_item*, %struct.mlxsw_rx_listener_item** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_rx_listener_item, %struct.mlxsw_rx_listener_item* %27, i32 0, i32 2
  %29 = load %struct.mlxsw_rx_listener*, %struct.mlxsw_rx_listener** %6, align 8
  %30 = bitcast %struct.mlxsw_rx_listener* %28 to i8*
  %31 = bitcast %struct.mlxsw_rx_listener* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.mlxsw_rx_listener_item*, %struct.mlxsw_rx_listener_item** %8, align 8
  %34 = getelementptr inbounds %struct.mlxsw_rx_listener_item, %struct.mlxsw_rx_listener_item* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mlxsw_rx_listener_item*, %struct.mlxsw_rx_listener_item** %8, align 8
  %36 = getelementptr inbounds %struct.mlxsw_rx_listener_item, %struct.mlxsw_rx_listener_item* %35, i32 0, i32 0
  %37 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %38 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %37, i32 0, i32 0
  %39 = call i32 @list_add_rcu(i32* %36, i32* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %26, %23, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.mlxsw_rx_listener_item* @__find_rx_listener_item(%struct.mlxsw_core*, %struct.mlxsw_rx_listener*, i8*) #1

declare dso_local %struct.mlxsw_rx_listener_item* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
