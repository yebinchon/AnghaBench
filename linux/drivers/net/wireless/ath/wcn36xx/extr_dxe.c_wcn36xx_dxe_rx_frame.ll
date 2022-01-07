; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_dxe_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32 }

@WCN36XX_DXE_INT_SRC_RAW_REG = common dso_local global i32 0, align 4
@WCN36XX_DXE_INT_CH1_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_RX_L = common dso_local global i32 0, align 4
@WCN36XX_INT_MASK_CHAN_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_L = common dso_local global i32 0, align 4
@WCN36XX_DXE_INT_CH3_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_CTRL_RX_H = common dso_local global i32 0, align 4
@WCN36XX_INT_MASK_CHAN_RX_H = common dso_local global i32 0, align 4
@WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"No DXE interrupt pending\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wcn36xx_dxe_rx_frame(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  %3 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %4 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %5 = load i32, i32* @WCN36XX_DXE_INT_SRC_RAW_REG, align 4
  %6 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @WCN36XX_DXE_INT_CH1_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 1
  %15 = load i32, i32* @WCN36XX_DXE_CTRL_RX_L, align 4
  %16 = load i32, i32* @WCN36XX_DXE_INT_CH1_MASK, align 4
  %17 = load i32, i32* @WCN36XX_INT_MASK_CHAN_RX_L, align 4
  %18 = load i32, i32* @WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_L, align 4
  %19 = call i32 @wcn36xx_rx_handle_packets(%struct.wcn36xx* %12, i32* %14, i32 %15, i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @WCN36XX_DXE_INT_CH3_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %27 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %28 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %27, i32 0, i32 0
  %29 = load i32, i32* @WCN36XX_DXE_CTRL_RX_H, align 4
  %30 = load i32, i32* @WCN36XX_DXE_INT_CH3_MASK, align 4
  %31 = load i32, i32* @WCN36XX_INT_MASK_CHAN_RX_H, align 4
  %32 = load i32, i32* @WCN36XX_DXE_CH_STATUS_REG_ADDR_RX_H, align 4
  %33 = call i32 @wcn36xx_rx_handle_packets(%struct.wcn36xx* %26, i32* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @wcn36xx_dxe_read_register(%struct.wcn36xx*, i32, i32*) #1

declare dso_local i32 @wcn36xx_rx_handle_packets(%struct.wcn36xx*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
