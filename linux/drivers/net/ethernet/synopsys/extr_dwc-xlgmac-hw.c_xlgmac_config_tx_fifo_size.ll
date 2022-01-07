; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_tx_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_tx_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@MTL_Q_TQOMR_TQS_POS = common dso_local global i32 0, align 4
@MTL_Q_TQOMR_TQS_LEN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%d Tx hardware queues, %d byte fifo per queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_config_tx_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_config_tx_fifo_size(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %11 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xlgmac_calculate_per_queue_fifo(i32 %9, i32 %12)
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %37, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MTL_Q_TQOMR, align 4
  %24 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %21, i32 %22, i32 %23)
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MTL_Q_TQOMR_TQS_POS, align 4
  %28 = load i32, i32* @MTL_Q_TQOMR_TQS_LEN, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @XLGMAC_SET_REG_BITS(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MTL_Q_TQOMR, align 4
  %35 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %32, i32 %33, i32 %34)
  %36 = call i32 @writel(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %42 = load i32, i32* @drv, align 4
  %43 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %44 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %47 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  %51 = mul i32 %50, 256
  %52 = call i32 @netif_info(%struct.xlgmac_pdata* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  ret void
}

declare dso_local i32 @xlgmac_calculate_per_queue_fifo(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata*, i32, i32) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @netif_info(%struct.xlgmac_pdata*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
