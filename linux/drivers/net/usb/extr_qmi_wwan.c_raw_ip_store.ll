; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_raw_ip_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_raw_ip_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usbnet = type { i32, i32 }
%struct.qmi_wwan_state = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@QMI_WWAN_FLAG_RAWIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot change a running device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NETDEV_PRE_TYPE_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Type change was refused\0A\00", align 1
@NETDEV_POST_TYPE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @raw_ip_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raw_ip_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usbnet*, align 8
  %11 = alloca %struct.qmi_wwan_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_net_dev(%struct.device* %14)
  %16 = call %struct.usbnet* @netdev_priv(i32 %15)
  store %struct.usbnet* %16, %struct.usbnet** %10, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 1
  %19 = bitcast i32* %18 to i8*
  %20 = bitcast i8* %19 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %20, %struct.qmi_wwan_state** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strtobool(i8* %21, i32* %12)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %102

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %11, align 8
  %30 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @QMI_WWAN_FLAG_RAWIP, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %102

37:                                               ; preds = %27
  %38 = call i32 (...) @rtnl_trylock()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i64 (...) @restart_syscall()
  store i64 %41, i64* %5, align 8
  br label %102

42:                                               ; preds = %37
  %43 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @netif_running(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netdev_err(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %98

55:                                               ; preds = %42
  %56 = load i32, i32* @NETDEV_PRE_TYPE_CHANGE, align 4
  %57 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @call_netdevice_notifiers(i32 %56, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @notifier_to_errno(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netdev_err(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %98

70:                                               ; preds = %55
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @QMI_WWAN_FLAG_RAWIP, align 4
  %75 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %11, align 8
  %76 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %86

79:                                               ; preds = %70
  %80 = load i32, i32* @QMI_WWAN_FLAG_RAWIP, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %11, align 8
  %83 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %73
  %87 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %88 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @qmi_wwan_netdev_setup(i32 %89)
  %91 = load i32, i32* @NETDEV_POST_TYPE_CHANGE, align 4
  %92 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %93 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @call_netdevice_notifiers(i32 %91, i32 %94)
  %96 = load i64, i64* %9, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %86, %65, %48
  %99 = call i32 (...) @rtnl_unlock()
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %98, %40, %35, %24
  %103 = load i64, i64* %5, align 8
  ret i64 %103
}

declare dso_local %struct.usbnet* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i64 @strtobool(i8*, i32*) #1

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i64 @restart_syscall(...) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, i32) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @qmi_wwan_netdev_setup(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
