; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_dev_type_check_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_dev_type_check_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i64 }
%struct.team = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Device %s is of different type\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NETDEV_PRE_TYPE_CHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Refused to change device type\0A\00", align 1
@NETDEV_POST_TYPE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @team_dev_type_check_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_dev_type_check_change(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.team*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.team* @netdev_priv(%struct.net_device* %9)
  store %struct.team* %10, %struct.team** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.team*, %struct.team** %6, align 8
  %24 = getelementptr inbounds %struct.team, %struct.team* %23, i32 0, i32 0
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %22
  %34 = load i32, i32* @NETDEV_PRE_TYPE_CHANGE, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @call_netdevice_notifiers(i32 %34, %struct.net_device* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @notifier_to_errno(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %33
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @dev_uc_flush(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @dev_mc_flush(%struct.net_device* %48)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @team_setup_by_port(%struct.net_device* %50, %struct.net_device* %51)
  %53 = load i32, i32* @NETDEV_POST_TYPE_CHANGE, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 @call_netdevice_notifiers(i32 %53, %struct.net_device* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %41, %27, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.team* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @dev_uc_flush(%struct.net_device*) #1

declare dso_local i32 @dev_mc_flush(%struct.net_device*) #1

declare dso_local i32 @team_setup_by_port(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
