; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_eth_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_eth_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIOCSHWTSTAMP = common dso_local global i32 0, align 4
@SIOCGHWTSTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @eth_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call i32 @netif_running(%struct.net_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %41

14:                                               ; preds = %3
  %15 = call i64 (...) @cpu_is_ixp46x()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SIOCSHWTSTAMP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %24 = call i32 @hwtstamp_set(%struct.net_device* %22, %struct.ifreq* %23)
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SIOCGHWTSTAMP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %32 = call i32 @hwtstamp_get(%struct.net_device* %30, %struct.ifreq* %31)
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %14
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @phy_mii_ioctl(i32 %37, %struct.ifreq* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %29, %21, %11
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @cpu_is_ixp46x(...) #1

declare dso_local i32 @hwtstamp_set(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @hwtstamp_get(%struct.net_device*, %struct.ifreq*) #1

declare dso_local i32 @phy_mii_ioctl(i32, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
