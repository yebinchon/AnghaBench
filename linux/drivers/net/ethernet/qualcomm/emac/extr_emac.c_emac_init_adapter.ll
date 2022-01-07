; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_init_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac.c_emac_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EMAC_RRD_SIZE = common dso_local global i32 0, align 4
@EMAC_TPD_SIZE = common dso_local global i32 0, align 4
@EMAC_RFD_SIZE = common dso_local global i32 0, align 4
@EMAC_DEF_TX_DESCS = common dso_local global i32 0, align 4
@EMAC_DEF_RX_DESCS = common dso_local global i32 0, align 4
@emac_dma_ord_out = common dso_local global i32 0, align 4
@emac_dma_req_4096 = common dso_local global i32 0, align 4
@emac_dma_req_128 = common dso_local global i32 0, align 4
@DMAR_DLY_CNT_DEF = common dso_local global i32 0, align 4
@DMAW_DLY_CNT_DEF = common dso_local global i32 0, align 4
@TXQ0_NUM_TPD_PREF_DEF = common dso_local global i32 0, align 4
@RXQ0_NUM_RFD_PREF_DEF = common dso_local global i32 0, align 4
@EMAC_DEF_RX_IRQ_MOD = common dso_local global i32 0, align 4
@IRQ_MODERATOR2_INIT_SHFT = common dso_local global i32 0, align 4
@EMAC_DEF_TX_IRQ_MOD = common dso_local global i32 0, align 4
@IRQ_MODERATOR_INIT_SHFT = common dso_local global i32 0, align 4
@EMAC_PREAMBLE_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_init_adapter(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %4 = load i32, i32* @EMAC_RRD_SIZE, align 4
  %5 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %5, i32 0, i32 15
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @EMAC_TPD_SIZE, align 4
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 14
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @EMAC_RFD_SIZE, align 4
  %11 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %11, i32 0, i32 13
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @EMAC_DEF_TX_DESCS, align 4
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @EMAC_DEF_RX_DESCS, align 4
  %17 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @emac_dma_ord_out, align 4
  %20 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @emac_dma_req_4096, align 4
  %23 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @emac_dma_req_128, align 4
  %26 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DMAR_DLY_CNT_DEF, align 4
  %29 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DMAW_DLY_CNT_DEF, align 4
  %32 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @TXQ0_NUM_TPD_PREF_DEF, align 4
  %35 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @RXQ0_NUM_RFD_PREF_DEF, align 4
  %38 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @EMAC_DEF_RX_IRQ_MOD, align 4
  %41 = ashr i32 %40, 1
  %42 = load i32, i32* @IRQ_MODERATOR2_INIT_SHFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @EMAC_DEF_TX_IRQ_MOD, align 4
  %45 = ashr i32 %44, 1
  %46 = load i32, i32* @IRQ_MODERATOR_INIT_SHFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %43, %47
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @EMAC_PREAMBLE_DEF, align 4
  %53 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
