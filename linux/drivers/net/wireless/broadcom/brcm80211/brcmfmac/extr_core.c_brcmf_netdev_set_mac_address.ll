; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netdev_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.brcmf_if = type { i32, %struct.TYPE_2__*, i32, %struct.brcmf_pub* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_pub = type { i32 }
%struct.sockaddr = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enter, bsscfgidx=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cur_etheraddr\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Setting cur_etheraddr failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"updated to %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @brcmf_netdev_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_netdev_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %9)
  store %struct.brcmf_if* %10, %struct.brcmf_if** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %6, align 8
  %13 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %14 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %13, i32 0, i32 3
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %14, align 8
  store %struct.brcmf_pub* %15, %struct.brcmf_pub** %7, align 8
  %16 = load i32, i32* @TRACE, align 4
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @bphy_err(%struct.brcmf_pub* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %57

33:                                               ; preds = %2
  %34 = load i32, i32* @TRACE, align 4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @brcmf_dbg(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i32 %41, i32 %44, i32 %45)
  %47 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %48 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %53 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memcpy(i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %33, %29
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i32, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
