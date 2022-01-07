; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_start_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.dynpcc_info }
%struct.dynpcc_info = type { i64, i8*, i8* }

@PCC_P1 = common dso_local global i8* null, align 8
@JME_PCCTX = common dso_local global i32 0, align 4
@PCC_TX_TO = common dso_local global i32 0, align 4
@PCCTXTO_SHIFT = common dso_local global i32 0, align 4
@PCCTXTO_MASK = common dso_local global i32 0, align 4
@PCC_TX_CNT = common dso_local global i32 0, align 4
@PCCTX_SHIFT = common dso_local global i32 0, align 4
@PCCTX_MASK = common dso_local global i32 0, align 4
@PCCTXQ0_EN = common dso_local global i32 0, align 4
@JME_IENS = common dso_local global i32 0, align 4
@INTR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_start_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_start_irq(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca %struct.dynpcc_info*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %4, i32 0, i32 0
  store %struct.dynpcc_info* %5, %struct.dynpcc_info** %3, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %7 = load i8*, i8** @PCC_P1, align 8
  %8 = call i32 @jme_set_rx_pcc(%struct.jme_adapter* %6, i8* %7)
  %9 = load i8*, i8** @PCC_P1, align 8
  %10 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %11 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @PCC_P1, align 8
  %13 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %14 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %16 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %18 = load i32, i32* @JME_PCCTX, align 4
  %19 = load i32, i32* @PCC_TX_TO, align 4
  %20 = load i32, i32* @PCCTXTO_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @PCCTXTO_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @PCC_TX_CNT, align 4
  %25 = load i32, i32* @PCCTX_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @PCCTX_MASK, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load i32, i32* @PCCTXQ0_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @jwrite32(%struct.jme_adapter* %17, i32 %18, i32 %31)
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %34 = load i32, i32* @JME_IENS, align 4
  %35 = load i32, i32* @INTR_ENABLE, align 4
  %36 = call i32 @jwrite32(%struct.jme_adapter* %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @jme_set_rx_pcc(%struct.jme_adapter*, i8*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
