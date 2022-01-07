; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_enable_tx_fifo_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_main.c_enable_tx_fifo_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@A_XGM_TXFIFO_CFG = common dso_local global i64 0, align 8
@F_ENDROPPKT = common dso_local global i32 0, align 4
@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8
@F_TXEN = common dso_local global i32 0, align 4
@F_RXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.port_info*)* @enable_tx_fifo_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_tx_fifo_drain(%struct.adapter* %0, %struct.port_info* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.port_info* %1, %struct.port_info** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %7 = load %struct.port_info*, %struct.port_info** %4, align 8
  %8 = getelementptr inbounds %struct.port_info, %struct.port_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %6, %10
  %12 = load i32, i32* @F_ENDROPPKT, align 4
  %13 = call i32 @t3_set_reg_field(%struct.adapter* %5, i64 %11, i32 0, i32 %12)
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %16 = load %struct.port_info*, %struct.port_info** %4, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %15, %19
  %21 = call i32 @t3_write_reg(%struct.adapter* %14, i64 %20, i32 0)
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %24 = load %struct.port_info*, %struct.port_info** %4, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %23, %27
  %29 = load i32, i32* @F_TXEN, align 4
  %30 = call i32 @t3_write_reg(%struct.adapter* %22, i64 %28, i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %33 = load %struct.port_info*, %struct.port_info** %4, align 8
  %34 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  %38 = load i32, i32* @F_RXEN, align 4
  %39 = call i32 @t3_write_reg(%struct.adapter* %31, i64 %37, i32 %38)
  ret void
}

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
