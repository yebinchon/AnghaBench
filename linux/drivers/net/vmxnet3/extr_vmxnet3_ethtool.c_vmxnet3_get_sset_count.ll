; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32 }

@vmxnet3_tq_dev_stats = common dso_local global i32 0, align 4
@vmxnet3_tq_driver_stats = common dso_local global i32 0, align 4
@vmxnet3_rq_dev_stats = common dso_local global i32 0, align 4
@vmxnet3_rq_driver_stats = common dso_local global i32 0, align 4
@vmxnet3_global_stats = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vmxnet3_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.vmxnet3_adapter* %8, %struct.vmxnet3_adapter** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %33 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @vmxnet3_tq_dev_stats, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load i32, i32* @vmxnet3_tq_driver_stats, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = add nsw i32 %12, %14
  %16 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load i32, i32* @vmxnet3_rq_dev_stats, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = load i32, i32* @vmxnet3_rq_driver_stats, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = add nsw i32 %21, %23
  %25 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %19, %28
  %30 = load i32, i32* @vmxnet3_global_stats, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
