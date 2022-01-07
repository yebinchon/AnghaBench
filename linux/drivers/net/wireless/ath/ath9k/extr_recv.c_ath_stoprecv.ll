; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_stoprecv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_stoprecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw*, %struct.TYPE_4__ }
%struct.ath_hw = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@AH_UNPLUGGED = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to stop Rx DMA\0A\00", align 1
@RESET_RX_DMA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_stoprecv(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 0
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = call i32 @ath9k_hw_abortpcurecv(%struct.ath_hw* %9)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %11, i32 0)
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call i32 @ath9k_hw_stopdmarecv(%struct.ath_hw* %13, i32* %5)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = call i32 @ath_flushrecv(%struct.ath_softc* %15)
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = load %struct.ath_hw*, %struct.ath_hw** %18, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = call i32 @ath_edma_stop_recv(%struct.ath_softc* %27)
  br label %33

29:                                               ; preds = %1
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AH_UNPLUGGED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 0
  %50 = load %struct.ath_hw*, %struct.ath_hw** %49, align 8
  %51 = call i32 @ath9k_hw_common(%struct.ath_hw* %50)
  %52 = load i32, i32* @RESET, align 4
  %53 = call i32 @ath_dbg(i32 %51, i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %55 = load i32, i32* @RESET_RX_DMA_ERROR, align 4
  %56 = call i32 @RESET_STAT_INC(%struct.ath_softc* %54, i32 %55)
  br label %57

57:                                               ; preds = %47, %40, %33
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i1 [ false, %57 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

declare dso_local i32 @ath9k_hw_abortpcurecv(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_stopdmarecv(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ath_flushrecv(%struct.ath_softc*) #1

declare dso_local i32 @ath_edma_stop_recv(%struct.ath_softc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @RESET_STAT_INC(%struct.ath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
