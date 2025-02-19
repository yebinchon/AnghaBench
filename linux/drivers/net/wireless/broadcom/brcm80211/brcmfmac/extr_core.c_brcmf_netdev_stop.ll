; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enter, bsscfgidx=%d\0A\00", align 1
@BRCMF_BUS_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"arp_hostip_clear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @brcmf_netdev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_netdev_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.brcmf_if*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %4)
  store %struct.brcmf_if* %5, %struct.brcmf_if** %3, align 8
  %6 = load i32, i32* @TRACE, align 4
  %7 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @brcmf_dbg(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @brcmf_cfg80211_down(%struct.net_device* %11)
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BRCMF_BUS_UP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %24 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %27 = call i32 @brcmf_net_setcarrier(%struct.brcmf_if* %26, i32 0)
  ret i32 0
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @brcmf_cfg80211_down(%struct.net_device*) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i32*, i32) #1

declare dso_local i32 @brcmf_net_setcarrier(%struct.brcmf_if*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
