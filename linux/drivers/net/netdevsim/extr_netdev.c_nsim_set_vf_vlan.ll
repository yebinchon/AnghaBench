; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_netdev.c_nsim_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_netdev.c_nsim_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdevsim = type { %struct.nsim_bus_dev* }
%struct.nsim_bus_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32)* @nsim_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netdevsim*, align 8
  %13 = alloca %struct.nsim_bus_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.netdevsim* @netdev_priv(%struct.net_device* %14)
  store %struct.netdevsim* %15, %struct.netdevsim** %12, align 8
  %16 = load %struct.netdevsim*, %struct.netdevsim** %12, align 8
  %17 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %16, i32 0, i32 0
  %18 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %17, align 8
  store %struct.nsim_bus_dev* %18, %struct.nsim_bus_dev** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %13, align 8
  %21 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 4095
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 7
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %24, %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %58

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %13, align 8
  %36 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %34, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %13, align 8
  %44 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %13, align 8
  %52 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %50, i32* %57, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %33, %30
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.netdevsim* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
