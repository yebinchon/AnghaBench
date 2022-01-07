; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_pbl_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_pbl_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64 }

@DMA_PBL_X8_DISABLE = common dso_local global i32 0, align 4
@DMA_PBL_X8_ENABLE = common dso_local global i32 0, align 4
@DMA_CH_CR = common dso_local global i32 0, align 4
@PBLX8 = common dso_local global i32 0, align 4
@DMA_CH_TCR = common dso_local global i32 0, align 4
@PBL = common dso_local global i32 0, align 4
@DMA_CH_RCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_config_pbl_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_config_pbl_val(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load i32, i32* @DMA_PBL_X8_DISABLE, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ugt i32 %12, 32
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @DMA_PBL_X8_ENABLE, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = lshr i32 %16, 3
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %83, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %19
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* @DMA_CH_CR, align 4
  %34 = load i32, i32* @PBLX8, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %25
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* @DMA_CH_TCR, align 4
  %56 = load i32, i32* @PBL, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__* %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %25
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %59
  %71 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %72 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* @DMA_CH_RCR, align 4
  %79 = load i32, i32* @PBL, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__* %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %70, %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %19

86:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @XGMAC_DMA_IOWRITE_BITS(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
