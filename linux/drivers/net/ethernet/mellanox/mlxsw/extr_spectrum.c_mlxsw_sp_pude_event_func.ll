; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_pude_event_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_pude_event_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_info = type { i32 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_port** }
%struct.mlxsw_sp_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLXSW_PORT_OPER_STATUS_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_reg_info*, i8*, i8*)* @mlxsw_sp_pude_event_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_pude_event_func(%struct.mlxsw_reg_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_reg_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mlxsw_reg_info* %0, %struct.mlxsw_reg_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.mlxsw_sp*
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @mlxsw_reg_pude_local_port_get(i8* %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %17, i64 %18
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %19, align 8
  store %struct.mlxsw_sp_port* %20, %struct.mlxsw_sp_port** %8, align 8
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %22 = icmp ne %struct.mlxsw_sp_port* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %52

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @mlxsw_reg_pude_oper_status_get(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MLXSW_PORT_OPER_STATUS_UP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netdev_info(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_carrier_on(i32 %37)
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mlxsw_core_schedule_dw(i32* %41, i32 0)
  br label %52

43:                                               ; preds = %24
  %44 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netdev_info(i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netif_carrier_off(i32 %50)
  br label %52

52:                                               ; preds = %23, %43, %30
  ret void
}

declare dso_local i64 @mlxsw_reg_pude_local_port_get(i8*) #1

declare dso_local i32 @mlxsw_reg_pude_oper_status_get(i8*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @mlxsw_core_schedule_dw(i32*, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
