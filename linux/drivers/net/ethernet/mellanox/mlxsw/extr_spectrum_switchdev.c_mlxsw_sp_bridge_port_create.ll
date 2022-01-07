; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_port = type { i32, i32, i32, i32, i32, %struct.mlxsw_sp_bridge_device*, %struct.net_device*, i32, i32, i64 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@BR_LEARNING = common dso_local global i32 0, align 4
@BR_FLOOD = common dso_local global i32 0, align 4
@BR_LEARNING_SYNC = common dso_local global i32 0, align 4
@BR_MCAST_FLOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_bridge_port* (%struct.mlxsw_sp_bridge_device*, %struct.net_device*)* @mlxsw_sp_bridge_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_create(%struct.mlxsw_sp_bridge_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlxsw_sp_bridge_port* @kzalloc(i32 56, i32 %8)
  store %struct.mlxsw_sp_bridge_port* %9, %struct.mlxsw_sp_bridge_port** %6, align 8
  %10 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %11 = icmp ne %struct.mlxsw_sp_bridge_port* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.mlxsw_sp_bridge_port* null, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %67

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.mlxsw_sp_port* @mlxsw_sp_port_dev_lower_find(%struct.net_device* %14)
  store %struct.mlxsw_sp_port* %15, %struct.mlxsw_sp_port** %7, align 8
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %19, i32 0, i32 9
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  br label %37

31:                                               ; preds = %13
  %32 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %39, i32 0, i32 6
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %42 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %42, i32 0, i32 5
  store %struct.mlxsw_sp_bridge_device* %41, %struct.mlxsw_sp_bridge_device** %43, align 8
  %44 = load i32, i32* @BR_STATE_DISABLED, align 4
  %45 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @BR_LEARNING, align 4
  %48 = load i32, i32* @BR_FLOOD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @BR_LEARNING_SYNC, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @BR_MCAST_FLOOD, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %56, i32 0, i32 3
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %59, i32 0, i32 2
  %61 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %61, i32 0, i32 0
  %63 = call i32 @list_add(i32* %60, i32* %62)
  %64 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  %66 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %6, align 8
  store %struct.mlxsw_sp_bridge_port* %66, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %67

67:                                               ; preds = %37, %12
  %68 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %3, align 8
  ret %struct.mlxsw_sp_bridge_port* %68
}

declare dso_local %struct.mlxsw_sp_bridge_port* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_port* @mlxsw_sp_port_dev_lower_find(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
