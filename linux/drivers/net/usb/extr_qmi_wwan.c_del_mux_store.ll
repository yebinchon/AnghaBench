; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_del_mux_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_del_mux_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usbnet = type { i32, i32 }
%struct.qmi_wwan_state = type { i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot change a running device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"mux_id not present\0A\00", align 1
@QMI_WWAN_FLAG_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @del_mux_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_mux_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usbnet*, align 8
  %11 = alloca %struct.qmi_wwan_state*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call i32 @to_net_dev(%struct.device* %15)
  %17 = call %struct.usbnet* @netdev_priv(i32 %16)
  store %struct.usbnet* %17, %struct.usbnet** %10, align 8
  %18 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 1
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %21, %struct.qmi_wwan_state** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtou8(i8* %22, i32 0, i32* %13)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %78

28:                                               ; preds = %4
  %29 = call i32 (...) @rtnl_trylock()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @restart_syscall()
  store i32 %32, i32* %5, align 4
  br label %78

33:                                               ; preds = %28
  %34 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @netif_running(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %41 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %75

46:                                               ; preds = %33
  %47 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.net_device* @qmimux_find_dev(%struct.usbnet* %47, i32 %48)
  store %struct.net_device* %49, %struct.net_device** %12, align 8
  %50 = load %struct.net_device*, %struct.net_device** %12, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %46
  %53 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %54 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netdev_err(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %75

59:                                               ; preds = %46
  %60 = load %struct.net_device*, %struct.net_device** %12, align 8
  %61 = call i32 @qmimux_unregister_device(%struct.net_device* %60, i32* null)
  %62 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %63 = call i32 @qmimux_has_slaves(%struct.usbnet* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @QMI_WWAN_FLAG_MUX, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %11, align 8
  %69 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %72, %52, %39
  %76 = call i32 (...) @rtnl_unlock()
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %31, %25
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.usbnet* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i32 @restart_syscall(...) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.net_device* @qmimux_find_dev(%struct.usbnet*, i32) #1

declare dso_local i32 @qmimux_unregister_device(%struct.net_device*, i32*) #1

declare dso_local i32 @qmimux_has_slaves(%struct.usbnet*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
