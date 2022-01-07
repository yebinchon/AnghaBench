; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_hwtstamp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_hwtstamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.ravb_private = type { i32, i64 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@RAVB_RXTSTAMP_TYPE_V2_L2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_EVENT = common dso_local global i32 0, align 4
@RAVB_RXTSTAMP_TYPE_ALL = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @ravb_hwtstamp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_hwtstamp_get(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ifreq*, align 8
  %5 = alloca %struct.ravb_private*, align 8
  %6 = alloca %struct.hwtstamp_config, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ravb_private* %8, %struct.ravb_private** %5, align 8
  %9 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %11 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %22 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RAVB_RXTSTAMP_TYPE_V2_L2_EVENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L2_EVENT, align 4
  %29 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  br label %44

30:                                               ; preds = %18
  %31 = load %struct.ravb_private*, %struct.ravb_private** %5, align 8
  %32 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RAVB_RXTSTAMP_TYPE_ALL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %39 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %42 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @copy_to_user(i32 %47, %struct.hwtstamp_config* %6, i32 16)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  ret i32 %55
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
