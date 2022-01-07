; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_hwtstamp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xscale/extr_ixp4xx_eth.c_hwtstamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }
%struct.port = type { i32, i64 }

@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_SYNC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @hwtstamp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwtstamp_get(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config, align 8
  %7 = alloca %struct.port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port* @netdev_priv(%struct.net_device* %8)
  store %struct.port* %9, %struct.port** %7, align 8
  %10 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.port*, %struct.port** %7, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.port*, %struct.port** %7, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %34 [
    i32 0, label %25
    i32 128, label %28
    i32 129, label %31
  ]

25:                                               ; preds = %19
  %26 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %27 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  br label %38

28:                                               ; preds = %19
  %29 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_SYNC, align 4
  %30 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* @HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ, align 4
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  br label %38

34:                                               ; preds = %19
  %35 = call i32 @WARN_ON_ONCE(i32 1)
  %36 = load i32, i32* @ERANGE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %31, %28, %25
  %39 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @copy_to_user(i32 %41, %struct.hwtstamp_config* %6, i32 16)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  br label %48

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %34
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
