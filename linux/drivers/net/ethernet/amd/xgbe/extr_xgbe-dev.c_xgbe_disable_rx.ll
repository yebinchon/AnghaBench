; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_disable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@MAC_RCR = common dso_local global i32 0, align 4
@DCRCC = common dso_local global i32 0, align 4
@CST = common dso_local global i32 0, align 4
@ACS = common dso_local global i32 0, align 4
@RE = common dso_local global i32 0, align 4
@MAC_RQC0R = common dso_local global i32 0, align 4
@DMA_CH_RCR = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_disable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_disable_rx(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = load i32, i32* @MAC_RCR, align 4
  %6 = load i32, i32* @DCRCC, align 4
  %7 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %4, i32 %5, i32 %6, i32 0)
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = load i32, i32* @MAC_RCR, align 4
  %10 = load i32, i32* @CST, align 4
  %11 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %8, i32 %9, i32 %10, i32 0)
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %13 = load i32, i32* @MAC_RCR, align 4
  %14 = load i32, i32* @ACS, align 4
  %15 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = load i32, i32* @MAC_RCR, align 4
  %18 = load i32, i32* @RE, align 4
  %19 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %16, i32 %17, i32 %18, i32 0)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %30, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @xgbe_prepare_rx_stop(%struct.xgbe_prv_data* %27, i32 %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %35 = load i32, i32* @MAC_RQC0R, align 4
  %36 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %34, i32 %35, i32 0)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %66, %33
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %40 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %69

55:                                               ; preds = %43
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %57 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* @DMA_CH_RCR, align 4
  %64 = load i32, i32* @SR, align 4
  %65 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__* %62, i32 %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %37

69:                                               ; preds = %54, %37
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_prepare_rx_stop(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
