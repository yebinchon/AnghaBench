; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bus.h_brcmf_bus_get_fwname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bus.h_brcmf_bus_get_fwname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_bus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_bus*, i8*, i8*)* @brcmf_bus_get_fwname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_bus_get_fwname(%struct.brcmf_bus* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.brcmf_bus*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.brcmf_bus* %0, %struct.brcmf_bus** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %8 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %10, align 8
  %12 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 %11(i32 %14, i8* %15, i8* %16)
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
