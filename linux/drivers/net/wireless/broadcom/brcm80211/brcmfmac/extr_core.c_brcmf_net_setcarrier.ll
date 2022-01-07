; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_net_setcarrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_net_setcarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Enter, bsscfgidx=%d carrier=%d\0A\00", align 1
@BRCMF_NETIF_STOP_REASON_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_net_setcarrier(%struct.brcmf_if* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TRACE, align 4
  %7 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @brcmf_dbg(i32 %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %16 = load i32, i32* @BRCMF_NETIF_STOP_REASON_DISCONNECTED, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @brcmf_txflowblock_if(%struct.brcmf_if* %15, i32 %16, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i64 @netif_carrier_ok(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @netif_carrier_on(%struct.net_device* %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i64 @netif_carrier_ok(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netif_carrier_off(%struct.net_device* %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %31
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @brcmf_txflowblock_if(%struct.brcmf_if*, i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
