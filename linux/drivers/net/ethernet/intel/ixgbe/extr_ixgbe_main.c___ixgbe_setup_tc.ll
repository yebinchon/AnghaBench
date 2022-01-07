; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c___ixgbe_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c___ixgbe_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32 }

@ixgbe_block_cb_list = common dso_local global i32 0, align 4
@ixgbe_setup_tc_block_cb = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @__ixgbe_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ixgbe_setup_tc(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %22 [
    i32 129, label %12
    i32 128, label %18
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @ixgbe_setup_tc_block_cb, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %17 = call i32 @flow_block_cb_setup_simple(i8* %13, i32* @ixgbe_block_cb_list, i32 %14, %struct.ixgbe_adapter* %15, %struct.ixgbe_adapter* %16, i32 1)
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @ixgbe_setup_tc_mqprio(%struct.net_device* %19, i8* %20)
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %18, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @flow_block_cb_setup_simple(i8*, i32*, i32, %struct.ixgbe_adapter*, %struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_setup_tc_mqprio(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
