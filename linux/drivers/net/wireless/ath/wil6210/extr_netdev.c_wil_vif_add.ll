; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil6210_vif** }
%struct.wil6210_vif = type { i64 }
%struct.net_device = type { i32, i32 }
%struct.wireless_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"VIF with mid %d already in use\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to register netdev: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_vif_add(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %5, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %11 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %13 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %12)
  store %struct.wireless_dev* %13, %struct.wireless_dev** %7, align 8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %15 = call i32 @wil_has_active_ifaces(%struct.wil6210_priv* %14, i32 1, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = call i32 (...) @ASSERT_RTNL()
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 0
  %19 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %18, align 8
  %20 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %21 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %19, i64 %22
  %24 = load %struct.wil6210_vif*, %struct.wil6210_vif** %23, align 8
  %25 = icmp ne %struct.wil6210_vif* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %30 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %95

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %41 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %46 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %47 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wmi_port_allocate(%struct.wil6210_priv* %45, i64 %48, i32 %51, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %95

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %39, %36
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = call i32 @register_netdevice(%struct.net_device* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %75 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %80 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %81 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @wmi_port_delete(%struct.wil6210_priv* %79, i64 %82)
  br label %84

84:                                               ; preds = %78, %73, %66
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %95

86:                                               ; preds = %61
  %87 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %88 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %89 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %88, i32 0, i32 0
  %90 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %89, align 8
  %91 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %92 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %90, i64 %93
  store %struct.wil6210_vif* %87, %struct.wil6210_vif** %94, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %86, %84, %58, %26
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_has_active_ifaces(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @wmi_port_allocate(%struct.wil6210_priv*, i64, i32, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @wmi_port_delete(%struct.wil6210_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
