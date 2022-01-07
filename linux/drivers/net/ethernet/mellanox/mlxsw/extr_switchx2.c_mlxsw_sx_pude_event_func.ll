; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_pude_event_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_pude_event_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_info = type { i32 }
%struct.mlxsw_sx = type { i32, %struct.TYPE_2__*, %struct.mlxsw_sx_port** }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sx_port = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Port %d: Link event received for non-existent port\0A\00", align 1
@DEVLINK_PORT_TYPE_ETH = common dso_local global i32 0, align 4
@DEVLINK_PORT_TYPE_IB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_reg_info*, i8*, i8*)* @mlxsw_sx_pude_event_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sx_pude_event_func(%struct.mlxsw_reg_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_reg_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sx*, align 8
  %8 = alloca %struct.mlxsw_sx_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mlxsw_reg_info* %0, %struct.mlxsw_reg_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mlxsw_sx*
  store %struct.mlxsw_sx* %13, %struct.mlxsw_sx** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @mlxsw_reg_pude_local_port_get(i8* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %16, i32 0, i32 2
  %18 = load %struct.mlxsw_sx_port**, %struct.mlxsw_sx_port*** %17, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %18, i64 %19
  %21 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %20, align 8
  store %struct.mlxsw_sx_port* %21, %struct.mlxsw_sx_port** %8, align 8
  %22 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %8, align 8
  %23 = icmp ne %struct.mlxsw_sx_port* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %56

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @mlxsw_reg_pude_oper_status_get(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %7, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @mlxsw_core_port_type_get(i32 %37, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @DEVLINK_PORT_TYPE_ETH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mlxsw_sx_pude_eth_event_func(%struct.mlxsw_sx_port* %44, i32 %45)
  br label %56

47:                                               ; preds = %32
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @DEVLINK_PORT_TYPE_IB, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @mlxsw_sx_pude_ib_event_func(%struct.mlxsw_sx_port* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %24, %55, %43
  ret void
}

declare dso_local i64 @mlxsw_reg_pude_local_port_get(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @mlxsw_reg_pude_oper_status_get(i8*) #1

declare dso_local i32 @mlxsw_core_port_type_get(i32, i64) #1

declare dso_local i32 @mlxsw_sx_pude_eth_event_func(%struct.mlxsw_sx_port*, i32) #1

declare dso_local i32 @mlxsw_sx_pude_ib_event_func(%struct.mlxsw_sx_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
