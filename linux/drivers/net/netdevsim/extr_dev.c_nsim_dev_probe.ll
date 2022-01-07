; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_bus_dev = type { i32, i32 }
%struct.nsim_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_dev_probe(%struct.nsim_bus_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nsim_bus_dev*, align 8
  %4 = alloca %struct.nsim_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nsim_bus_dev* %0, %struct.nsim_bus_dev** %3, align 8
  %7 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %3, align 8
  %8 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nsim_dev* @nsim_dev_create(%struct.nsim_bus_dev* %7, i32 %10)
  store %struct.nsim_dev* %11, %struct.nsim_dev** %4, align 8
  %12 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %13 = call i64 @IS_ERR(%struct.nsim_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.nsim_dev* %16)
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %19, i32 0, i32 1
  %21 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %22 = call i32 @dev_set_drvdata(i32* %20, %struct.nsim_dev* %21)
  %23 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %24 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %18
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @__nsim_dev_port_add(%struct.nsim_dev* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %47

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %45 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  store i32 0, i32* %2, align 4
  br label %56

47:                                               ; preds = %38
  %48 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %49 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %52 = call i32 @nsim_dev_port_del_all(%struct.nsim_dev* %51)
  %53 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %54 = call i32 @nsim_dev_destroy(%struct.nsim_dev* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %43, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.nsim_dev* @nsim_dev_create(%struct.nsim_bus_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nsim_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.nsim_dev*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.nsim_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__nsim_dev_port_add(%struct.nsim_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nsim_dev_port_del_all(%struct.nsim_dev*) #1

declare dso_local i32 @nsim_dev_destroy(%struct.nsim_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
