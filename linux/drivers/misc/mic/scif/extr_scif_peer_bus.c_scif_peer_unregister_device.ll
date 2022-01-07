; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_peer_bus.c_scif_peer_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_peer_bus.c_scif_peer_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.scif_dev = type { i32, i32, i32 }
%struct.scif_peer_dev = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Removing peer dnode %d\0A\00", align 1
@scif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_peer_unregister_device(%struct.scif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_peer_dev*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  %5 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %6 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %9 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %8, i32 0, i32 2
  %10 = call i32 @flush_work(i32* %9)
  %11 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %12 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.scif_peer_dev* @rcu_dereference(i32 %13)
  store %struct.scif_peer_dev* %14, %struct.scif_peer_dev** %4, align 8
  %15 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %16 = icmp ne %struct.scif_peer_dev* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %19 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %25 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RCU_INIT_POINTER(i32 %26, i32* null)
  %28 = call i32 (...) @synchronize_rcu()
  %29 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %30 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %33 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %32, i32 0, i32 0
  %34 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %35 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.scif_peer_dev*, %struct.scif_peer_dev** %4, align 8
  %39 = getelementptr inbounds %struct.scif_peer_dev, %struct.scif_peer_dev* %38, i32 0, i32 0
  %40 = call i32 @device_unregister(i32* %39)
  %41 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0))
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 1), align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 1), align 4
  %44 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %23, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local %struct.scif_peer_dev* @rcu_dereference(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
