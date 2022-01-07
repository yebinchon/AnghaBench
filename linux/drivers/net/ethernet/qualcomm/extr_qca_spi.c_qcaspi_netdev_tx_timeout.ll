; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qcaspi = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Transmit timeout at %ld, latency %ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@QCASPI_SYNC_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @qcaspi_netdev_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcaspi_netdev_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qcaspi*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.qcaspi* @netdev_priv(%struct.net_device* %4)
  store %struct.qcaspi* %5, %struct.qcaspi** %3, align 8
  %6 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %7 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i64 @dev_trans_start(%struct.net_device* %11)
  %13 = sub nsw i64 %10, %12
  %14 = call i32 @netdev_info(%struct.TYPE_4__* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %13)
  %15 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %16 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @QCASPI_SYNC_UNKNOWN, align 4
  %23 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %24 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %26 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %31 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wake_up_process(i64 %32)
  br label %34

34:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.qcaspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.TYPE_4__*, i8*, i64, i64) #1

declare dso_local i64 @dev_trans_start(%struct.net_device*) #1

declare dso_local i32 @wake_up_process(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
