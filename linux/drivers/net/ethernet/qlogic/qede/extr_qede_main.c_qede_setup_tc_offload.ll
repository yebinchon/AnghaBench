; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_setup_tc_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_setup_tc_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qede_dev = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32 }

@qede_block_cb_list = common dso_local global i32 0, align 4
@qede_setup_tc_block_cb = common dso_local global i32 0, align 4
@TC_MQPRIO_HW_OFFLOAD_TCS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*)* @qede_setup_tc_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_setup_tc_offload(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qede_dev*, align 8
  %9 = alloca %struct.tc_mqprio_qopt*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.qede_dev* %11, %struct.qede_dev** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %30 [
    i32 129, label %13
    i32 128, label %19
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @qede_setup_tc_block_cb, align 4
  %16 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %17 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %18 = call i32 @flow_block_cb_setup_simple(i8* %14, i32* @qede_block_cb_list, i32 %15, %struct.qede_dev* %16, %struct.qede_dev* %17, i32 1)
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.tc_mqprio_qopt*
  store %struct.tc_mqprio_qopt* %21, %struct.tc_mqprio_qopt** %9, align 8
  %22 = load i32, i32* @TC_MQPRIO_HW_OFFLOAD_TCS, align 4
  %23 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %24 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %9, align 8
  %27 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qede_setup_tc(%struct.net_device* %25, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %19, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @flow_block_cb_setup_simple(i8*, i32*, i32, %struct.qede_dev*, %struct.qede_dev*, i32) #1

declare dso_local i32 @qede_setup_tc(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
