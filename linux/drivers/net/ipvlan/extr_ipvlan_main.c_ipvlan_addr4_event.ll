; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_addr4_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_addr4_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_ifaddr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }
%struct.ipvl_dev = type { i32 }
%struct.in_addr = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ipvlan_addr4_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_addr4_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_ifaddr*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ipvl_dev*, align 8
  %11 = alloca %struct.in_addr, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %13, %struct.in_ifaddr** %8, align 8
  %14 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %15 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.net_device*
  store %struct.net_device* %19, %struct.net_device** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %20)
  store %struct.ipvl_dev* %21, %struct.ipvl_dev** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = call i32 @ipvlan_is_valid_dev(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %26, i32* %4, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  switch i64 %28, label %47 [
    i64 128, label %29
    i64 129, label %40
  ]

29:                                               ; preds = %27
  %30 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %31 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.ipvl_dev*, %struct.ipvl_dev** %10, align 8
  %35 = call i32 @ipvlan_add_addr4(%struct.ipvl_dev* %34, %struct.in_addr* %11)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %29
  br label %47

40:                                               ; preds = %27
  %41 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %42 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ipvl_dev*, %struct.ipvl_dev** %10, align 8
  %46 = call i32 @ipvlan_del_addr4(%struct.ipvl_dev* %45, %struct.in_addr* %11)
  br label %47

47:                                               ; preds = %27, %40, %39
  %48 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %37, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipvlan_is_valid_dev(%struct.net_device*) #1

declare dso_local i32 @ipvlan_add_addr4(%struct.ipvl_dev*, %struct.in_addr*) #1

declare dso_local i32 @ipvlan_del_addr4(%struct.ipvl_dev*, %struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
