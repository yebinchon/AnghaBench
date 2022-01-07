; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_enable_tx_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_enable_tx_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@JME_TXCS = common dso_local global i32 0, align 4
@TXCS_DEFAULT = common dso_local global i32 0, align 4
@TXCS_SELECT_QUEUE0 = common dso_local global i32 0, align 4
@JME_TXDBA_LO = common dso_local global i32 0, align 4
@JME_TXDBA_HI = common dso_local global i32 0, align 4
@JME_TXNDA = common dso_local global i32 0, align 4
@JME_TXQDC = common dso_local global i32 0, align 4
@TXCS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_enable_tx_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_enable_tx_engine(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %3 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %4 = load i32, i32* @JME_TXCS, align 4
  %5 = load i32, i32* @TXCS_DEFAULT, align 4
  %6 = load i32, i32* @TXCS_SELECT_QUEUE0, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @jwrite32(%struct.jme_adapter* %3, i32 %4, i32 %7)
  %9 = call i32 (...) @wmb()
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %11 = load i32, i32* @JME_TXDBA_LO, align 4
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = trunc i64 %20 to i32
  %22 = call i32 @jwrite32(%struct.jme_adapter* %10, i32 %11, i32 %21)
  %23 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %24 = load i32, i32* @JME_TXDBA_HI, align 4
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = ashr i32 %31, 32
  %33 = call i32 @jwrite32(%struct.jme_adapter* %23, i32 %24, i32 %32)
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %35 = load i32, i32* @JME_TXNDA, align 4
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 4294967295
  %45 = trunc i64 %44 to i32
  %46 = call i32 @jwrite32(%struct.jme_adapter* %34, i32 %35, i32 %45)
  %47 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %48 = load i32, i32* @JME_TXQDC, align 4
  %49 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @jwrite32(%struct.jme_adapter* %47, i32 %48, i32 %51)
  %53 = call i32 (...) @wmb()
  %54 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %55 = load i32, i32* @JME_TXCS, align 4
  %56 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TXCS_SELECT_QUEUE0, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @TXCS_ENABLE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @jwrite32f(%struct.jme_adapter* %54, i32 %55, i32 %62)
  %64 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %65 = call i32 @jme_mac_txclk_on(%struct.jme_adapter* %64)
  ret void
}

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @jwrite32f(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @jme_mac_txclk_on(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
