; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_traps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_traps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.nsim_dev = type { %struct.nsim_trap_data* }
%struct.nsim_trap_data = type { %struct.nsim_trap_data*, i32, %struct.nsim_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nsim_traps_arr = common dso_local global i32 0, align 4
@nsim_dev_trap_report_work = common dso_local global i32 0, align 4
@NSIM_TRAP_REPORT_INTERVAL_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*)* @nsim_dev_traps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_dev_traps_init(%struct.devlink* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.nsim_dev*, align 8
  %5 = alloca %struct.nsim_trap_data*, align 8
  %6 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  %7 = load %struct.devlink*, %struct.devlink** %3, align 8
  %8 = call %struct.nsim_dev* @devlink_priv(%struct.devlink* %7)
  store %struct.nsim_dev* %8, %struct.nsim_dev** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nsim_trap_data* @kzalloc(i32 32, i32 %9)
  store %struct.nsim_trap_data* %10, %struct.nsim_trap_data** %5, align 8
  %11 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %12 = icmp ne %struct.nsim_trap_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %71

16:                                               ; preds = %1
  %17 = load i32, i32* @nsim_traps_arr, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nsim_trap_data* @kcalloc(i32 %18, i32 4, i32 %19)
  %21 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %22 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %21, i32 0, i32 0
  store %struct.nsim_trap_data* %20, %struct.nsim_trap_data** %22, align 8
  %23 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %24 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %23, i32 0, i32 0
  %25 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %24, align 8
  %26 = icmp ne %struct.nsim_trap_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %67

30:                                               ; preds = %16
  %31 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %32 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %35 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %36 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %35, i32 0, i32 2
  store %struct.nsim_dev* %34, %struct.nsim_dev** %36, align 8
  %37 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %38 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %39 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %38, i32 0, i32 0
  store %struct.nsim_trap_data* %37, %struct.nsim_trap_data** %39, align 8
  %40 = load %struct.devlink*, %struct.devlink** %3, align 8
  %41 = load i32, i32* @nsim_traps_arr, align 4
  %42 = load i32, i32* @nsim_traps_arr, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @devlink_traps_register(%struct.devlink* %40, i32 %41, i32 %43, i32* null)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %62

48:                                               ; preds = %30
  %49 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %50 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %49, i32 0, i32 0
  %51 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %50, align 8
  %52 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %51, i32 0, i32 1
  %53 = load i32, i32* @nsim_dev_trap_report_work, align 4
  %54 = call i32 @INIT_DELAYED_WORK(i32* %52, i32 %53)
  %55 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %56 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %55, i32 0, i32 0
  %57 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %56, align 8
  %58 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %57, i32 0, i32 1
  %59 = load i32, i32* @NSIM_TRAP_REPORT_INTERVAL_MS, align 4
  %60 = call i32 @msecs_to_jiffies(i32 %59)
  %61 = call i32 @schedule_delayed_work(i32* %58, i32 %60)
  store i32 0, i32* %2, align 4
  br label %71

62:                                               ; preds = %47
  %63 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %64 = getelementptr inbounds %struct.nsim_trap_data, %struct.nsim_trap_data* %63, i32 0, i32 0
  %65 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %64, align 8
  %66 = call i32 @kfree(%struct.nsim_trap_data* %65)
  br label %67

67:                                               ; preds = %62, %27
  %68 = load %struct.nsim_trap_data*, %struct.nsim_trap_data** %5, align 8
  %69 = call i32 @kfree(%struct.nsim_trap_data* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %48, %13
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.nsim_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local %struct.nsim_trap_data* @kzalloc(i32, i32) #1

declare dso_local %struct.nsim_trap_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devlink_traps_register(%struct.devlink*, i32, i32, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kfree(%struct.nsim_trap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
