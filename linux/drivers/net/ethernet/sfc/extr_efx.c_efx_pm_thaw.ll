; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pm_thaw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pm_thaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.efx_nic = type { i64, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)* }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)* }

@STATE_DISABLED = common dso_local global i64 0, align 8
@STATE_READY = common dso_local global i64 0, align 8
@reset_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @efx_pm_thaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_pm_thaw(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.efx_nic* @dev_get_drvdata(%struct.device* %6)
  store %struct.efx_nic* %7, %struct.efx_nic** %5, align 8
  %8 = call i32 (...) @rtnl_lock()
  %9 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATE_DISABLED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = call i32 @efx_enable_interrupts(%struct.efx_nic* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %54

20:                                               ; preds = %14
  %21 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 3
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %27, align 8
  %29 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %30 = call i32 %28(%struct.efx_nic* %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 3
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %35 = call i32 @efx_start_all(%struct.efx_nic* %34)
  %36 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %37 = call i32 @efx_device_attach_if_not_resetting(%struct.efx_nic* %36)
  %38 = load i64, i64* @STATE_READY, align 8
  %39 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %44, align 8
  %46 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %47 = call i32 %45(%struct.efx_nic* %46)
  br label %48

48:                                               ; preds = %20, %1
  %49 = call i32 (...) @rtnl_unlock()
  %50 = load i32, i32* @reset_workqueue, align 4
  %51 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 1
  %53 = call i32 @queue_work(i32 %50, i32* %52)
  store i32 0, i32* %2, align 4
  br label %57

54:                                               ; preds = %19
  %55 = call i32 (...) @rtnl_unlock()
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.efx_nic* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @efx_enable_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @efx_start_all(%struct.efx_nic*) #1

declare dso_local i32 @efx_device_attach_if_not_resetting(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
