; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_disable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, %struct.xlgmac_channel*, i64 }
%struct.xlgmac_channel = type { i32 }

@MAC_TCR = common dso_local global i64 0, align 8
@MAC_TCR_TE_POS = common dso_local global i32 0, align 4
@MAC_TCR_TE_LEN = common dso_local global i32 0, align 4
@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@MTL_Q_TQOMR_TXQEN_POS = common dso_local global i32 0, align 4
@MTL_Q_TQOMR_TXQEN_LEN = common dso_local global i32 0, align 4
@DMA_CH_TCR = common dso_local global i32 0, align 4
@DMA_CH_TCR_ST_POS = common dso_local global i32 0, align 4
@DMA_CH_TCR_ST_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_disable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_disable_tx(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 2
  %8 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %7, align 8
  store %struct.xlgmac_channel* %8, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %30

21:                                               ; preds = %15
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %23 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %24 = call i32 @xlgmac_prepare_tx_stop(%struct.xlgmac_pdata* %22, %struct.xlgmac_channel* %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %29 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %28, i32 1
  store %struct.xlgmac_channel* %29, %struct.xlgmac_channel** %3, align 8
  br label %9

30:                                               ; preds = %20, %9
  %31 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %32 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAC_TCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MAC_TCR_TE_POS, align 4
  %39 = load i32, i32* @MAC_TCR_TE_LEN, align 4
  %40 = call i32 @XLGMAC_SET_REG_BITS(i32 %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %43 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MAC_TCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %70, %30
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %51 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MTL_Q_TQOMR, align 4
  %58 = call i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %55, i32 %56, i32 %57)
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MTL_Q_TQOMR_TXQEN_POS, align 4
  %62 = load i32, i32* @MTL_Q_TQOMR_TXQEN_LEN, align 4
  %63 = call i32 @XLGMAC_SET_REG_BITS(i32 %60, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @MTL_Q_TQOMR, align 4
  %68 = call i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %65, i32 %66, i32 %67)
  %69 = call i32 @writel(i32 %64, i64 %68)
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %48

73:                                               ; preds = %48
  %74 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %75 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %74, i32 0, i32 2
  %76 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %75, align 8
  store %struct.xlgmac_channel* %76, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %103, %73
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %80 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %77
  %84 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %85 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %108

89:                                               ; preds = %83
  %90 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %91 = load i32, i32* @DMA_CH_TCR, align 4
  %92 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %90, i32 %91)
  %93 = call i32 @readl(i64 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @DMA_CH_TCR_ST_POS, align 4
  %96 = load i32, i32* @DMA_CH_TCR_ST_LEN, align 4
  %97 = call i32 @XLGMAC_SET_REG_BITS(i32 %94, i32 %95, i32 %96, i32 0)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %100 = load i32, i32* @DMA_CH_TCR, align 4
  %101 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %99, i32 %100)
  %102 = call i32 @writel(i32 %98, i64 %101)
  br label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  %106 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %107 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %106, i32 1
  store %struct.xlgmac_channel* %107, %struct.xlgmac_channel** %3, align 8
  br label %77

108:                                              ; preds = %88, %77
  ret void
}

declare dso_local i32 @xlgmac_prepare_tx_stop(%struct.xlgmac_pdata*, %struct.xlgmac_channel*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @XLGMAC_MTL_REG(%struct.xlgmac_pdata*, i32, i32) #1

declare dso_local i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
