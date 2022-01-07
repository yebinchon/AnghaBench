; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_set_tx_dflt_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_set_tx_dflt_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fman_port_params = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fman_port_dts_params = type { i32 }

@QMI_DEQ_CFG_SUBPORTAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_port*, %struct.fman_port_params*, %struct.fman_port_dts_params*)* @set_tx_dflt_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tx_dflt_cfg(%struct.fman_port* %0, %struct.fman_port_params* %1, %struct.fman_port_dts_params* %2) #0 {
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca %struct.fman_port_params*, align 8
  %6 = alloca %struct.fman_port_dts_params*, align 8
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store %struct.fman_port_params* %1, %struct.fman_port_params** %5, align 8
  store %struct.fman_port_dts_params* %2, %struct.fman_port_dts_params** %6, align 8
  %7 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %8 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %12 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %15 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @get_dflt_fifo_deq_pipeline_depth(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %19 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  store i32 %17, i32* %21, align 4
  %22 = load %struct.fman_port_params*, %struct.fman_port_params** %5, align 8
  %23 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %28 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %26, i32* %30, align 8
  %31 = load %struct.fman_port_dts_params*, %struct.fman_port_dts_params** %6, align 8
  %32 = getelementptr inbounds %struct.fman_port_dts_params, %struct.fman_port_dts_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @QMI_DEQ_CFG_SUBPORTAL_MASK, align 4
  %35 = and i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %38 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i64 %36, i64* %40, align 8
  %41 = load %struct.fman_port_params*, %struct.fman_port_params** %5, align 8
  %42 = getelementptr inbounds %struct.fman_port_params, %struct.fman_port_params* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %47 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %51 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  ret void
}

declare dso_local i32 @get_dflt_fifo_deq_pipeline_depth(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
