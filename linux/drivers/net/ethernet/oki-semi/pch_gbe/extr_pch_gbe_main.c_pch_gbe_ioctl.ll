; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.pch_gbe_adapter = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"cmd : 0x%04x\0A\00", align 1
@SIOCSHWTSTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @pch_gbe_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pch_gbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.pch_gbe_adapter* %10, %struct.pch_gbe_adapter** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @netdev_dbg(%struct.net_device* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SIOCSHWTSTAMP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @hwtstamp_ioctl(%struct.net_device* %18, %struct.ifreq* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %8, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %23, i32 0, i32 0
  %25 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %26 = call i32 @if_mii(%struct.ifreq* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @generic_mii_ioctl(i32* %24, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @hwtstamp_ioctl(%struct.net_device*, %struct.ifreq*, i32) #1

declare dso_local i32 @generic_mii_ioctl(i32*, i32, i32, i32*) #1

declare dso_local i32 @if_mii(%struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
