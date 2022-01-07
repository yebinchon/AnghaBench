; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_rtable_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_rtable_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_vrf = type { i32, i32 }
%struct.rtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@vrf_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vrf_rtable_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_rtable_create(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_vrf*, align 8
  %5 = alloca %struct.rtable*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.net_vrf* @netdev_priv(%struct.net_device* %6)
  store %struct.net_vrf* %7, %struct.net_vrf** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @dev_net(%struct.net_device* %8)
  %10 = load %struct.net_vrf*, %struct.net_vrf** %4, align 8
  %11 = getelementptr inbounds %struct.net_vrf, %struct.net_vrf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fib_new_table(i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load i32, i32* @RTN_UNICAST, align 4
  %21 = call %struct.rtable* @rt_dst_alloc(%struct.net_device* %19, i32 0, i32 %20, i32 1, i32 1, i32 0)
  store %struct.rtable* %21, %struct.rtable** %5, align 8
  %22 = load %struct.rtable*, %struct.rtable** %5, align 8
  %23 = icmp ne %struct.rtable* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %18
  %28 = load i32, i32* @vrf_output, align 4
  %29 = load %struct.rtable*, %struct.rtable** %5, align 8
  %30 = getelementptr inbounds %struct.rtable, %struct.rtable* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.net_vrf*, %struct.net_vrf** %4, align 8
  %33 = getelementptr inbounds %struct.net_vrf, %struct.net_vrf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtable*, %struct.rtable** %5, align 8
  %36 = call i32 @rcu_assign_pointer(i32 %34, %struct.rtable* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %24, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.net_vrf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fib_new_table(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.rtable* @rt_dst_alloc(%struct.net_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
