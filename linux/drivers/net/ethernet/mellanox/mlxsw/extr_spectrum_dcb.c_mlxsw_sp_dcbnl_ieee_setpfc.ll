; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_setpfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_setpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i32, i64 }
%struct.mlxsw_sp_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee_pfc*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"PAUSE frames already enabled on port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to configure port's headroom for PFC\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to configure PFC\0A\00", align 1
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_pfc*)* @mlxsw_sp_dcbnl_ieee_setpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dcbnl_ieee_setpfc(%struct.net_device* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_pfc*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %9)
  store %struct.mlxsw_sp_port* %10, %struct.mlxsw_sp_port** %6, align 8
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %12 = call i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %17 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %15, %2
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %38 = call i32 @__mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %26, i32 %29, i32 %35, i32 %36, %struct.ieee_pfc* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %85

45:                                               ; preds = %25
  %46 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %47 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %48 = call i32 @mlxsw_sp_port_pfc_set(%struct.mlxsw_sp_port* %46, %struct.ieee_pfc* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netdev_err(%struct.net_device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %67

54:                                               ; preds = %45
  %55 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.ieee_pfc*, %struct.ieee_pfc** %57, align 8
  %59 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %60 = call i32 @memcpy(%struct.ieee_pfc* %58, %struct.ieee_pfc* %59, i32 16)
  %61 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.ieee_pfc*, %struct.ieee_pfc** %64, align 8
  %66 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 8
  store i32 0, i32* %3, align 4
  br label %85

67:                                               ; preds = %51
  %68 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.ieee_pfc*, %struct.ieee_pfc** %81, align 8
  %83 = call i32 @__mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %68, i32 %71, i32 %77, i32 %78, %struct.ieee_pfc* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %67, %54, %41, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @__mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port*, i32, i32, i32, %struct.ieee_pfc*) #1

declare dso_local i32 @mlxsw_sp_port_pfc_set(%struct.mlxsw_sp_port*, %struct.ieee_pfc*) #1

declare dso_local i32 @memcpy(%struct.ieee_pfc*, %struct.ieee_pfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
