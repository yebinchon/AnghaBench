; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32, i32 }

@DMA_CH_IER = common dso_local global i32 0, align 4
@TIE = common dso_local global i32 0, align 4
@TXSE = common dso_local global i32 0, align 4
@TBUE = common dso_local global i32 0, align 4
@RIE = common dso_local global i32 0, align 4
@RBUE = common dso_local global i32 0, align 4
@RSE = common dso_local global i32 0, align 4
@FBEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_channel*, i32)* @xgbe_enable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_enable_int(%struct.xgbe_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %77 [
    i32 130, label %7
    i32 128, label %14
    i32 131, label %21
    i32 133, label %28
    i32 134, label %35
    i32 132, label %42
    i32 129, label %49
    i32 135, label %62
    i32 136, label %69
  ]

7:                                                ; preds = %2
  %8 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %9 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DMA_CH_IER, align 4
  %12 = load i32, i32* @TIE, align 4
  %13 = call i32 @XGMAC_SET_BITS(i32 %10, i32 %11, i32 %12, i32 1)
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %16 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DMA_CH_IER, align 4
  %19 = load i32, i32* @TXSE, align 4
  %20 = call i32 @XGMAC_SET_BITS(i32 %17, i32 %18, i32 %19, i32 1)
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %23 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMA_CH_IER, align 4
  %26 = load i32, i32* @TBUE, align 4
  %27 = call i32 @XGMAC_SET_BITS(i32 %24, i32 %25, i32 %26, i32 1)
  br label %78

28:                                               ; preds = %2
  %29 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %30 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_CH_IER, align 4
  %33 = load i32, i32* @RIE, align 4
  %34 = call i32 @XGMAC_SET_BITS(i32 %31, i32 %32, i32 %33, i32 1)
  br label %78

35:                                               ; preds = %2
  %36 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %37 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DMA_CH_IER, align 4
  %40 = load i32, i32* @RBUE, align 4
  %41 = call i32 @XGMAC_SET_BITS(i32 %38, i32 %39, i32 %40, i32 1)
  br label %78

42:                                               ; preds = %2
  %43 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %44 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_CH_IER, align 4
  %47 = load i32, i32* @RSE, align 4
  %48 = call i32 @XGMAC_SET_BITS(i32 %45, i32 %46, i32 %47, i32 1)
  br label %78

49:                                               ; preds = %2
  %50 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %51 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DMA_CH_IER, align 4
  %54 = load i32, i32* @TIE, align 4
  %55 = call i32 @XGMAC_SET_BITS(i32 %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DMA_CH_IER, align 4
  %60 = load i32, i32* @RIE, align 4
  %61 = call i32 @XGMAC_SET_BITS(i32 %58, i32 %59, i32 %60, i32 1)
  br label %78

62:                                               ; preds = %2
  %63 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %64 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DMA_CH_IER, align 4
  %67 = load i32, i32* @FBEE, align 4
  %68 = call i32 @XGMAC_SET_BITS(i32 %65, i32 %66, i32 %67, i32 1)
  br label %78

69:                                               ; preds = %2
  %70 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %71 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %74 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %78

77:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %85

78:                                               ; preds = %69, %62, %49, %42, %35, %28, %21, %14, %7
  %79 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %80 = load i32, i32* @DMA_CH_IER, align 4
  %81 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %82 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %79, i32 %80, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %77
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
