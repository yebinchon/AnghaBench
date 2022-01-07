; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_addr4_validator_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_addr4_validator_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_validator_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }
%struct.ipvl_dev = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Address already assigned to an ipvlan device\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ipvlan_addr4_validator_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_addr4_validator_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_validator_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ipvl_dev*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.in_validator_info*
  store %struct.in_validator_info* %12, %struct.in_validator_info** %8, align 8
  %13 = load %struct.in_validator_info*, %struct.in_validator_info** %8, align 8
  %14 = getelementptr inbounds %struct.in_validator_info, %struct.in_validator_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.net_device*
  store %struct.net_device* %18, %struct.net_device** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %19)
  store %struct.ipvl_dev* %20, %struct.ipvl_dev** %10, align 8
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = call i32 @ipvlan_is_valid_dev(%struct.net_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  switch i64 %27, label %45 [
    i64 128, label %28
  ]

28:                                               ; preds = %26
  %29 = load %struct.ipvl_dev*, %struct.ipvl_dev** %10, align 8
  %30 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.in_validator_info*, %struct.in_validator_info** %8, align 8
  %33 = getelementptr inbounds %struct.in_validator_info, %struct.in_validator_info* %32, i32 0, i32 1
  %34 = call i32 @ipvlan_addr_busy(i32 %31, i32* %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.in_validator_info*, %struct.in_validator_info** %8, align 8
  %38 = getelementptr inbounds %struct.in_validator_info, %struct.in_validator_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @NL_SET_ERR_MSG(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EADDRINUSE, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @notifier_from_errno(i32 %42)
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %26, %44
  %46 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %36, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipvlan_is_valid_dev(%struct.net_device*) #1

declare dso_local i32 @ipvlan_addr_busy(i32, i32*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(i32, i8*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
