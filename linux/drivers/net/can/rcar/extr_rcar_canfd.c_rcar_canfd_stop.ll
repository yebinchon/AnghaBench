; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_canfd_channel = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@RCANFD_RFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_CCTR_CHMDC_MASK = common dso_local global i32 0, align 4
@RCANFD_CCTR_CHDMC_CRESET = common dso_local global i32 0, align 4
@RCANFD_CSTS_CRSTSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"channel %u reset failed\0A\00", align 1
@RCANFD_CFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_CFCC_CFE = common dso_local global i32 0, align 4
@RCANFD_RFCC_RFE = common dso_local global i32 0, align 4
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_canfd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_canfd_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %8)
  store %struct.rcar_canfd_channel* %9, %struct.rcar_canfd_channel** %3, align 8
  %10 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %11 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RCANFD_RFFIFO_IDX, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %17 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @RCANFD_CCTR(i32 %19)
  %21 = load i32, i32* @RCANFD_CCTR_CHMDC_MASK, align 4
  %22 = load i32, i32* @RCANFD_CCTR_CHDMC_CRESET, align 4
  %23 = call i32 @rcar_canfd_update_bit(i64 %18, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %25 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @RCANFD_CSTS(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @RCANFD_CSTS_CRSTSTS, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @readl_poll_timeout(i64 %29, i32 %30, i32 %33, i32 2, i32 500000)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %43 = call i32 @rcar_canfd_disable_channel_interrupts(%struct.rcar_canfd_channel* %42)
  %44 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %45 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %49 = call i32 @RCANFD_CFCC(i32 %47, i32 %48)
  %50 = load i32, i32* @RCANFD_CFCC_CFE, align 4
  %51 = call i32 @rcar_canfd_clear_bit(i64 %46, i32 %49, i32 %50)
  %52 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %53 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @RCANFD_RFCC(i32 %55)
  %57 = load i32, i32* @RCANFD_RFCC_RFE, align 4
  %58 = call i32 @rcar_canfd_clear_bit(i64 %54, i32 %56, i32 %57)
  %59 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %60 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %61 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  ret void
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcar_canfd_update_bit(i64, i32, i32, i32) #1

declare dso_local i32 @RCANFD_CCTR(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i64 @RCANFD_CSTS(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @rcar_canfd_disable_channel_interrupts(%struct.rcar_canfd_channel*) #1

declare dso_local i32 @rcar_canfd_clear_bit(i64, i32, i32) #1

declare dso_local i32 @RCANFD_CFCC(i32, i32) #1

declare dso_local i32 @RCANFD_RFCC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
