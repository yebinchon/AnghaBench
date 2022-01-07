; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_add_mux_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_add_mux_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usbnet = type { i32, i32 }
%struct.qmi_wwan_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mux_id already present\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot change a running device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@QMI_WWAN_FLAG_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @add_mux_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_mux_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
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
  %22 = call i64 @kstrtou8(i8* %21, i32 0, i32* %12)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %86

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %31, 254
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %86

36:                                               ; preds = %30
  %37 = call i32 (...) @rtnl_trylock()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 (...) @restart_syscall()
  store i32 %40, i32* %5, align 4
  br label %86

41:                                               ; preds = %36
  %42 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @qmimux_find_dev(%struct.usbnet* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %48 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_err(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %83

53:                                               ; preds = %41
  %54 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @netif_running(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %61 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netdev_err(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %83

66:                                               ; preds = %53
  %67 = load %struct.usbnet*, %struct.usbnet** %10, align 8
  %68 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @qmimux_register_device(i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @QMI_WWAN_FLAG_MUX, align 4
  %76 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %11, align 8
  %77 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %74, %66
  br label %83

83:                                               ; preds = %82, %59, %46
  %84 = call i32 (...) @rtnl_unlock()
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %39, %33, %24
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.usbnet* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @rtnl_trylock(...) #1

declare dso_local i32 @restart_syscall(...) #1

declare dso_local i64 @qmimux_find_dev(%struct.usbnet*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @qmimux_register_device(i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
