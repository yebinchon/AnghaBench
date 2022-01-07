; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kvaser_pciefd_can = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Timeout during stop\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IEN_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @kvaser_pciefd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.kvaser_pciefd_can*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.kvaser_pciefd_can* @netdev_priv(%struct.net_device* %5)
  store %struct.kvaser_pciefd_can* %6, %struct.kvaser_pciefd_can** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %8 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %7, i32 0, i32 3
  %9 = call i32 @completion_done(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %13 = call i32 @kvaser_pciefd_start_controller_flush(%struct.kvaser_pciefd_can* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %16 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %15, i32 0, i32 3
  %17 = load i32, i32* @KVASER_PCIEFD_WAIT_TIMEOUT, align 4
  %18 = call i32 @wait_for_completion_timeout(i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %22 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %30 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite32(i32 0, i64 %33)
  %35 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %3, align 8
  %36 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %35, i32 0, i32 0
  %37 = call i32 @del_timer(i32* %36)
  br label %38

38:                                               ; preds = %28, %20
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @close_candev(%struct.net_device* %39)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.kvaser_pciefd_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @kvaser_pciefd_start_controller_flush(%struct.kvaser_pciefd_can*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
