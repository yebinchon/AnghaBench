; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_ethtool_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_ethtool_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32 }
%struct.r8152 = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*, %struct.ethtool_eee.1*)* }
%struct.r8152.0 = type opaque
%struct.ethtool_eee.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @rtl_ethtool_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_ethtool_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_eee*, align 8
  %5 = alloca %struct.r8152*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8152* @netdev_priv(%struct.net_device* %7)
  store %struct.r8152* %8, %struct.r8152** %5, align 8
  %9 = load %struct.r8152*, %struct.r8152** %5, align 8
  %10 = getelementptr inbounds %struct.r8152, %struct.r8152* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_autopm_get_interface(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.r8152*, %struct.r8152** %5, align 8
  %18 = getelementptr inbounds %struct.r8152, %struct.r8152* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.r8152*, %struct.r8152** %5, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.r8152.0*, %struct.ethtool_eee.1*)*, i32 (%struct.r8152.0*, %struct.ethtool_eee.1*)** %22, align 8
  %24 = load %struct.r8152*, %struct.r8152** %5, align 8
  %25 = bitcast %struct.r8152* %24 to %struct.r8152.0*
  %26 = load %struct.ethtool_eee*, %struct.ethtool_eee** %4, align 8
  %27 = bitcast %struct.ethtool_eee* %26 to %struct.ethtool_eee.1*
  %28 = call i32 %23(%struct.r8152.0* %25, %struct.ethtool_eee.1* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  %32 = load %struct.r8152*, %struct.r8152** %5, align 8
  %33 = getelementptr inbounds %struct.r8152, %struct.r8152* %32, i32 0, i32 2
  %34 = call i32 @mii_nway_restart(i32* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %16
  %36 = load %struct.r8152*, %struct.r8152** %5, align 8
  %37 = getelementptr inbounds %struct.r8152, %struct.r8152* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.r8152*, %struct.r8152** %5, align 8
  %40 = getelementptr inbounds %struct.r8152, %struct.r8152* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_autopm_put_interface(i32 %41)
  br label %43

43:                                               ; preds = %35, %15
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mii_nway_restart(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
