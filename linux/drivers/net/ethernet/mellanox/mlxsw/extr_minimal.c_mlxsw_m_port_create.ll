; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_port_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_m = type { i32, %struct.mlxsw_m_port**, %struct.TYPE_2__*, i32 }
%struct.mlxsw_m_port = type { i64, i64, %struct.mlxsw_m*, %struct.net_device* }
%struct.net_device = type { i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Port %d: Failed to init core port\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_m_port_netdev_ops = common dso_local global i32 0, align 4
@mlxsw_m_port_ethtool_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Port %d: Unable to get port mac address\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Port %d: Failed to register netdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_m*, i64, i64)* @mlxsw_m_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_m_port_create(%struct.mlxsw_m* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_m*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlxsw_m_port*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_m* %0, %struct.mlxsw_m** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, 1
  %17 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mlxsw_core_port_init(i32 %13, i64 %14, i64 %16, i32 0, i32 0, i32 %19, i32 4)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %128

32:                                               ; preds = %3
  %33 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %33, %struct.net_device** %9, align 8
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %121

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %9, align 8
  %41 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %42 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SET_NETDEV_DEV(%struct.net_device* %40, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = call %struct.mlxsw_m_port* @netdev_priv(%struct.net_device* %47)
  store %struct.mlxsw_m_port* %48, %struct.mlxsw_m_port** %8, align 8
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %51 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %50, i32 0, i32 3
  store %struct.net_device* %49, %struct.net_device** %51, align 8
  %52 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %53 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %54 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %53, i32 0, i32 2
  store %struct.mlxsw_m* %52, %struct.mlxsw_m** %54, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %57 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %60 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  store i32* @mlxsw_m_port_netdev_ops, i32** %62, align 8
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  store i32* @mlxsw_m_port_ethtool_ops, i32** %64, align 8
  %65 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %66 = call i32 @mlxsw_m_port_dev_addr_get(%struct.mlxsw_m_port* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %39
  %70 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %71 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %76 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %120

79:                                               ; preds = %39
  %80 = load %struct.net_device*, %struct.net_device** %9, align 8
  %81 = call i32 @netif_carrier_off(%struct.net_device* %80)
  %82 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %83 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %84 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %83, i32 0, i32 1
  %85 = load %struct.mlxsw_m_port**, %struct.mlxsw_m_port*** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %85, i64 %86
  store %struct.mlxsw_m_port* %82, %struct.mlxsw_m_port** %87, align 8
  %88 = load %struct.net_device*, %struct.net_device** %9, align 8
  %89 = call i32 @register_netdev(%struct.net_device* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %79
  %93 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %94 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %99 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  br label %112

102:                                              ; preds = %79
  %103 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %104 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %107 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, align 8
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = call i32 @mlxsw_core_port_eth_set(i32 %105, i64 %108, %struct.mlxsw_m_port* %109, %struct.net_device* %110)
  store i32 0, i32* %4, align 4
  br label %128

112:                                              ; preds = %92
  %113 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %114 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %113, i32 0, i32 1
  %115 = load %struct.mlxsw_m_port**, %struct.mlxsw_m_port*** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %115, i64 %116
  store %struct.mlxsw_m_port* null, %struct.mlxsw_m_port** %117, align 8
  %118 = load %struct.net_device*, %struct.net_device** %9, align 8
  %119 = call i32 @free_netdev(%struct.net_device* %118)
  br label %120

120:                                              ; preds = %112, %69
  br label %121

121:                                              ; preds = %120, %36
  %122 = load %struct.mlxsw_m*, %struct.mlxsw_m** %5, align 8
  %123 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @mlxsw_core_port_fini(i32 %124, i64 %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %121, %102, %23
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @mlxsw_core_port_init(i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local %struct.mlxsw_m_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_m_port_dev_addr_get(%struct.mlxsw_m_port*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @mlxsw_core_port_eth_set(i32, i64, %struct.mlxsw_m_port*, %struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @mlxsw_core_port_fini(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
