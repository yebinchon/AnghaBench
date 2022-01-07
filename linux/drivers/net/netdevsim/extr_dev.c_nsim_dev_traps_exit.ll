; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_traps_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_traps_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.nsim_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32 }

@nsim_traps_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*)* @nsim_dev_traps_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsim_dev_traps_exit(%struct.devlink* %0) #0 {
  %2 = alloca %struct.devlink*, align 8
  %3 = alloca %struct.nsim_dev*, align 8
  store %struct.devlink* %0, %struct.devlink** %2, align 8
  %4 = load %struct.devlink*, %struct.devlink** %2, align 8
  %5 = call %struct.nsim_dev* @devlink_priv(%struct.devlink* %4)
  store %struct.nsim_dev* %5, %struct.nsim_dev** %3, align 8
  %6 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @cancel_delayed_work_sync(i32* %9)
  %11 = load %struct.devlink*, %struct.devlink** %2, align 8
  %12 = load i32, i32* @nsim_traps_arr, align 4
  %13 = load i32, i32* @nsim_traps_arr, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @devlink_traps_unregister(%struct.devlink* %11, i32 %12, i32 %14)
  %16 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @kfree(%struct.TYPE_2__* %20)
  %22 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %23 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @kfree(%struct.TYPE_2__* %24)
  ret void
}

declare dso_local %struct.nsim_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @devlink_traps_unregister(%struct.devlink*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
