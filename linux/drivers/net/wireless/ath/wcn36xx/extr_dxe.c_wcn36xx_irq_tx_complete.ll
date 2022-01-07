; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_irq_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_irq_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32 }

@WCN36XX_DXE_INT_SRC_RAW_REG = common dso_local global i32 0, align 4
@WCN36XX_INT_MASK_CHAN_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_STATUS_REG_ADDR_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_0_INT_CLR = common dso_local global i32 0, align 4
@WCN36XX_CH_STAT_INT_ERR_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_0_INT_ERR_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"DXE IRQ reported error: 0x%x in high TX channel\0A\00", align 1
@WCN36XX_CH_STAT_INT_DONE_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_0_INT_DONE_CLR = common dso_local global i32 0, align 4
@WCN36XX_CH_STAT_INT_ED_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_0_INT_ED_CLR = common dso_local global i32 0, align 4
@WCN36XX_DBG_DXE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"dxe tx ready high, reason %08x\0A\00", align 1
@WCN36XX_INT_MASK_CHAN_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_STATUS_REG_ADDR_TX_L = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"DXE IRQ reported error: 0x%x in low TX channel\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"dxe tx ready low, reason %08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wcn36xx_irq_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_irq_tx_complete(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wcn36xx*
  store %struct.wcn36xx* %9, %struct.wcn36xx** %5, align 8
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %11 = load i32, i32* @WCN36XX_DXE_INT_SRC_RAW_REG, align 4
  %12 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %10, i32 %11, i32* %6)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_H, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %2
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %19 = load i32, i32* @WCN36XX_DXE_CH_STATUS_REG_ADDR_TX_H, align 4
  %20 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %18, i32 %19, i32* %7)
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %22 = load i32, i32* @WCN36XX_DXE_0_INT_CLR, align 4
  %23 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_H, align 4
  %24 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @WCN36XX_CH_STAT_INT_ERR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %31 = load i32, i32* @WCN36XX_DXE_0_INT_ERR_CLR, align 4
  %32 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_H, align 4
  %33 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29, %17
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @WCN36XX_CH_STAT_INT_DONE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %43 = load i32, i32* @WCN36XX_DXE_0_INT_DONE_CLR, align 4
  %44 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_H, align 4
  %45 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @WCN36XX_CH_STAT_INT_ED_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %53 = load i32, i32* @WCN36XX_DXE_0_INT_ED_CLR, align 4
  %54 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_H, align 4
  %55 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @WCN36XX_DBG_DXE, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @wcn36xx_dbg(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @WCN36XX_CH_STAT_INT_DONE_MASK, align 4
  %62 = load i32, i32* @WCN36XX_CH_STAT_INT_ED_MASK, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %68 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %69 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %68, i32 0, i32 1
  %70 = call i32 @reap_tx_dxes(%struct.wcn36xx* %67, i32* %69)
  br label %71

71:                                               ; preds = %66, %56
  br label %72

72:                                               ; preds = %71, %2
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_L, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %132

77:                                               ; preds = %72
  %78 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %79 = load i32, i32* @WCN36XX_DXE_CH_STATUS_REG_ADDR_TX_L, align 4
  %80 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %78, i32 %79, i32* %7)
  %81 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %82 = load i32, i32* @WCN36XX_DXE_0_INT_CLR, align 4
  %83 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_L, align 4
  %84 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @WCN36XX_CH_STAT_INT_ERR_MASK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %91 = load i32, i32* @WCN36XX_DXE_0_INT_ERR_CLR, align 4
  %92 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_L, align 4
  %93 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %89, %77
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @WCN36XX_CH_STAT_INT_DONE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %103 = load i32, i32* @WCN36XX_DXE_0_INT_DONE_CLR, align 4
  %104 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_L, align 4
  %105 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @WCN36XX_CH_STAT_INT_ED_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %113 = load i32, i32* @WCN36XX_DXE_0_INT_ED_CLR, align 4
  %114 = load i32, i32* @WCN36XX_INT_MASK_CHAN_TX_L, align 4
  %115 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i32, i32* @WCN36XX_DBG_DXE, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @wcn36xx_dbg(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @WCN36XX_CH_STAT_INT_DONE_MASK, align 4
  %122 = load i32, i32* @WCN36XX_CH_STAT_INT_ED_MASK, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %128 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %129 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %128, i32 0, i32 0
  %130 = call i32 @reap_tx_dxes(%struct.wcn36xx* %127, i32* %129)
  br label %131

131:                                              ; preds = %126, %116
  br label %132

132:                                              ; preds = %131, %72
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %133
}

declare dso_local i32 @wcn36xx_dxe_read_register(%struct.wcn36xx*, i32, i32*) #1

declare dso_local i32 @wcn36xx_dxe_write_register(%struct.wcn36xx*, i32, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32) #1

declare dso_local i32 @reap_tx_dxes(%struct.wcn36xx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
