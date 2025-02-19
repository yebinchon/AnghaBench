; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_red_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_red_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp_qdisc* }
%struct.mlxsw_sp_qdisc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*)* @mlxsw_sp_qdisc_red_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_red_destroy(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %5 = alloca %struct.mlxsw_sp_qdisc*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %4, align 8
  %6 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %6, i32 0, i32 0
  %8 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %7, align 8
  store %struct.mlxsw_sp_qdisc* %8, %struct.mlxsw_sp_qdisc** %5, align 8
  %9 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %10 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %11 = icmp ne %struct.mlxsw_sp_qdisc* %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, %16
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %24 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlxsw_sp_tclass_congestion_disable(%struct.mlxsw_sp_port* %23, i32 %26)
  ret i32 %27
}

declare dso_local i32 @mlxsw_sp_tclass_congestion_disable(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
