; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bus.h_brcmf_bus_gettxq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bus.h_brcmf_bus_gettxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktq = type { i32 }
%struct.brcmf_bus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pktq* (i32)* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pktq* (%struct.brcmf_bus*)* @brcmf_bus_gettxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pktq* @brcmf_bus_gettxq(%struct.brcmf_bus* %0) #0 {
  %2 = alloca %struct.pktq*, align 8
  %3 = alloca %struct.brcmf_bus*, align 8
  store %struct.brcmf_bus* %0, %struct.brcmf_bus** %3, align 8
  %4 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %5 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pktq* (i32)*, %struct.pktq* (i32)** %7, align 8
  %9 = icmp ne %struct.pktq* (i32)* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.pktq* @ERR_PTR(i32 %12)
  store %struct.pktq* %13, %struct.pktq** %2, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.pktq* (i32)*, %struct.pktq* (i32)** %18, align 8
  %20 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %21 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.pktq* %19(i32 %22)
  store %struct.pktq* %23, %struct.pktq** %2, align 8
  br label %24

24:                                               ; preds = %14, %10
  %25 = load %struct.pktq*, %struct.pktq** %2, align 8
  ret %struct.pktq* %25
}

declare dso_local %struct.pktq* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
