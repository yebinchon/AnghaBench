; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pm_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.efx_nic = type { i64 }

@STATE_DISABLED = common dso_local global i64 0, align 8
@STATE_UNINIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @efx_pm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_pm_freeze(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.efx_nic* @dev_get_drvdata(%struct.device* %4)
  store %struct.efx_nic* %5, %struct.efx_nic** %3, align 8
  %6 = call i32 (...) @rtnl_lock()
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @STATE_DISABLED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i64, i64* @STATE_UNINIT, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = call i32 @efx_device_detach_sync(%struct.efx_nic* %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = call i32 @efx_stop_all(%struct.efx_nic* %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = call i32 @efx_disable_interrupts(%struct.efx_nic* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = call i32 (...) @rtnl_unlock()
  ret i32 0
}

declare dso_local %struct.efx_nic* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @efx_device_detach_sync(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_all(%struct.efx_nic*) #1

declare dso_local i32 @efx_disable_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
