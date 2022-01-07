; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_alloc_ctl_blks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_alloc_ctl_blks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@WCN36XX_DXE_CH_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DESC_NUMB_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DESC_NUMB_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DESC_NUMB_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DESC_NUMB_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_WQ_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_TX_L_BD = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_TX_H_BD = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_TX_L_SKB = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_TX_H_SKB = common dso_local global i32 0, align 4
@WCN36XX_DXE_REG_CTL_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_REG_CTL_TX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEFAULT_CTL_TX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_DEFAULT_CTL_TX_H = common dso_local global i32 0, align 4
@WCN36XX_SMSM_WLAN_TX_ENABLE = common dso_local global i32 0, align 4
@WCN36XX_SMSM_WLAN_TX_RINGS_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate DXE control blocks\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_dxe_alloc_ctl_blks(%struct.wcn36xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  %5 = load i32, i32* @WCN36XX_DXE_CH_TX_L, align 4
  %6 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %7 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @WCN36XX_DXE_CH_TX_H, align 4
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %11 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 6
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @WCN36XX_DXE_CH_RX_L, align 4
  %14 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %15 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @WCN36XX_DXE_CH_RX_H, align 4
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @WCN36XX_DXE_CH_DESC_NUMB_TX_L, align 4
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %23 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @WCN36XX_DXE_CH_DESC_NUMB_TX_H, align 4
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @WCN36XX_DXE_CH_DESC_NUMB_RX_L, align 4
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %31 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @WCN36XX_DXE_CH_DESC_NUMB_RX_H, align 4
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %35 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @WCN36XX_DXE_WQ_TX_L, align 4
  %38 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %39 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @WCN36XX_DXE_WQ_TX_H, align 4
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %43 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @WCN36XX_DXE_CTRL_TX_L_BD, align 4
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @WCN36XX_DXE_CTRL_TX_H_BD, align 4
  %50 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %51 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @WCN36XX_DXE_CTRL_TX_L_SKB, align 4
  %54 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %55 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @WCN36XX_DXE_CTRL_TX_H_SKB, align 4
  %58 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %59 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @WCN36XX_DXE_REG_CTL_TX_L, align 4
  %62 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %63 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @WCN36XX_DXE_REG_CTL_TX_H, align 4
  %66 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %67 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @WCN36XX_DXE_CH_DEFAULT_CTL_TX_L, align 4
  %70 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %71 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @WCN36XX_DXE_CH_DEFAULT_CTL_TX_H, align 4
  %74 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %75 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %78 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %77, i32 0, i32 4
  %79 = call i32 @wcn36xx_dxe_allocate_ctl_block(%struct.TYPE_2__* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %1
  br label %117

83:                                               ; preds = %1
  %84 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %85 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %84, i32 0, i32 3
  %86 = call i32 @wcn36xx_dxe_allocate_ctl_block(%struct.TYPE_2__* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %117

90:                                               ; preds = %83
  %91 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %92 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %91, i32 0, i32 2
  %93 = call i32 @wcn36xx_dxe_allocate_ctl_block(%struct.TYPE_2__* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %117

97:                                               ; preds = %90
  %98 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %99 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %98, i32 0, i32 1
  %100 = call i32 @wcn36xx_dxe_allocate_ctl_block(%struct.TYPE_2__* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %117

104:                                              ; preds = %97
  %105 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %106 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @WCN36XX_SMSM_WLAN_TX_ENABLE, align 4
  %109 = load i32, i32* @WCN36XX_SMSM_WLAN_TX_RINGS_EMPTY, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @WCN36XX_SMSM_WLAN_TX_RINGS_EMPTY, align 4
  %112 = call i32 @qcom_smem_state_update_bits(i32 %107, i32 %110, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %117

116:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %123

117:                                              ; preds = %115, %103, %96, %89, %82
  %118 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %120 = call i32 @wcn36xx_dxe_free_ctl_blks(%struct.wcn36xx* %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %116
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @wcn36xx_dxe_allocate_ctl_block(%struct.TYPE_2__*) #1

declare dso_local i32 @qcom_smem_state_update_bits(i32, i32, i32) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i32 @wcn36xx_dxe_free_ctl_blks(%struct.wcn36xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
