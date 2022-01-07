; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"stop, last iface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @wil_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.wil6210_priv* @ndev_to_wil(%struct.net_device* %5)
  store %struct.wil6210_priv* %6, %struct.wil6210_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %9, %struct.net_device* %10, i32 1, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %15 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %17 = call i32 @wil_down(%struct.wil6210_priv* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %22 = call i32 @wil_pm_runtime_put(%struct.wil6210_priv* %21)
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.wil6210_priv* @ndev_to_wil(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_has_other_active_ifaces(%struct.wil6210_priv*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @wil_down(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_pm_runtime_put(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
