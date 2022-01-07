; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_dma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@AG71XX_REG_RX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS_PR = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_PS = common dso_local global i32 0, align 4
@RX_STATUS_BE = common dso_local global i32 0, align 4
@RX_STATUS_OF = common dso_local global i32 0, align 4
@TX_STATUS_BE = common dso_local global i32 0, align 4
@TX_STATUS_UR = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to clear DMA Rx status: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to clear DMA Tx status: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_dma_reset(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %6 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %7 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %10 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %11 = call i32 @ag71xx_wr(%struct.ag71xx* %9, i32 %10, i32 0)
  %12 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %13 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %14 = call i32 @ag71xx_wr(%struct.ag71xx* %12, i32 %13, i32 0)
  %15 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %16 = call i32 @ag71xx_dma_wait_stop(%struct.ag71xx* %15)
  %17 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %18 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %19 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %20 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ag71xx_wr(%struct.ag71xx* %17, i32 %18, i32 %21)
  %23 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %24 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %25 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %26 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ag71xx_wr(%struct.ag71xx* %23, i32 %24, i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %41, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %34 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %35 = load i32, i32* @RX_STATUS_PR, align 4
  %36 = call i32 @ag71xx_wr(%struct.ag71xx* %33, i32 %34, i32 %35)
  %37 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %38 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %39 = load i32, i32* @TX_STATUS_PS, align 4
  %40 = call i32 @ag71xx_wr(%struct.ag71xx* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %46 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %47 = load i32, i32* @RX_STATUS_BE, align 4
  %48 = load i32, i32* @RX_STATUS_OF, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ag71xx_wr(%struct.ag71xx* %45, i32 %46, i32 %49)
  %51 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %52 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %53 = load i32, i32* @TX_STATUS_BE, align 4
  %54 = load i32, i32* @TX_STATUS_UR, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ag71xx_wr(%struct.ag71xx* %51, i32 %52, i32 %55)
  %57 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %58 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %59 = call i32 @ag71xx_rr(%struct.ag71xx* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %44
  %63 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %64 = load i32, i32* @hw, align 4
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @netif_err(%struct.ag71xx* %63, i32 %64, %struct.net_device* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %62, %44
  %69 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %70 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %71 = call i32 @ag71xx_rr(%struct.ag71xx* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 16777215
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %78 = load i32, i32* @hw, align 4
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @netif_err(%struct.ag71xx* %77, i32 %78, %struct.net_device* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %76, %68
  ret void
}

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_dma_wait_stop(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @netif_err(%struct.ag71xx*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
