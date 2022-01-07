; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_net_p2p_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_net_p2p_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i64, %struct.brcmf_pub*, i32, %struct.net_device* }
%struct.brcmf_pub = type { i32** }
%struct.net_device = type { i32*, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Enter, bsscfgidx=%d mac=%pM\0A\00", align 1
@brcmf_netdev_ops_p2p = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't register the p2p net device\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: Broadcom Dongle Host Driver\0A\00", align 1
@EBADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*)* @brcmf_net_p2p_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_net_p2p_attach(%struct.brcmf_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  %6 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %6, i32 0, i32 1
  %8 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  store %struct.brcmf_pub* %8, %struct.brcmf_pub** %4, align 8
  %9 = load i32, i32* @TRACE, align 4
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %15)
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  store i32* @brcmf_netdev_ops_p2p, i32** %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %26 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i32 %24, i32 %27, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i64 @register_netdev(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %35 = call i32 @bphy_err(%struct.brcmf_pub* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %43

36:                                               ; preds = %1
  %37 = load i32, i32* @INFO, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  store i32 0, i32* %2, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %45 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %44, i32 0, i32 1
  %46 = load %struct.brcmf_pub*, %struct.brcmf_pub** %45, align 8
  %47 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %50 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  store i32* null, i32** %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* @EBADE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %36
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
