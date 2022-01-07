; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.bgmac = type { i32, i32, i32 }

@bgmac_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IRQ request error: %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bgmac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bgmac*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bgmac* @netdev_priv(%struct.net_device* %6)
  store %struct.bgmac* %7, %struct.bgmac** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %9 = call i32 @bgmac_chip_reset(%struct.bgmac* %8)
  %10 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %11 = call i32 @bgmac_dma_init(%struct.bgmac* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %18 = call i32 @bgmac_chip_init(%struct.bgmac* %17)
  %19 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %20 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @bgmac_interrupt, align 4
  %23 = load i32, i32* @IRQF_SHARED, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @request_irq(i32 %21, i32 %22, i32 %23, i32 %26, %struct.net_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %33 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %38 = call i32 @bgmac_dma_cleanup(%struct.bgmac* %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %16
  %41 = load %struct.bgmac*, %struct.bgmac** %4, align 8
  %42 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %41, i32 0, i32 0
  %43 = call i32 @napi_enable(i32* %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @phy_start(i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @netif_start_queue(%struct.net_device* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %31, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.bgmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bgmac_chip_reset(%struct.bgmac*) #1

declare dso_local i32 @bgmac_dma_init(%struct.bgmac*) #1

declare dso_local i32 @bgmac_chip_init(%struct.bgmac*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @bgmac_dma_cleanup(%struct.bgmac*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
