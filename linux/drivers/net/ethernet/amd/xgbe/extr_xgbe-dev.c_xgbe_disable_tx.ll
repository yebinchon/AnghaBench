; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_disable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_disable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@MAC_TCR = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@TXQEN = common dso_local global i32 0, align 4
@DMA_CH_TCR = common dso_local global i32 0, align 4
@ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_disable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_disable_tx(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @xgbe_prepare_tx_stop(%struct.xgbe_prv_data* %11, i32 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = load i32, i32* @MAC_TCR, align 4
  %20 = load i32, i32* @TE, align 4
  %21 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %18, i32 %19, i32 %20, i32 0)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %34, %17
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MTL_Q_TQOMR, align 4
  %32 = load i32, i32* @TXQEN, align 4
  %33 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %29, i32 %30, i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %22

37:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %67, %37
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %70

56:                                               ; preds = %44
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* @DMA_CH_TCR, align 4
  %65 = load i32, i32* @ST, align 4
  %66 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__* %63, i32 %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %38

70:                                               ; preds = %55, %38
  ret void
}

declare dso_local i32 @xgbe_prepare_tx_stop(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
