; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_prepare_rx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_prepare_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@XLGMAC_DMA_STOP_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@MTL_Q_RQDR = common dso_local global i32 0, align 4
@MTL_Q_RQDR_PRXQ_POS = common dso_local global i32 0, align 4
@MTL_Q_RQDR_PRXQ_LEN = common dso_local global i32 0, align 4
@MTL_Q_RQDR_RXQSTS_POS = common dso_local global i32 0, align 4
@MTL_Q_RQDR_RXQSTS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"timed out waiting for Rx queue %u to empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*, i32)* @xlgmac_prepare_rx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_prepare_rx_stop(%struct.xlgmac_pdata* %0, i32 %1) #0 {
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @XLGMAC_DMA_STOP_TIMEOUT, align 8
  %11 = load i64, i64* @HZ, align 8
  %12 = mul i64 %10, %11
  %13 = add i64 %9, %12
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %39, %2
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @time_before(i64 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MTL_Q_RQDR, align 4
  %23 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %20, i32 %21, i32 %22)
  %24 = call i32 @readl(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MTL_Q_RQDR_PRXQ_POS, align 4
  %27 = load i32, i32* @MTL_Q_RQDR_PRXQ_LEN, align 4
  %28 = call i32 @XLGMAC_GET_REG_BITS(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MTL_Q_RQDR_RXQSTS_POS, align 4
  %31 = load i32, i32* @MTL_Q_RQDR_RXQSTS_LEN, align 4
  %32 = call i32 @XLGMAC_GET_REG_BITS(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %41

39:                                               ; preds = %35, %19
  %40 = call i32 @usleep_range(i32 500, i32 1000)
  br label %14

41:                                               ; preds = %38, %14
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @time_before(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %48 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @netdev_info(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  ret void
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata*, i32, i32) #1

declare dso_local i32 @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
