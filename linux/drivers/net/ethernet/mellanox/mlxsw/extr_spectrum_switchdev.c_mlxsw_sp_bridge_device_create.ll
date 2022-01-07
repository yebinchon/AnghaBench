; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.mlxsw_sp_bridge = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Only one VLAN-aware bridge is supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_bridge_device* (%struct.mlxsw_sp_bridge*, %struct.net_device*)* @mlxsw_sp_bridge_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_create(%struct.mlxsw_sp_bridge* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_bridge* %0, %struct.mlxsw_sp_bridge** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @br_vlan_enabled(%struct.net_device* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.mlxsw_sp_bridge_device* @ERR_PTR(i32 %29)
  store %struct.mlxsw_sp_bridge_device* %30, %struct.mlxsw_sp_bridge_device** %3, align 8
  br label %84

31:                                               ; preds = %20, %2
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.mlxsw_sp_bridge_device* @kzalloc(i32 40, i32 %32)
  store %struct.mlxsw_sp_bridge_device* %33, %struct.mlxsw_sp_bridge_device** %7, align 8
  %34 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %35 = icmp ne %struct.mlxsw_sp_bridge_device* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.mlxsw_sp_bridge_device* @ERR_PTR(i32 %38)
  store %struct.mlxsw_sp_bridge_device* %39, %struct.mlxsw_sp_bridge_device** %3, align 8
  br label %84

40:                                               ; preds = %31
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %42, i32 0, i32 7
  store %struct.net_device* %41, %struct.net_device** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @br_multicast_enabled(%struct.net_device* %47)
  %49 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @br_multicast_router(%struct.net_device* %51)
  %53 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %55, i32 0, i32 4
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %40
  %61 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %74

68:                                               ; preds = %40
  %69 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %75, i32 0, i32 2
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %78, i32 0, i32 1
  %80 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %81 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %80, i32 0, i32 1
  %82 = call i32 @list_add(i32* %79, i32* %81)
  %83 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  store %struct.mlxsw_sp_bridge_device* %83, %struct.mlxsw_sp_bridge_device** %3, align 8
  br label %84

84:                                               ; preds = %74, %36, %25
  %85 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %3, align 8
  ret %struct.mlxsw_sp_bridge_device* %85
}

declare dso_local i32 @br_vlan_enabled(%struct.net_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @kzalloc(i32, i32) #1

declare dso_local i32 @br_multicast_enabled(%struct.net_device*) #1

declare dso_local i32 @br_multicast_router(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
