; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_getpfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_getpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to get PFC count for priority %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_pfc*)* @mlxsw_sp_dcbnl_ieee_getpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dcbnl_ieee_getpfc(%struct.net_device* %0, %struct.ieee_pfc* %1) #0 {
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
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mlxsw_sp_port_pfc_cnt_get(%struct.mlxsw_sp_port* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %32 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(%struct.ieee_pfc* %31, i32 %35, i32 4)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_pfc_cnt_get(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.ieee_pfc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
