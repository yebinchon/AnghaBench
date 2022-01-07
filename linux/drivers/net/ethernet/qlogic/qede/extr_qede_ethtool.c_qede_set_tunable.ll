; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_tunable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_tunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_tunable = type { i32 }
%struct.qede_dev = type { i32 }

@QEDE_MIN_PKT_LEN = common dso_local global i32 0, align 4
@QEDE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid rx copy break value, range is [%u, %u]\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)* @qede_set_tunable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_tunable(%struct.net_device* %0, %struct.ethtool_tunable* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_tunable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qede_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_tunable* %1, %struct.ethtool_tunable** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.qede_dev* %11, %struct.qede_dev** %8, align 8
  %12 = load %struct.ethtool_tunable*, %struct.ethtool_tunable** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_tunable, %struct.ethtool_tunable* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %40 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @QEDE_MIN_PKT_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @QEDE_RX_HDR_SIZE, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22, %15
  %27 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %28 = load i32, i32* @QED_MSG_DEBUG, align 4
  %29 = load i32, i32* @QEDE_MIN_PKT_LEN, align 4
  %30 = load i32, i32* @QEDE_RX_HDR_SIZE, align 4
  %31 = call i32 @DP_VERBOSE(%struct.qede_dev* %27, i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %22
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %39 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %26
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
