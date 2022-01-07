; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NETVSC_GLOBAL_STATS_LEN = common dso_local global i32 0, align 4
@NETVSC_VF_STATS_LEN = common dso_local global i32 0, align 4
@NETVSC_PCPU_STATS_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netvsc_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %8)
  store %struct.net_device_context* %9, %struct.net_device_context** %6, align 8
  %10 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %11 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.netvsc_device* @rtnl_dereference(i32 %12)
  store %struct.netvsc_device* %13, %struct.netvsc_device** %7, align 8
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %15 = icmp ne %struct.netvsc_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %30 [
    i32 128, label %21
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @NETVSC_GLOBAL_STATS_LEN, align 4
  %23 = load i32, i32* @NETVSC_VF_STATS_LEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %26 = call i32 @NETVSC_QUEUE_STATS_LEN(%struct.netvsc_device* %25)
  %27 = add nsw i32 %24, %26
  %28 = load i32, i32* @NETVSC_PCPU_STATS_LEN, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %21, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @NETVSC_QUEUE_STATS_LEN(%struct.netvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
