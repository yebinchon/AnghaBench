; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-ethtool.c_vxge_ethtool_idnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-ethtool.c_vxge_ethtool_idnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxgedev = type { %struct.__vxge_hw_device* }
%struct.__vxge_hw_device = type { i32 }

@VXGE_FLICKER_ON = common dso_local global i32 0, align 4
@VXGE_FLICKER_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vxge_ethtool_idnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_ethtool_idnic(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxgedev*, align 8
  %7 = alloca %struct.__vxge_hw_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.vxgedev* @netdev_priv(%struct.net_device* %8)
  store %struct.vxgedev* %9, %struct.vxgedev** %6, align 8
  %10 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 0
  %12 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %11, align 8
  store %struct.__vxge_hw_device* %12, %struct.__vxge_hw_device** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 128, label %18
  ]

14:                                               ; preds = %2
  %15 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %7, align 8
  %16 = load i32, i32* @VXGE_FLICKER_ON, align 4
  %17 = call i32 @vxge_hw_device_flick_link_led(%struct.__vxge_hw_device* %15, i32 %16)
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %7, align 8
  %20 = load i32, i32* @VXGE_FLICKER_OFF, align 4
  %21 = call i32 @vxge_hw_device_flick_link_led(%struct.__vxge_hw_device* %19, i32 %20)
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %18, %14
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.vxgedev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxge_hw_device_flick_link_led(%struct.__vxge_hw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
