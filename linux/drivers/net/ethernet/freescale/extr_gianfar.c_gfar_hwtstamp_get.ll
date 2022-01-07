; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_hwtstamp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_hwtstamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }
%struct.gfar_private = type { i64, i64 }

@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @gfar_hwtstamp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_hwtstamp_get(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ifreq*, align 8
  %5 = alloca %struct.hwtstamp_config, align 8
  %6 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %7)
  store %struct.gfar_private* %8, %struct.gfar_private** %6, align 8
  %9 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %5, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 1
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
  %20 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %22 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @copy_to_user(i32 %34, %struct.hwtstamp_config* %5, i32 16)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  ret i32 %42
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
