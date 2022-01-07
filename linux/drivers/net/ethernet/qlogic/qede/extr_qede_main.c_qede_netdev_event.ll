; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.net_device*, %struct.ethtool_drvinfo*)* }
%struct.ethtool_drvinfo = type { i32 }
%struct.qede_dev = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [5 x i8] c"qede\00", align 1
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @qede_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ethtool_drvinfo, align 4
  %9 = alloca %struct.qede_dev*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %10)
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 128
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 129
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %88

18:                                               ; preds = %14, %3
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*, %struct.ethtool_drvinfo*)** %30, align 8
  %32 = icmp ne i32 (%struct.net_device*, %struct.ethtool_drvinfo*)* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %21, %18
  br label %88

34:                                               ; preds = %26
  %35 = call i32 @memset(%struct.ethtool_drvinfo* %8, i32 0, i32 4)
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.net_device*, %struct.ethtool_drvinfo*)*, i32 (%struct.net_device*, %struct.ethtool_drvinfo*)** %39, align 8
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = call i32 %40(%struct.net_device* %41, %struct.ethtool_drvinfo* %8)
  %43 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @strcmp(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %88

48:                                               ; preds = %34
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %49)
  store %struct.qede_dev* %50, %struct.qede_dev** %9, align 8
  %51 = load i64, i64* %5, align 8
  switch i64 %51, label %87 [
    i64 128, label %52
    i64 129, label %82
  ]

52:                                               ; preds = %48
  %53 = load %struct.qede_dev*, %struct.qede_dev** %9, align 8
  %54 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.qede_dev*, %struct.qede_dev** %9, align 8
  %59 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp ne %struct.TYPE_6__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57, %52
  br label %88

65:                                               ; preds = %57
  %66 = load %struct.qede_dev*, %struct.qede_dev** %9, align 8
  %67 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  %73 = load %struct.qede_dev*, %struct.qede_dev** %9, align 8
  %74 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.qede_dev*, %struct.qede_dev** %9, align 8
  %77 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %72(i32 %75, i32 %80)
  br label %87

82:                                               ; preds = %48
  %83 = load %struct.net_device*, %struct.net_device** %7, align 8
  %84 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %83)
  store %struct.qede_dev* %84, %struct.qede_dev** %9, align 8
  %85 = load %struct.qede_dev*, %struct.qede_dev** %9, align 8
  %86 = call i32 @qede_rdma_event_changeaddr(%struct.qede_dev* %85)
  br label %87

87:                                               ; preds = %48, %82, %65
  br label %88

88:                                               ; preds = %87, %64, %47, %33, %17
  %89 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %89
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @memset(%struct.ethtool_drvinfo*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qede_rdma_event_changeaddr(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
