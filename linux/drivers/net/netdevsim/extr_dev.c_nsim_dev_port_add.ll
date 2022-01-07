; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_port_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_port_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_bus_dev = type { i32 }
%struct.nsim_dev = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_dev_port_add(%struct.nsim_bus_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nsim_bus_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nsim_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.nsim_bus_dev* %0, %struct.nsim_bus_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %7, i32 0, i32 0
  %9 = call %struct.nsim_dev* @dev_get_drvdata(i32* %8)
  store %struct.nsim_dev* %9, %struct.nsim_dev** %5, align 8
  %10 = load %struct.nsim_dev*, %struct.nsim_dev** %5, align 8
  %11 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.nsim_dev*, %struct.nsim_dev** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @__nsim_dev_port_lookup(%struct.nsim_dev* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EEXIST, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.nsim_dev*, %struct.nsim_dev** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @__nsim_dev_port_add(%struct.nsim_dev* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load %struct.nsim_dev*, %struct.nsim_dev** %5, align 8
  %26 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.nsim_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__nsim_dev_port_lookup(%struct.nsim_dev*, i32) #1

declare dso_local i32 @__nsim_dev_port_add(%struct.nsim_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
