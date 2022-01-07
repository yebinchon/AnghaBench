; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_reload_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_reload_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }

@NSIM_RESOURCE_IPV4_FIB = common dso_local global i32 0, align 4
@NSIM_RESOURCE_IPV4_FIB_RULES = common dso_local global i32 0, align 4
@NSIM_RESOURCE_IPV6_FIB = common dso_local global i32 0, align 4
@NSIM_RESOURCE_IPV6_FIB_RULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.netlink_ext_ack*)* @nsim_dev_reload_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_dev_reload_up(%struct.devlink* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %12 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @NSIM_RESOURCE_IPV4_FIB_RULES, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @NSIM_RESOURCE_IPV6_FIB_RULES, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.devlink*, %struct.devlink** %4, align 8
  %20 = call %struct.net* @nsim_devlink_net(%struct.devlink* %19)
  store %struct.net* %20, %struct.net** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %50, %2
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load %struct.devlink*, %struct.devlink** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @devlink_resource_size_get(%struct.devlink* %27, i32 %31, i32* %10)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %26
  %36 = load %struct.net*, %struct.net** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %43 = call i32 @nsim_fib_set_max(%struct.net* %36, i32 %40, i32 %41, %struct.netlink_ext_ack* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %56

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.devlink*, %struct.devlink** %4, align 8
  %55 = call i32 @nsim_devlink_param_load_driverinit_values(%struct.devlink* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.net* @nsim_devlink_net(%struct.devlink*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devlink_resource_size_get(%struct.devlink*, i32, i32*) #1

declare dso_local i32 @nsim_fib_set_max(%struct.net*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nsim_devlink_param_load_driverinit_values(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
