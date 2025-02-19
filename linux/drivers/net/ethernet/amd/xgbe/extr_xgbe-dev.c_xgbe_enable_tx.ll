; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@DMA_CH_TCR = common dso_local global i32 0, align 4
@ST = common dso_local global i32 0, align 4
@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@TXQEN = common dso_local global i32 0, align 4
@MTL_Q_ENABLED = common dso_local global i32 0, align 4
@MAC_TCR = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_enable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_enable_tx(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  br label %36

22:                                               ; preds = %10
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* @DMA_CH_TCR, align 4
  %31 = load i32, i32* @ST, align 4
  %32 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__* %29, i32 %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %21, %4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %40 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MTL_Q_TQOMR, align 4
  %47 = load i32, i32* @TXQEN, align 4
  %48 = load i32, i32* @MTL_Q_ENABLED, align 4
  %49 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = load i32, i32* @MAC_TCR, align 4
  %56 = load i32, i32* @TE, align 4
  %57 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %54, i32 %55, i32 %56, i32 1)
  ret void
}

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
