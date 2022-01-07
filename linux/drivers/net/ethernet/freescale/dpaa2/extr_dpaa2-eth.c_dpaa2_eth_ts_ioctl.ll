; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_ts_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_ts_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.dpaa2_eth_priv = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i64 0, align 8
@HWTSTAMP_FILTER_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @dpaa2_eth_ts_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_ts_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpaa2_eth_priv*, align 8
  %9 = alloca %struct.hwtstamp_config, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dpaa2_eth_priv* %11, %struct.dpaa2_eth_priv** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @copy_from_user(%struct.hwtstamp_config* %9, i32 %14, i32 16)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %57

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %26
  ]

23:                                               ; preds = %20
  %24 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %25 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %32

26:                                               ; preds = %20
  %27 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %28 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ERANGE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %26, %23
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HWTSTAMP_FILTER_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %39 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %45

40:                                               ; preds = %32
  %41 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %42 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load i64, i64* @HWTSTAMP_FILTER_ALL, align 8
  %44 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @copy_to_user(i32 %48, %struct.hwtstamp_config* %9, i32 16)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 0, %54 ]
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %29, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
