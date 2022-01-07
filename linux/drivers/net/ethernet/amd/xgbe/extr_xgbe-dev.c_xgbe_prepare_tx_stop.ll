; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_prepare_tx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_prepare_tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAC_VR = common dso_local global i32 0, align 4
@SNPSVER = common dso_local global i32 0, align 4
@DMA_DSRX_FIRST_QUEUE = common dso_local global i32 0, align 4
@DMA_DSR0 = common dso_local global i32 0, align 4
@DMA_DSR_Q_WIDTH = common dso_local global i32 0, align 4
@DMA_DSR0_TPS_START = common dso_local global i32 0, align 4
@DMA_DSR1 = common dso_local global i32 0, align 4
@DMA_DSRX_QPR = common dso_local global i32 0, align 4
@DMA_DSRX_INC = common dso_local global i32 0, align 4
@DMA_DSRX_TPS_START = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XGBE_DMA_STOP_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@DMA_DSR_TPS_WIDTH = common dso_local global i32 0, align 4
@DMA_TPS_STOPPED = common dso_local global i32 0, align 4
@DMA_TPS_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"timed out waiting for Tx DMA channel %u to stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32)* @xgbe_prepare_tx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_prepare_tx_stop(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAC_VR, align 4
  %15 = load i32, i32* @SNPSVER, align 4
  %16 = call i32 @XGMAC_GET_BITS(i32 %13, i32 %14, i32 %15)
  %17 = icmp sgt i32 %16, 32
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %20 = load i32, i32* %4, align 4
  call void @xgbe_txq_prepare_tx_stop(%struct.xgbe_prv_data* %19, i32 %20)
  br label %90

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DMA_DSRX_FIRST_QUEUE, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @DMA_DSR0, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DMA_DSR_Q_WIDTH, align 4
  %29 = mul i32 %27, %28
  %30 = load i32, i32* @DMA_DSR0_TPS_START, align 4
  %31 = add i32 %29, %30
  store i32 %31, i32* %6, align 4
  br label %50

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @DMA_DSRX_FIRST_QUEUE, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @DMA_DSR1, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @DMA_DSRX_QPR, align 4
  %39 = udiv i32 %37, %38
  %40 = load i32, i32* @DMA_DSRX_INC, align 4
  %41 = mul i32 %39, %40
  %42 = add i32 %36, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @DMA_DSRX_QPR, align 4
  %45 = urem i32 %43, %44
  %46 = load i32, i32* @DMA_DSR_Q_WIDTH, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* @DMA_DSRX_TPS_START, align 4
  %49 = add i32 %47, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %32, %25
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* @XGBE_DMA_STOP_TIMEOUT, align 8
  %53 = load i64, i64* @HZ, align 8
  %54 = mul i64 %52, %53
  %55 = add i64 %51, %54
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %77, %50
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @time_before(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @DMA_DSR_TPS_WIDTH, align 4
  %68 = call i32 @GET_BITS(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @DMA_TPS_STOPPED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @DMA_TPS_SUSPENDED, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %61
  br label %79

77:                                               ; preds = %72
  %78 = call i32 @usleep_range(i32 500, i32 1000)
  br label %56

79:                                               ; preds = %76, %56
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @time_before(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @netdev_info(i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %18, %84, %79
  ret void
}

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

declare dso_local void @xgbe_txq_prepare_tx_stop(%struct.xgbe_prv_data*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @GET_BITS(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
