; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"open\0A\00", align 1
@debug_fw = common dso_local global i64 0, align 8
@WMI_FW_CAPABILITY_WMI_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"while in debug_fw or wmi_only mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"open, first iface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @wil_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.wil6210_priv* @ndev_to_wil(%struct.net_device* %6)
  store %struct.wil6210_priv* %7, %struct.wil6210_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %9 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @debug_fw, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @WMI_FW_CAPABILITY_WMI_ONLY, align 4
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %15 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12, %1
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %21 = call i32 @wil_err(%struct.wil6210_priv* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %12
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %25, %struct.net_device* %26, i32 1, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %24
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %31 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %33 = call i32 @wil_pm_runtime_get(%struct.wil6210_priv* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %49

38:                                               ; preds = %29
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %40 = call i32 @wil_up(%struct.wil6210_priv* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %45 = call i32 @wil_pm_runtime_put(%struct.wil6210_priv* %44)
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %36, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.wil6210_priv* @ndev_to_wil(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_has_other_active_ifaces(%struct.wil6210_priv*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @wil_pm_runtime_get(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_up(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_pm_runtime_put(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
