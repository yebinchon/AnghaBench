; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_canfd_channel = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RCANFD_RFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_CCTR_CHMDC_MASK = common dso_local global i32 0, align 4
@RCANFD_CCTR_CHDMC_COPM = common dso_local global i32 0, align 4
@RCANFD_CSTS_COMSTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"channel %u communication state failed\0A\00", align 1
@RCANFD_CFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_CFCC_CFE = common dso_local global i32 0, align 4
@RCANFD_RFCC_RFE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rcar_canfd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_canfd_start(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rcar_canfd_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %9)
  store %struct.rcar_canfd_channel* %10, %struct.rcar_canfd_channel** %4, align 8
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %14 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @RCANFD_RFFIFO_IDX, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @rcar_canfd_set_bittiming(%struct.net_device* %19)
  %21 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %22 = call i32 @rcar_canfd_enable_channel_interrupts(%struct.rcar_canfd_channel* %21)
  %23 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %24 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @RCANFD_CCTR(i32 %26)
  %28 = load i32, i32* @RCANFD_CCTR_CHMDC_MASK, align 4
  %29 = load i32, i32* @RCANFD_CCTR_CHDMC_COPM, align 4
  %30 = call i32 @rcar_canfd_update_bit(i64 %25, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %32 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @RCANFD_CSTS(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @RCANFD_CSTS_COMSTS, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @readl_poll_timeout(i64 %36, i32 %37, i32 %40, i32 2, i32 500000)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %1
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %68

48:                                               ; preds = %1
  %49 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %50 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %54 = call i32 @RCANFD_CFCC(i32 %52, i32 %53)
  %55 = load i32, i32* @RCANFD_CFCC_CFE, align 4
  %56 = call i32 @rcar_canfd_set_bit(i64 %51, i32 %54, i32 %55)
  %57 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %58 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @RCANFD_RFCC(i32 %60)
  %62 = load i32, i32* @RCANFD_RFCC_RFE, align 4
  %63 = call i32 @rcar_canfd_set_bit(i64 %59, i32 %61, i32 %62)
  %64 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %65 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %66 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  store i32 0, i32* %2, align 4
  br label %72

68:                                               ; preds = %44
  %69 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %4, align 8
  %70 = call i32 @rcar_canfd_disable_channel_interrupts(%struct.rcar_canfd_channel* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %48
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcar_canfd_set_bittiming(%struct.net_device*) #1

declare dso_local i32 @rcar_canfd_enable_channel_interrupts(%struct.rcar_canfd_channel*) #1

declare dso_local i32 @rcar_canfd_update_bit(i64, i32, i32, i32) #1

declare dso_local i32 @RCANFD_CCTR(i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i64 @RCANFD_CSTS(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @rcar_canfd_set_bit(i64, i32, i32) #1

declare dso_local i32 @RCANFD_CFCC(i32, i32) #1

declare dso_local i32 @RCANFD_RFCC(i32) #1

declare dso_local i32 @rcar_canfd_disable_channel_interrupts(%struct.rcar_canfd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
