; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_x25.c_x25_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_x25.c_x25_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ifreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.net_device*, i32, i32)*, i32* }

@proto = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENCODING_NRZ = common dso_local global i32 0, align 4
@PARITY_CRC16_PR1_CCITT = common dso_local global i32 0, align 4
@ARPHRD_X25 = common dso_local global i32 0, align 4
@NETDEV_POST_TYPE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @x25_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_ioctl(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device* %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %71 [
    i32 129, label %14
    i32 128, label %27
  ]

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, @proto
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %74

23:                                               ; preds = %14
  %24 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 128, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %74

27:                                               ; preds = %2
  %28 = load i32, i32* @CAP_NET_ADMIN, align 4
  %29 = call i32 @capable(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_UP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %74

44:                                               ; preds = %34
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, i32)** %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load i32, i32* @ENCODING_NRZ, align 4
  %50 = load i32, i32* @PARITY_CRC16_PR1_CCITT, align 4
  %51 = call i32 %47(%struct.net_device* %48, i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %74

56:                                               ; preds = %44
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @attach_hdlc_protocol(%struct.net_device* %57, i32* @proto, i32 0)
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %74

62:                                               ; preds = %56
  %63 = load i32, i32* @ARPHRD_X25, align 4
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @NETDEV_POST_TYPE_CHANGE, align 4
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @call_netdevice_notifiers(i32 %66, %struct.net_device* %67)
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @netif_dormant_off(%struct.net_device* %69)
  store i32 0, i32* %3, align 4
  br label %74

71:                                               ; preds = %2
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %62, %60, %54, %41, %31, %23, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_5__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @attach_hdlc_protocol(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @netif_dormant_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
