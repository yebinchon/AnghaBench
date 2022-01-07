; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_net_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_net_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i64, i32, i32, i32, %struct.net_device*, %struct.brcmf_pub* }
%struct.net_device = type { i32*, i32, i32, i32, i32*, i32 }
%struct.brcmf_pub = type { i32**, i32, i64 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Enter, bsscfgidx=%d mac=%pM\0A\00", align 1
@brcmf_netdev_ops_pri = common dso_local global i32 0, align 4
@brcmf_ethtool_ops = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_brcmf_set_multicast_list = common dso_local global i32 0, align 4
@_brcmf_update_ndtable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't register the net device\0A\00", align 1
@brcmf_cfg80211_free_netdev = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: Broadcom Dongle Host Driver\0A\00", align 1
@EBADE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_net_attach(%struct.brcmf_if* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %9, i32 0, i32 5
  %11 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  store %struct.brcmf_pub* %11, %struct.brcmf_pub** %6, align 8
  %12 = load i32, i32* @TRACE, align 4
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %17 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18)
  %20 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %20, i32 0, i32 4
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  store i32* @brcmf_netdev_ops_pri, i32** %24, align 8
  %25 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 4
  store i32* @brcmf_ethtool_ops, i32** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %40 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %38, i32 %41, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %46 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cfg_to_wiphy(i32 %47)
  %49 = call i32 @wiphy_net(i32 %48)
  %50 = call i32 @dev_net_set(%struct.net_device* %44, i32 %49)
  %51 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %52 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %51, i32 0, i32 2
  %53 = load i32, i32* @_brcmf_set_multicast_list, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %56 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %55, i32 0, i32 1
  %57 = load i32, i32* @_brcmf_update_ndtable, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %2
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = call i64 @register_netdevice(%struct.net_device* %62)
  store i64 %63, i64* %8, align 8
  br label %67

64:                                               ; preds = %2
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = call i64 @register_netdev(%struct.net_device* %65)
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %72 = call i32 @bphy_err(%struct.brcmf_pub* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %83

73:                                               ; preds = %67
  %74 = load i32, i32* @brcmf_cfg80211_free_netdev, align 4
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @INFO, align 4
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  store i32 0, i32* %3, align 4
  br label %95

83:                                               ; preds = %70
  %84 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %85 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %88 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %86, i64 %89
  store i32* null, i32** %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %7, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @EBADE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %83, %73
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_net(i32) #1

declare dso_local i32 @cfg_to_wiphy(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @register_netdevice(%struct.net_device*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
