; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_gettxq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_gettxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktq = type { i32 }
%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { %struct.brcmf_sdio* }
%struct.brcmf_sdio = type { %struct.pktq }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pktq* (%struct.device*)* @brcmf_sdio_bus_gettxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pktq* @brcmf_sdio_bus_gettxq(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.brcmf_bus*, align 8
  %4 = alloca %struct.brcmf_sdio_dev*, align 8
  %5 = alloca %struct.brcmf_sdio*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %6)
  store %struct.brcmf_bus* %7, %struct.brcmf_bus** %3, align 8
  %8 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %10, align 8
  store %struct.brcmf_sdio_dev* %11, %struct.brcmf_sdio_dev** %4, align 8
  %12 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %12, i32 0, i32 0
  %14 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %13, align 8
  store %struct.brcmf_sdio* %14, %struct.brcmf_sdio** %5, align 8
  %15 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %5, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %15, i32 0, i32 0
  ret %struct.pktq* %16
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
