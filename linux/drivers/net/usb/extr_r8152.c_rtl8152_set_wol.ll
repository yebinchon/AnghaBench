; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.r8152 = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @rtl8152_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.r8152*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8152* @netdev_priv(%struct.net_device* %8)
  store %struct.r8152* %9, %struct.r8152** %6, align 8
  %10 = load %struct.r8152*, %struct.r8152** %6, align 8
  %11 = call i32 @rtl_can_wakeup(%struct.r8152* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WAKE_ANY, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %16
  %28 = load %struct.r8152*, %struct.r8152** %6, align 8
  %29 = getelementptr inbounds %struct.r8152, %struct.r8152* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_autopm_get_interface(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %58

35:                                               ; preds = %27
  %36 = load %struct.r8152*, %struct.r8152** %6, align 8
  %37 = getelementptr inbounds %struct.r8152, %struct.r8152* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.r8152*, %struct.r8152** %6, align 8
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__rtl_set_wol(%struct.r8152* %39, i32 %42)
  %44 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WAKE_ANY, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.r8152*, %struct.r8152** %6, align 8
  %50 = getelementptr inbounds %struct.r8152, %struct.r8152* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.r8152*, %struct.r8152** %6, align 8
  %52 = getelementptr inbounds %struct.r8152, %struct.r8152* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.r8152*, %struct.r8152** %6, align 8
  %55 = getelementptr inbounds %struct.r8152, %struct.r8152* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_autopm_put_interface(i32 %56)
  br label %58

58:                                               ; preds = %35, %34
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %24, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtl_can_wakeup(%struct.r8152*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__rtl_set_wol(%struct.r8152*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
