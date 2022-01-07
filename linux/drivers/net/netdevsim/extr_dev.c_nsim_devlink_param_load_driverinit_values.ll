; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_devlink_param_load_driverinit_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_devlink_param_load_driverinit_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.nsim_dev = type { i32, i32 }
%union.devlink_param_value = type { i32 }

@DEVLINK_PARAM_GENERIC_ID_MAX_MACS = common dso_local global i32 0, align 4
@NSIM_DEVLINK_PARAM_ID_TEST1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*)* @nsim_devlink_param_load_driverinit_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsim_devlink_param_load_driverinit_values(%struct.devlink* %0) #0 {
  %2 = alloca %struct.devlink*, align 8
  %3 = alloca %struct.nsim_dev*, align 8
  %4 = alloca %union.devlink_param_value, align 4
  %5 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %2, align 8
  %6 = load %struct.devlink*, %struct.devlink** %2, align 8
  %7 = call %struct.nsim_dev* @devlink_priv(%struct.devlink* %6)
  store %struct.nsim_dev* %7, %struct.nsim_dev** %3, align 8
  %8 = load %struct.devlink*, %struct.devlink** %2, align 8
  %9 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_MAX_MACS, align 4
  %10 = call i32 @devlink_param_driverinit_value_get(%struct.devlink* %8, i32 %9, %union.devlink_param_value* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = bitcast %union.devlink_param_value* %4 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.devlink*, %struct.devlink** %2, align 8
  %20 = load i32, i32* @NSIM_DEVLINK_PARAM_ID_TEST1, align 4
  %21 = call i32 @devlink_param_driverinit_value_get(%struct.devlink* %19, i32 %20, %union.devlink_param_value* %4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = bitcast %union.devlink_param_value* %4 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %28 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %18
  ret void
}

declare dso_local %struct.nsim_dev* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @devlink_param_driverinit_value_get(%struct.devlink*, i32, %union.devlink_param_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
