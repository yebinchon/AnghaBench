; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_port_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_port_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_bus_dev = type { i32 }
%struct.nsim_dev = type { i32 }
%struct.nsim_dev_port = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_dev_port_del(%struct.nsim_bus_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nsim_bus_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nsim_dev*, align 8
  %6 = alloca %struct.nsim_dev_port*, align 8
  %7 = alloca i32, align 4
  store %struct.nsim_bus_dev* %0, %struct.nsim_bus_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %8, i32 0, i32 0
  %10 = call %struct.nsim_dev* @dev_get_drvdata(i32* %9)
  store %struct.nsim_dev* %10, %struct.nsim_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.nsim_dev*, %struct.nsim_dev** %5, align 8
  %12 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.nsim_dev*, %struct.nsim_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.nsim_dev_port* @__nsim_dev_port_lookup(%struct.nsim_dev* %14, i32 %15)
  store %struct.nsim_dev_port* %16, %struct.nsim_dev_port** %6, align 8
  %17 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %18 = icmp ne %struct.nsim_dev_port* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.nsim_dev_port*, %struct.nsim_dev_port** %6, align 8
  %24 = call i32 @__nsim_dev_port_del(%struct.nsim_dev_port* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.nsim_dev*, %struct.nsim_dev** %5, align 8
  %27 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local %struct.nsim_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nsim_dev_port* @__nsim_dev_port_lookup(%struct.nsim_dev*, i32) #1

declare dso_local i32 @__nsim_dev_port_del(%struct.nsim_dev_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
