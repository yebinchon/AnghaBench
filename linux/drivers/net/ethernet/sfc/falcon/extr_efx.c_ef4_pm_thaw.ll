; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pm_thaw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_pm_thaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ef4_nic = type { i64, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.ef4_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_nic*)* }

@STATE_DISABLED = common dso_local global i64 0, align 8
@STATE_READY = common dso_local global i64 0, align 8
@reset_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ef4_pm_thaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_pm_thaw(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_nic*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.ef4_nic* @dev_get_drvdata(%struct.device* %6)
  store %struct.ef4_nic* %7, %struct.ef4_nic** %5, align 8
  %8 = call i32 (...) @rtnl_lock()
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATE_DISABLED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %16 = call i32 @ef4_enable_interrupts(%struct.ef4_nic* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %56

20:                                               ; preds = %14
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %22 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %21, i32 0, i32 4
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %25 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %24, i32 0, i32 5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %27, align 8
  %29 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %30 = call i32 %28(%struct.ef4_nic* %29)
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %32 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %31, i32 0, i32 4
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %35 = call i32 @ef4_start_all(%struct.ef4_nic* %34)
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %37 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netif_device_attach(i32 %38)
  %40 = load i64, i64* @STATE_READY, align 8
  %41 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %42 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %44 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %46, align 8
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %49 = call i32 %47(%struct.ef4_nic* %48)
  br label %50

50:                                               ; preds = %20, %1
  %51 = call i32 (...) @rtnl_unlock()
  %52 = load i32, i32* @reset_workqueue, align 4
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %54 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %53, i32 0, i32 1
  %55 = call i32 @queue_work(i32 %52, i32* %54)
  store i32 0, i32* %2, align 4
  br label %59

56:                                               ; preds = %19
  %57 = call i32 (...) @rtnl_unlock()
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.ef4_nic* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @ef4_enable_interrupts(%struct.ef4_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ef4_start_all(%struct.ef4_nic*) #1

declare dso_local i32 @netif_device_attach(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
