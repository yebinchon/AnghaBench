; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_prepare_tx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_prepare_tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i64 }
%struct.xlgmac_channel = type { i32 }

@DMA_DSRX_FIRST_QUEUE = common dso_local global i32 0, align 4
@DMA_DSR0 = common dso_local global i32 0, align 4
@DMA_DSR_Q_LEN = common dso_local global i32 0, align 4
@DMA_DSR0_TPS_START = common dso_local global i32 0, align 4
@DMA_DSR1 = common dso_local global i32 0, align 4
@DMA_DSRX_QPR = common dso_local global i32 0, align 4
@DMA_DSRX_INC = common dso_local global i32 0, align 4
@DMA_DSRX_TPS_START = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XLGMAC_DMA_STOP_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@DMA_DSR_TPS_LEN = common dso_local global i32 0, align 4
@DMA_TPS_STOPPED = common dso_local global i32 0, align 4
@DMA_TPS_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"timed out waiting for Tx DMA channel %u to stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*, %struct.xlgmac_channel*)* @xlgmac_prepare_tx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_prepare_tx_stop(%struct.xlgmac_pdata* %0, %struct.xlgmac_channel* %1) #0 {
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.xlgmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store %struct.xlgmac_channel* %1, %struct.xlgmac_channel** %4, align 8
  %10 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %11 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DMA_DSRX_FIRST_QUEUE, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @DMA_DSR0, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %18 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DMA_DSR_Q_LEN, align 4
  %21 = mul i32 %19, %20
  %22 = load i32, i32* @DMA_DSR0_TPS_START, align 4
  %23 = add i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %26 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_DSRX_FIRST_QUEUE, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @DMA_DSR1, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DMA_DSRX_QPR, align 4
  %33 = udiv i32 %31, %32
  %34 = load i32, i32* @DMA_DSRX_INC, align 4
  %35 = mul i32 %33, %34
  %36 = add i32 %30, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DMA_DSRX_QPR, align 4
  %39 = urem i32 %37, %38
  %40 = load i32, i32* @DMA_DSR_Q_LEN, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* @DMA_DSRX_TPS_START, align 4
  %43 = add i32 %41, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %24, %15
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* @XLGMAC_DMA_STOP_TIMEOUT, align 8
  %47 = load i64, i64* @HZ, align 8
  %48 = mul i64 %46, %47
  %49 = add i64 %45, %48
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %75, %44
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @time_before(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %57 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DMA_DSR_TPS_LEN, align 4
  %66 = call i32 @XLGMAC_GET_REG_BITS(i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @DMA_TPS_STOPPED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @DMA_TPS_SUSPENDED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %55
  br label %77

75:                                               ; preds = %70
  %76 = call i32 @usleep_range(i32 500, i32 1000)
  br label %50

77:                                               ; preds = %74, %50
  %78 = load i64, i64* @jiffies, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @time_before(i64 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %84 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %87 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @netdev_info(i32 %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %82, %77
  ret void
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
