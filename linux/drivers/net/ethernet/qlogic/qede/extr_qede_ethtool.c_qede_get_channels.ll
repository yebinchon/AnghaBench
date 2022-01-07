; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i64, i8*, i8*, i8* }
%struct.qede_dev = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @qede_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.qede_dev* %7, %struct.qede_dev** %5, align 8
  %8 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %9 = call i8* @QEDE_MAX_RSS_CNT(%struct.qede_dev* %8)
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %13 = call i8* @QEDE_MAX_RSS_CNT(%struct.qede_dev* %12)
  %14 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %17 = call i8* @QEDE_MAX_RSS_CNT(%struct.qede_dev* %16)
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %21 = call i64 @QEDE_QUEUE_CNT(%struct.qede_dev* %20)
  %22 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %23 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %27 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %33 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %38 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  ret void
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @QEDE_MAX_RSS_CNT(%struct.qede_dev*) #1

declare dso_local i64 @QEDE_QUEUE_CNT(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
