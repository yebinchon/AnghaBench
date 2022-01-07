; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_82545 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @e1000_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %6, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_82545, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %36

29:                                               ; preds = %18
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 1000000, %32
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %23
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
