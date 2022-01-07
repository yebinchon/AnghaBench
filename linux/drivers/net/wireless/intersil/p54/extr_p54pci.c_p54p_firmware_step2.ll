; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_firmware_step2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_firmware_step2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.p54p_priv = type { i32, %struct.firmware*, %struct.pci_dev*, %struct.TYPE_5__ }
%struct.pci_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Cannot find firmware (isl3886pci)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @p54p_firmware_step2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54p_firmware_step2(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.p54p_priv*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.p54p_priv*
  store %struct.p54p_priv* %11, %struct.p54p_priv** %5, align 8
  %12 = load %struct.p54p_priv*, %struct.p54p_priv** %5, align 8
  %13 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %6, align 8
  %16 = load %struct.p54p_priv*, %struct.p54p_priv** %5, align 8
  %17 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %16, i32 0, i32 2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  %19 = load %struct.firmware*, %struct.firmware** %3, align 8
  %20 = icmp ne %struct.firmware* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %53

27:                                               ; preds = %2
  %28 = load %struct.firmware*, %struct.firmware** %3, align 8
  %29 = load %struct.p54p_priv*, %struct.p54p_priv** %5, align 8
  %30 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %29, i32 0, i32 1
  store %struct.firmware* %28, %struct.firmware** %30, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %32 = call i32 @p54p_open(%struct.ieee80211_hw* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %53

36:                                               ; preds = %27
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %38 = call i32 @p54_read_eeprom(%struct.ieee80211_hw* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %40 = call i32 @p54p_stop(%struct.ieee80211_hw* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @p54_register_common(%struct.ieee80211_hw* %45, %struct.TYPE_6__* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %51, %43, %35, %21
  %54 = load %struct.p54p_priv*, %struct.p54p_priv** %5, align 8
  %55 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %54, i32 0, i32 0
  %56 = call i32 @complete(i32* %55)
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.device*, %struct.device** %62, align 8
  store %struct.device* %63, %struct.device** %9, align 8
  %64 = load %struct.device*, %struct.device** %9, align 8
  %65 = icmp ne %struct.device* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = call i32 @device_lock(%struct.device* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @device_release_driver(%struct.TYPE_6__* %71)
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = icmp ne %struct.device* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.device*, %struct.device** %9, align 8
  %77 = call i32 @device_unlock(%struct.device* %76)
  br label %78

78:                                               ; preds = %75, %69
  br label %79

79:                                               ; preds = %78, %53
  %80 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %81 = call i32 @pci_dev_put(%struct.pci_dev* %80)
  ret void
}

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @p54p_open(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54_read_eeprom(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54p_stop(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54_register_common(%struct.ieee80211_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @device_release_driver(%struct.TYPE_6__*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
