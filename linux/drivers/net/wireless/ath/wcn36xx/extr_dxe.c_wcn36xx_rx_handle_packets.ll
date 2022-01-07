; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_rx_handle_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_dxe.c_wcn36xx_rx_handle_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.wcn36xx_dxe_ch = type { i32, %struct.wcn36xx_dxe_ctl* }
%struct.wcn36xx_dxe_ctl = type { %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_ctl*, %struct.sk_buff* }
%struct.wcn36xx_dxe_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@WCN36XX_DXE_0_INT_CLR = common dso_local global i32 0, align 4
@WCN36XX_CH_STAT_INT_ERR_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_0_INT_ERR_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DXE IRQ reported error on RX channel\0A\00", align 1
@WCN36XX_CH_STAT_INT_DONE_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_0_INT_DONE_CLR = common dso_local global i32 0, align 4
@WCN36XX_CH_STAT_INT_ED_MASK = common dso_local global i32 0, align 4
@WCN36XX_DXE_0_INT_ED_CLR = common dso_local global i32 0, align 4
@WCN36xx_DXE_CTRL_VLD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WCN36XX_PKT_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@WCN36XX_DXE_ENCH_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, %struct.wcn36xx_dxe_ch*, i32, i32, i32, i32)* @wcn36xx_rx_handle_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_rx_handle_packets(%struct.wcn36xx* %0, %struct.wcn36xx_dxe_ch* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wcn36xx*, align 8
  %9 = alloca %struct.wcn36xx_dxe_ch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wcn36xx_dxe_desc*, align 8
  %15 = alloca %struct.wcn36xx_dxe_ctl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %8, align 8
  store %struct.wcn36xx_dxe_ch* %1, %struct.wcn36xx_dxe_ch** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @wcn36xx_dxe_read_register(%struct.wcn36xx* %20, i32 %21, i32* %18)
  %23 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %24 = load i32, i32* @WCN36XX_DXE_0_INT_CLR, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* @WCN36XX_CH_STAT_INT_ERR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %6
  %32 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %33 = load i32, i32* @WCN36XX_DXE_0_INT_ERR_CLR, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %32, i32 %33, i32 %34)
  %36 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %6
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @WCN36XX_CH_STAT_INT_DONE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %44 = load i32, i32* @WCN36XX_DXE_0_INT_DONE_CLR, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @WCN36XX_CH_STAT_INT_ED_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %54 = load i32, i32* @WCN36XX_DXE_0_INT_ED_CLR, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @WCN36XX_CH_STAT_INT_DONE_MASK, align 4
  %60 = load i32, i32* @WCN36XX_CH_STAT_INT_ED_MASK, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %131

65:                                               ; preds = %57
  %66 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %9, align 8
  %67 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %9, align 8
  %70 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %69, i32 0, i32 1
  %71 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %70, align 8
  store %struct.wcn36xx_dxe_ctl* %71, %struct.wcn36xx_dxe_ctl** %15, align 8
  %72 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %73 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %72, i32 0, i32 0
  %74 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %73, align 8
  store %struct.wcn36xx_dxe_desc* %74, %struct.wcn36xx_dxe_desc** %14, align 8
  br label %75

75:                                               ; preds = %110, %65
  %76 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %14, align 8
  %77 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @READ_ONCE(i32 %78)
  %80 = load i32, i32* @WCN36xx_DXE_CTRL_VLD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %120

84:                                               ; preds = %75
  %85 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %86 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %85, i32 0, i32 2
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %17, align 8
  %88 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %14, align 8
  %89 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %16, align 4
  %91 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %92 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %95 = load i32, i32* @GFP_ATOMIC, align 4
  %96 = call i32 @wcn36xx_dxe_fill_skb(i32 %93, %struct.wcn36xx_dxe_ctl* %94, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp eq i32 0, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %84
  %100 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %101 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @WCN36XX_PKT_SIZE, align 4
  %105 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %106 = call i32 @dma_unmap_single(i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %109 = call i32 @wcn36xx_rx_skb(%struct.wcn36xx* %107, %struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %99, %84
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %14, align 8
  %113 = getelementptr inbounds %struct.wcn36xx_dxe_desc, %struct.wcn36xx_dxe_desc* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %115 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %114, i32 0, i32 1
  %116 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %115, align 8
  store %struct.wcn36xx_dxe_ctl* %116, %struct.wcn36xx_dxe_ctl** %15, align 8
  %117 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %118 = getelementptr inbounds %struct.wcn36xx_dxe_ctl, %struct.wcn36xx_dxe_ctl* %117, i32 0, i32 0
  %119 = load %struct.wcn36xx_dxe_desc*, %struct.wcn36xx_dxe_desc** %118, align 8
  store %struct.wcn36xx_dxe_desc* %119, %struct.wcn36xx_dxe_desc** %14, align 8
  br label %75

120:                                              ; preds = %75
  %121 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %122 = load i32, i32* @WCN36XX_DXE_ENCH_ADDR, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @wcn36xx_dxe_write_register(%struct.wcn36xx* %121, i32 %122, i32 %123)
  %125 = load %struct.wcn36xx_dxe_ctl*, %struct.wcn36xx_dxe_ctl** %15, align 8
  %126 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %9, align 8
  %127 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %126, i32 0, i32 1
  store %struct.wcn36xx_dxe_ctl* %125, %struct.wcn36xx_dxe_ctl** %127, align 8
  %128 = load %struct.wcn36xx_dxe_ch*, %struct.wcn36xx_dxe_ch** %9, align 8
  %129 = getelementptr inbounds %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %120, %64
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @wcn36xx_dxe_read_register(%struct.wcn36xx*, i32, i32*) #1

declare dso_local i32 @wcn36xx_dxe_write_register(%struct.wcn36xx*, i32, i32) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @wcn36xx_dxe_fill_skb(i32, %struct.wcn36xx_dxe_ctl*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_rx_skb(%struct.wcn36xx*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
