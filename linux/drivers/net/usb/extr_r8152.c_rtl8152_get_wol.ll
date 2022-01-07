; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i64 }
%struct.r8152 = type { i32, i32 }

@WAKE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @rtl8152_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8152_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.r8152*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8152* @netdev_priv(%struct.net_device* %6)
  store %struct.r8152* %7, %struct.r8152** %5, align 8
  %8 = load %struct.r8152*, %struct.r8152** %5, align 8
  %9 = getelementptr inbounds %struct.r8152, %struct.r8152* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @usb_autopm_get_interface(i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.r8152*, %struct.r8152** %5, align 8
  %16 = call i32 @rtl_can_wakeup(%struct.r8152* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.r8152*, %struct.r8152** %5, align 8
  %25 = getelementptr inbounds %struct.r8152, %struct.r8152* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* @WAKE_ANY, align 8
  %28 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.r8152*, %struct.r8152** %5, align 8
  %31 = call i32 @__rtl_get_wol(%struct.r8152* %30)
  %32 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.r8152*, %struct.r8152** %5, align 8
  %35 = getelementptr inbounds %struct.r8152, %struct.r8152* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %23, %18
  %38 = load %struct.r8152*, %struct.r8152** %5, align 8
  %39 = getelementptr inbounds %struct.r8152, %struct.r8152* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_autopm_put_interface(i32 %40)
  br label %42

42:                                               ; preds = %37, %13
  ret void
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @rtl_can_wakeup(%struct.r8152*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__rtl_get_wol(%struct.r8152*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
