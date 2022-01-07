; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_dma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_dma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i64, i64, i64, i64, i64 }

@DMAR_REQ_PRI = common dso_local global i32 0, align 4
@IN_ORDER_MODE = common dso_local global i32 0, align 4
@ENH_ORDER_MODE = common dso_local global i32 0, align 4
@OUT_ORDER_MODE = common dso_local global i32 0, align 4
@REGRDBLEN_SHFT = common dso_local global i32 0, align 4
@REGRDBLEN_BMSK = common dso_local global i32 0, align 4
@REGWRBLEN_SHFT = common dso_local global i32 0, align 4
@REGWRBLEN_BMSK = common dso_local global i32 0, align 4
@DMAR_DLY_CNT_SHFT = common dso_local global i32 0, align 4
@DMAR_DLY_CNT_BMSK = common dso_local global i32 0, align 4
@DMAW_DLY_CNT_SHFT = common dso_local global i32 0, align 4
@DMAW_DLY_CNT_BMSK = common dso_local global i32 0, align 4
@EMAC_DMA_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_mac_dma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_dma_config(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %4 = load i32, i32* @DMAR_REQ_PRI, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %20 [
    i32 129, label %8
    i32 130, label %12
    i32 128, label %16
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @IN_ORDER_MODE, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @ENH_ORDER_MODE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @OUT_ORDER_MODE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %16, %12, %8
  %22 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @REGRDBLEN_SHFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @REGRDBLEN_BMSK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @REGWRBLEN_SHFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @REGWRBLEN_BMSK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @DMAR_DLY_CNT_SHFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @DMAR_DLY_CNT_BMSK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @DMAW_DLY_CNT_SHFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @DMAW_DLY_CNT_BMSK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EMAC_DMA_CTRL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
