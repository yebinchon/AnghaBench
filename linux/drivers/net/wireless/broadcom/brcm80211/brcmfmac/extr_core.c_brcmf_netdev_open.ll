; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32, i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.brcmf_bus* }
%struct.brcmf_bus = type { i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enter, bsscfgidx=%d\0A\00", align 1
@BRCMF_BUS_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed bus is not ready\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"toe_ol\00", align 1
@TOE_TX_CSUM_OL = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to bring up cfg80211\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @brcmf_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.brcmf_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %8)
  store %struct.brcmf_if* %9, %struct.brcmf_if** %4, align 8
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 2
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %5, align 8
  %13 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %14 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %13, i32 0, i32 0
  %15 = load %struct.brcmf_bus*, %struct.brcmf_bus** %14, align 8
  store %struct.brcmf_bus* %15, %struct.brcmf_bus** %6, align 8
  %16 = load i32, i32* @TRACE, align 4
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %18 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.brcmf_bus*, %struct.brcmf_bus** %6, align 8
  %22 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BRCMF_BUS_UP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %28 = call i32 @bphy_err(%struct.brcmf_pub* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %1
  %32 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %33 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %32, i32 0, i32 0
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %36 = call i64 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TOE_TX_CSUM_OL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %56

49:                                               ; preds = %38, %31
  %50 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i64 @brcmf_cfg80211_up(%struct.net_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %62 = call i32 @bphy_err(%struct.brcmf_pub* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %68

65:                                               ; preds = %56
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @netif_carrier_off(%struct.net_device* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %60, %26
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @brcmf_fil_iovar_int_get(%struct.brcmf_if*, i8*, i32*) #1

declare dso_local i64 @brcmf_cfg80211_up(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
