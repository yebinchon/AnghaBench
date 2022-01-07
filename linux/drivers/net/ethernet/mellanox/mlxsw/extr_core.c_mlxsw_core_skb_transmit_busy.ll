; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_skb_transmit_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_skb_transmit_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.mlxsw_tx_info*)* }
%struct.mlxsw_tx_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_core_skb_transmit_busy(%struct.mlxsw_core* %0, %struct.mlxsw_tx_info* %1) #0 {
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca %struct.mlxsw_tx_info*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  store %struct.mlxsw_tx_info* %1, %struct.mlxsw_tx_info** %4, align 8
  %5 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, %struct.mlxsw_tx_info*)*, i32 (i32, %struct.mlxsw_tx_info*)** %8, align 8
  %10 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mlxsw_tx_info*, %struct.mlxsw_tx_info** %4, align 8
  %14 = call i32 %9(i32 %12, %struct.mlxsw_tx_info* %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
