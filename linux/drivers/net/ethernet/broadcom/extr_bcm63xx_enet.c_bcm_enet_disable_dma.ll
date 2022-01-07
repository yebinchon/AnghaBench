; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_disable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_disable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i32 }

@ENETDMAC_CHANCFG = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_enet_priv*, i32)* @bcm_enet_disable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_disable_dma(%struct.bcm_enet_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_enet_priv* %0, %struct.bcm_enet_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %8 = load i32, i32* @ENETDMAC_CHANCFG, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %7, i32 0, i32 %8, i32 %9)
  store i32 1000, i32* %5, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %13 = load i32, i32* @ENETDMAC_CHANCFG, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @enet_dmac_readl(%struct.bcm_enet_priv* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ENETDMAC_CHANCFG_EN_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %27

21:                                               ; preds = %11
  %22 = call i32 @udelay(i32 1)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %11, label %27

27:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @enet_dmac_writel(%struct.bcm_enet_priv*, i32, i32, i32) #1

declare dso_local i32 @enet_dmac_readl(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
