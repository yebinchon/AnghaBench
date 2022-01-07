; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.slic_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SLIC_REG_ICR = common dso_local global i32 0, align 4
@SLIC_ICR_INT_OFF = common dso_local global i32 0, align 4
@SLIC_REG_ISR = common dso_local global i32 0, align 4
@SLIC_GXCR_RESET = common dso_local global i32 0, align 4
@SLIC_GXCR_PAUSEEN = common dso_local global i32 0, align 4
@SLIC_REG_WXCFG = common dso_local global i32 0, align 4
@SLIC_GRCR_RESET = common dso_local global i32 0, align 4
@SLIC_GRCR_CTLEN = common dso_local global i32 0, align 4
@SLIC_GRCR_ADDRAEN = common dso_local global i32 0, align 4
@SLIC_GRCR_HASHSIZE = common dso_local global i32 0, align 4
@SLIC_GRCR_HASHSIZE_SHIFT = common dso_local global i32 0, align 4
@SLIC_REG_WRCFG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@SLIC_REG_WPHY = common dso_local global i32 0, align 4
@SLIC_REG_QUIESCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @slic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.slic_device* @netdev_priv(%struct.net_device* %5)
  store %struct.slic_device* %6, %struct.slic_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %10 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %9, i32 0, i32 2
  %11 = call i32 @napi_disable(i32* %10)
  %12 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %13 = load i32, i32* @SLIC_REG_ICR, align 4
  %14 = load i32, i32* @SLIC_ICR_INT_OFF, align 4
  %15 = call i32 @slic_write(%struct.slic_device* %12, i32 %13, i32 %14)
  %16 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %17 = load i32, i32* @SLIC_REG_ISR, align 4
  %18 = call i32 @slic_write(%struct.slic_device* %16, i32 %17, i32 0)
  %19 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %20 = call i32 @slic_flush_write(%struct.slic_device* %19)
  %21 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %22 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.slic_device* %26)
  %28 = load i32, i32* @SLIC_GXCR_RESET, align 4
  %29 = load i32, i32* @SLIC_GXCR_PAUSEEN, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %32 = load i32, i32* @SLIC_REG_WXCFG, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @slic_write(%struct.slic_device* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @SLIC_GRCR_RESET, align 4
  %36 = load i32, i32* @SLIC_GRCR_CTLEN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SLIC_GRCR_ADDRAEN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SLIC_GRCR_HASHSIZE, align 4
  %41 = load i32, i32* @SLIC_GRCR_HASHSIZE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %45 = load i32, i32* @SLIC_REG_WRCFG, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @slic_write(%struct.slic_device* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @MII_BMCR, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* @BMCR_PDOWN, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %53 = load i32, i32* @SLIC_REG_WPHY, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @slic_write(%struct.slic_device* %52, i32 %53, i32 %54)
  %56 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %57 = call i32 @slic_flush_write(%struct.slic_device* %56)
  %58 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %59 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %58, i32 0, i32 0
  %60 = call i32 @slic_clear_upr_list(i32* %59)
  %61 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %62 = load i32, i32* @SLIC_REG_QUIESCE, align 4
  %63 = call i32 @slic_write(%struct.slic_device* %61, i32 %62, i32 0)
  %64 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %65 = call i32 @slic_free_stat_queue(%struct.slic_device* %64)
  %66 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %67 = call i32 @slic_free_tx_queue(%struct.slic_device* %66)
  %68 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %69 = call i32 @slic_free_rx_queue(%struct.slic_device* %68)
  %70 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %71 = call i32 @slic_free_shmem(%struct.slic_device* %70)
  %72 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %73 = call i32 @slic_card_reset(%struct.slic_device* %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @netif_carrier_off(%struct.net_device* %74)
  ret i32 0
}

declare dso_local %struct.slic_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

declare dso_local i32 @free_irq(i32, %struct.slic_device*) #1

declare dso_local i32 @slic_clear_upr_list(i32*) #1

declare dso_local i32 @slic_free_stat_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_free_tx_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_free_rx_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_free_shmem(%struct.slic_device*) #1

declare dso_local i32 @slic_card_reset(%struct.slic_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
