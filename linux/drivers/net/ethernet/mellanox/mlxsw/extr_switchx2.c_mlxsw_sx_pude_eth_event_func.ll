; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_pude_eth_event_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_pude_eth_event_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx_port = type { i32 }

@MLXSW_PORT_OPER_STATUS_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sx_port*, i32)* @mlxsw_sx_pude_eth_event_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sx_pude_eth_event_func(%struct.mlxsw_sx_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sx_port*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sx_port* %0, %struct.mlxsw_sx_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MLXSW_PORT_OPER_STATUS_UP, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netdev_info(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_carrier_on(i32 %15)
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netdev_info(i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_carrier_off(i32 %24)
  br label %26

26:                                               ; preds = %17, %8
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
