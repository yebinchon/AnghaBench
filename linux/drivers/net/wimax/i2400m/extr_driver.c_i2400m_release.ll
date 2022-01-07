; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 (%struct.i2400m*)*, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@i2400m_dev_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"(i2400m %p) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_release(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %4 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %5 = call %struct.device* @i2400m_dev(%struct.i2400m* %4)
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %8 = call i32 @d_fnstart(i32 3, %struct.device* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %7)
  %9 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %10 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call i32 @netif_stop_queue(%struct.TYPE_7__* %12)
  %14 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %15 = call i32 @i2400m_dev_stop(%struct.i2400m* %14)
  %16 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %17 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %16, i32 0, i32 4
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %20 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %19, i32 0, i32 3
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %23 = call i32 @i2400m_debugfs_rm(%struct.i2400m* %22)
  %24 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %25 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @sysfs_remove_group(i32* %29, i32* @i2400m_dev_attr_group)
  %31 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %32 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %31, i32 0, i32 2
  %33 = call i32 @wimax_dev_rm(%struct.TYPE_6__* %32)
  %34 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %35 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @unregister_netdev(%struct.TYPE_7__* %37)
  %39 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %40 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %39, i32 0, i32 1
  %41 = call i32 @unregister_pm_notifier(i32* %40)
  %42 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %43 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %42, i32 0, i32 0
  %44 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %43, align 8
  %45 = icmp ne i32 (%struct.i2400m*)* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %48 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %47, i32 0, i32 0
  %49 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %48, align 8
  %50 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %51 = call i32 %49(%struct.i2400m* %50)
  br label %52

52:                                               ; preds = %46, %1
  %53 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %54 = call i32 @i2400m_bm_buf_free(%struct.i2400m* %53)
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %57 = call i32 @d_fnend(i32 3, %struct.device* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m* %56)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @i2400m_dev_stop(%struct.i2400m*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @i2400m_debugfs_rm(%struct.i2400m*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @wimax_dev_rm(%struct.TYPE_6__*) #1

declare dso_local i32 @unregister_netdev(%struct.TYPE_7__*) #1

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @i2400m_bm_buf_free(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
