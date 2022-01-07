; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.ifreq*, i32)* }
%struct.net_device.0 = type opaque
%struct.ifreq = type opaque
%struct.ifreq.1 = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq.1*, i32)* @macvlan_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_do_ioctl(%struct.net_device* %0, %struct.ifreq.1* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq.1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  %9 = alloca %struct.ifreq.1, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq.1* %1, %struct.ifreq.1** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_device* @macvlan_dev_real_dev(%struct.net_device* %11)
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %14, align 8
  store %struct.net_device_ops* %15, %struct.net_device_ops** %8, align 8
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %9, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFNAMSIZ, align 4
  %24 = call i32 @strscpy(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.ifreq.1*, %struct.ifreq.1** %5, align 8
  %26 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %56 [
    i32 128, label %30
    i32 129, label %37
  ]

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @dev_net(%struct.net_device* %31)
  %33 = call i32 @net_eq(i32 %32, i32* @init_net)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %56

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %3, %36
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call i32 @netif_device_present(%struct.net_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %43 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.net_device.0*, %struct.ifreq*, i32)*, i32 (%struct.net_device.0*, %struct.ifreq*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.net_device.0*, %struct.ifreq*, i32)* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %48 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.net_device.0*, %struct.ifreq*, i32)*, i32 (%struct.net_device.0*, %struct.ifreq*, i32)** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = bitcast %struct.net_device* %50 to %struct.net_device.0*
  %52 = bitcast %struct.ifreq.1* %9 to %struct.ifreq*
  %53 = load i32, i32* %6, align 4
  %54 = call i32 %49(%struct.net_device.0* %51, %struct.ifreq* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %46, %41, %37
  br label %56

56:                                               ; preds = %3, %55, %35
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ifreq.1*, %struct.ifreq.1** %5, align 8
  %63 = getelementptr inbounds %struct.ifreq.1, %struct.ifreq.1* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local %struct.net_device* @macvlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
