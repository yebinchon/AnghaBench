; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_ethtool.c_hinic_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hinic_dev = type { i32 }

@hinic_function_stats = common dso_local global i32 0, align 4
@hinic_tx_queue_stats = common dso_local global i32 0, align 4
@hinic_rx_queue_stats = common dso_local global i32 0, align 4
@hinic_port_stats = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hinic_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hinic_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.hinic_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.hinic_dev* %10, %struct.hinic_dev** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = load %struct.hinic_dev*, %struct.hinic_dev** %6, align 8
  %14 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @hinic_function_stats, align 4
  %17 = call i32 @ARRAY_LEN(i32 %16)
  %18 = load i32, i32* @hinic_tx_queue_stats, align 4
  %19 = call i32 @ARRAY_LEN(i32 %18)
  %20 = load i32, i32* @hinic_rx_queue_stats, align 4
  %21 = call i32 @ARRAY_LEN(i32 %20)
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %17, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @hinic_port_stats, align 4
  %27 = call i32 @ARRAY_LEN(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.hinic_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
