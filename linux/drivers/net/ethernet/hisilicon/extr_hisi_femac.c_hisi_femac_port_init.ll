; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_femac_priv = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MAC_PORTSEL_STAT_CPU = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@MAC_PORTSEL_RMII = common dso_local global i32 0, align 4
@MAC_PORTSEL = common dso_local global i64 0, align 8
@IRQ_ENA_PORT0_MASK = common dso_local global i32 0, align 4
@GLB_IRQ_RAW = common dso_local global i64 0, align 8
@IRQ_ENA_PORT0 = common dso_local global i32 0, align 4
@GLB_FWCTRL = common dso_local global i64 0, align 8
@FWCTRL_VLAN_ENABLE = common dso_local global i32 0, align 4
@FWCTRL_FWALL2CPU = common dso_local global i32 0, align 4
@FWCTRL_FW2CPU_ENA = common dso_local global i32 0, align 4
@GLB_MACTCTRL = common dso_local global i64 0, align 8
@MACTCTRL_BROAD2CPU = common dso_local global i32 0, align 4
@MACTCTRL_MACT_ENA = common dso_local global i32 0, align 4
@MAC_SET = common dso_local global i64 0, align 8
@MAX_FRAME_SIZE_MASK = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@RX_COALESCED_TIMER = common dso_local global i32 0, align 4
@RX_COALESCED_FRAMES = common dso_local global i32 0, align 4
@RX_COALESCED_FRAME_OFFSET = common dso_local global i32 0, align 4
@RX_COALESCE_SET = common dso_local global i64 0, align 8
@HW_RX_FIFO_DEPTH = common dso_local global i32 0, align 4
@RX_DEPTH_OFFSET = common dso_local global i32 0, align 4
@HW_TX_FIFO_DEPTH = common dso_local global i32 0, align 4
@QLEN_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_femac_priv*)* @hisi_femac_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_femac_port_init(%struct.hisi_femac_priv* %0) #0 {
  %2 = alloca %struct.hisi_femac_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hisi_femac_priv* %0, %struct.hisi_femac_priv** %2, align 8
  %4 = load i32, i32* @MAC_PORTSEL_STAT_CPU, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @MAC_PORTSEL_RMII, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %21 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MAC_PORTSEL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @IRQ_ENA_PORT0_MASK, align 4
  %27 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %28 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GLB_IRQ_RAW, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %34 = load i32, i32* @IRQ_ENA_PORT0_MASK, align 4
  %35 = load i32, i32* @IRQ_ENA_PORT0, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @hisi_femac_irq_disable(%struct.hisi_femac_priv* %33, i32 %36)
  %38 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %39 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GLB_FWCTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @FWCTRL_VLAN_ENABLE, align 4
  %45 = load i32, i32* @FWCTRL_FWALL2CPU, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @FWCTRL_FW2CPU_ENA, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %55 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GLB_FWCTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %61 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GLB_MACTCTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @MACTCTRL_BROAD2CPU, align 4
  %67 = load i32, i32* @MACTCTRL_MACT_ENA, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %73 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @GLB_MACTCTRL, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %79 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAC_SET, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* @MAX_FRAME_SIZE_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %93 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MAC_SET, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel(i32 %91, i64 %96)
  %98 = load i32, i32* @RX_COALESCED_TIMER, align 4
  %99 = load i32, i32* @RX_COALESCED_FRAMES, align 4
  %100 = load i32, i32* @RX_COALESCED_FRAME_OFFSET, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %105 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RX_COALESCE_SET, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load i32, i32* @HW_RX_FIFO_DEPTH, align 4
  %111 = load i32, i32* @RX_DEPTH_OFFSET, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* @HW_TX_FIFO_DEPTH, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %2, align 8
  %117 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @QLEN_SET, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hisi_femac_irq_disable(%struct.hisi_femac_priv*, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
